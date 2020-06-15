package com.neoquant.service;

import com.neoquant.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}