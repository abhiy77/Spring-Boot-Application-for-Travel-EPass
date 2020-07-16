package com.epass.travel.service;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.epass.travel.model.ConfirmationToken;
import com.epass.travel.model.Doc;
import com.epass.travel.model.User;
import com.epass.travel.repository.ConfirmationTokenRepository;
import com.epass.travel.repository.UserRepository;

@Service
public class SignUpService {

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private LoginService loginService;

	@Autowired
	private ConfirmationTokenRepository confirmationTokenRepository;

	@Autowired
	private EmailSenderService emailSenderService;

	public boolean isPresent(String email) {
		Optional<User> user = userRepository.findById(email.toLowerCase());

		if (user.equals(Optional.empty()) && loginService.getAdmin(email) == null) {
			return false;
		}
		return true;
	}

	public User initialize(HttpServletRequest request, MultipartFile file, MultipartFile imageFile) {
		User user = new User();
		Doc doc = new Doc();
		try {
			doc.setDocName(file.getOriginalFilename());
			doc.setDocType(file.getContentType());
			doc.setData(file.getBytes());
		} catch (Exception e) {
			System.out.println(e);
		}
		user.setEmail(request.getParameter("emailSignUp"));
		user.setFullName(request.getParameter("nameSignUp"));
		user.setPhoneNum(request.getParameter("phonenumSignUp"));
		user.setPassword(request.getParameter("passwordSignUp"));
		user.setGender(request.getParameter("genderSignUp"));
		user.setAddress(request.getParameter("addressSignUp"));

		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			user.setStartDate(sf.parse(request.getParameter("startDateSignUp")));
			user.setReturnDate(sf.parse(request.getParameter("returnDateSignUp")));
		} catch (ParseException e) {
			e.printStackTrace();
		}

		user.setVehicleNo(request.getParameter("vehicleNumberSignUp"));
		user.setSource(request.getParameter("sourceSignUp"));
		user.setDestination(request.getParameter("destinationSignUp"));
		user.setReason(request.getParameter("reasonSignUp"));

		user.setDocName(doc.getDocType());
		user.setDocName(doc.getDocName());
		user.setDocBytes(doc.getData());

		doc.setDocName(imageFile.getOriginalFilename());
		doc.setDocType(imageFile.getContentType());
		try {
			doc.setData(imageFile.getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}

		user.setImageType(doc.getDocType());
		user.setImageName(doc.getDocName());
		user.setImageBytes(doc.getData());
		return user;
	}

	public User saveUser(User user) {
		userRepository.save(user);

		ConfirmationToken confirmationToken = new ConfirmationToken(user.getEmail());

		confirmationTokenRepository.save(confirmationToken);

		SimpleMailMessage mailMessage = new SimpleMailMessage();
		mailMessage.setTo(user.getEmail());
		mailMessage.setSubject("Complete Registration!");
		mailMessage.setFrom("esevasupport12121212@gmail.com");
		mailMessage.setText("To confirm your account, please click here : "
				+ "http://localhost:8080/confirm-account?token=" + confirmationToken.getConfirmationToken());
		emailSenderService.sendEmail(mailMessage);
		return user;
	}

    public ModelAndView confirmUserAccount(String confirmationToken)
    {
        ConfirmationToken token = confirmationTokenRepository.findByConfirmationToken(confirmationToken);
        ModelAndView mv = new ModelAndView();
        User user = null;
        if(token != null)
        {
            user = userRepository.findByEmailIgnoreCase(token.getUserEmail());
            user.setVerified(true);
            userRepository.save(user);
            mv.setViewName("redirect:/index.jsp");
        }
        else {
        	mv.setViewName("redirect:/error.jsp");
        }
        System.out.println("Hello" + user);
        return mv;
    }
}