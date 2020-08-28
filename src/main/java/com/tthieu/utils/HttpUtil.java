package com.tthieu.utils;

import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.BufferedReader;
import java.io.IOException;

public class HttpUtil {
    private String value;

    public HttpUtil(String value) {
        this.value = value;
    }

    public <T> T toModel(Class<T> class1) {
        try {
            return new ObjectMapper().readValue(this.value, class1);
        } catch (IOException e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public static HttpUtil of(BufferedReader reader) {
        StringBuilder builder = new StringBuilder();
        try {
            String line;
            while ((line = reader.readLine()) != null) {
                builder.append(line);

            }
            // System.out.println(builder);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return new HttpUtil(builder.toString());
    }
}
