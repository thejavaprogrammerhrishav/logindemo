package com.hdsoft.logindemo;

import javax.validation.constraints.Email;
import javax.validation.constraints.Size;

public class User {
    @Size(min=5, max=20)
    private String name;
    @Email
    private String username;
    @Size(min=10,max=45)
    private String password;

    public User() {
    }

    public User(String name, String username, String password) {
        this.name = name;
        this.username = username;
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
