package com.example;

import org.codehaus.jackson.map.ObjectMapper;

import java.io.StringWriter;

public class JsonApp {
    public static void main(String[] args) {
        try {
            ObjectMapper mapper = new ObjectMapper();
            User user = new User("John Doe", 30);
            StringWriter writer = new StringWriter();
            mapper.writeValue(writer, user);
            System.out.println("User JSON is: " + writer.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

class User {
    public String name;
    public int age;

    public User(String name, int age) {
        this.name = name;
        this.age = age;
    }
}
