package com.entsoft.exceptions;

public class AuthenticationFailedException extends EntSoftException {

    public AuthenticationFailedException() {
    }

    public AuthenticationFailedException(String message) {
        super(message);
    }
}
