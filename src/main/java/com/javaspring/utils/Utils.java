package com.javaspring.utils;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;

public class Utils {
	
	
	private static final String CHARACTERS = "abcdefghijklmnopqrstuvwxyz";

	public static String generateRandomString(int length) {
		Random random = new Random();
		StringBuilder stringBuilder = new StringBuilder(length);
		for (int i = 0; i < length; i++) {
			int index = random.nextInt(CHARACTERS.length());
			stringBuilder.append(CHARACTERS.charAt(index));
		}
		return stringBuilder.toString();
	}
	
	public static String getToken() {
		String randomString = generateRandomString(20);
		return randomString;
	}
	
	public static Boolean isLoggedIn(HttpServletRequest request) {
	    String token = (String) Session.getAttribute(request, "token");
	    request.setAttribute("token", token);
		if (token != null) {
            return true;
        }else {
        	return false;
        }
	}
	
	public static Boolean isAdmin(HttpServletRequest request) {
	    String token = (String) Session.getAttribute(request, "token");
	    request.setAttribute("token", token);
	    try {
		    String role = String.valueOf(token.charAt(0));
			if (role.equals("1")) {
	            return true;
	        }else {
	        	return false;
	        }
		} catch (Exception e) {
			return true;//not admin
		}

	}
	
	   // validateString pssword
    public static boolean validateString(String str) {
        if (str.length() < 8) {
            return false;
        }

        boolean hasNumber = false;
        boolean hasUpperCase = false;
        boolean hasSpecialChar = false;

        for (char c : str.toCharArray()) {
            if (Character.isDigit(c)) {
                hasNumber = true;
            } else if (Character.isUpperCase(c)) {
                hasUpperCase = true;
            } else if (!Character.isLetterOrDigit(c)) {
                hasSpecialChar = true;
            }
        }

        return hasNumber && hasUpperCase && hasSpecialChar;
    }
}
