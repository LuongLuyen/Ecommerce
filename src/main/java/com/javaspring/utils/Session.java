package com.javaspring.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Session {

    public static Object getAttribute(HttpServletRequest request, String key) {
        HttpSession session = request.getSession(false); 
        return (session != null) ? session.getAttribute(key) : null;
    }

    public static void setAttribute(HttpServletRequest request, String key, Object value) {
        HttpSession session = request.getSession(); 
        session.setAttribute(key, value);
    }

    public static void removeAttribute(HttpServletRequest request, String key) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.removeAttribute(key);
        }
    }

    public static void invalidateSession(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }
    }
 
}
