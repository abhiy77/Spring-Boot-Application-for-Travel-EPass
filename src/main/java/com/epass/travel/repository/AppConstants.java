package com.epass.travel.repository;

public interface AppConstants {
	public String DB_DRIVER = "com.mysql.cj.jdbc.Driver";
	public String DB_SCHEMA = "userdb";
	public String DB_USER = "root";
	public String DB_PASSWORD = "qwerty";
	public String DB_HOST = "localhost";
	public String DB_PORT = "3306";
	public String DB_URL = "jdbc:mysql://" + DB_HOST + ":" + DB_PORT + "/" + DB_SCHEMA + "?useSSL=false";
	public String NO_DATA_FOUND_MESG = "Sorry, there is no data available";
	public String TABLE_NAME = "admin_info";
}
