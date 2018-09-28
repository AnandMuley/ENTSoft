package com.entsoft.exceptions;

public class EntSoftException extends Exception {

    public EntSoftException() {
        super();
    }

    public EntSoftException(String message) {
        super(message);
    }

    public EntSoftException(String message, Throwable cause) {
        super(message, cause);
    }
}
