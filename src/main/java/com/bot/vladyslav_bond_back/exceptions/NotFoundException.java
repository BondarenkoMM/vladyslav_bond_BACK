package com.bot.vladyslav_bond_back.exceptions;

public class NotFoundException extends RuntimeException {

    String message = "Resource not found";

    public NotFoundException() {
        super();
    }

    public NotFoundException(String message) {
        super();
        this.message = message;
    }

    @Override
    public String getMessage() {
        return message;
    }
}

