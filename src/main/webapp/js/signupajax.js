$(document).ready(function() {

    $("#signUpForm").submit(function (event) {
        event.preventDefault();
        ajaxPost();
    });

function ajaxPost() {

	var temp = {
    	"emailInfo" :  $("#emailSignUp").val(),
    	"sourceInfo" : $("#sourceSignUp").val(),
    	"destinationInfo" : $("#destinationSignUp").val()
    	
    }

    $.ajax({
        type: "POST",
        url: "/search",
        data: temp,
        dataType: 'json',
       headers: { 
        'Access-Control-Allow-Origin': '*' 
        },
        crossDomain: true,
        cache: false,
        timeout: 600000,
        success: function (data) {
        console.log("data is " + data);
        	if( data[0].result == "failed"){
        	    $("#emailSignUpHelp").html("<p style='color:#FF0000'>Email already registered.. Please enter a different email</p>");
        	}
        	else if(data[0].result == "sourceDestMatched"){
        		$("#sourceSignUpHelp").html("<p style='color:#FF0000'>Enter a different source or destination</p>");
        	}
        	else if(data[0].result == "add"){
        	     $("#signUpForm").unbind('submit').submit();
        	}
        },
        error: function (e) {
            console.log("ERROR : ", e);
            alert("Error while signing up! Please try again later");
        }
    });
  }
})