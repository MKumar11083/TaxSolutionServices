package com.tss.security;


import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
 
public class QuickPasswordEncodingGenerator {
 
    /**
     * @param args
     */
    public static void main(String[] args) {
            String password = "sam123";
            BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
            System.out.println(passwordEncoder.encode(password));
    }
 
}
