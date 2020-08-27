package com.tthieu.utils;

import com.sun.deploy.net.HttpRequest;

import javax.servlet.http.HttpServletRequest;

public class SessionUtil {

    private static SessionUtil sessionUtil = null;

    public static SessionUtil getInstance() {
        if (sessionUtil == null) {
            sessionUtil = new SessionUtil();
        }
        return sessionUtil;
    }

    public void putValue(HttpServletRequest httpRequest, String key, Object value) {
        httpRequest.getSession().setAttribute(key, value);
    }

    public Object getValue(HttpServletRequest httpRequest, String key) {
        return httpRequest.getSession().getAttribute(key);
    }

    public void removeValue(HttpServletRequest httpRequest, String key){
        httpRequest.getSession().removeAttribute(key);
    }

}
