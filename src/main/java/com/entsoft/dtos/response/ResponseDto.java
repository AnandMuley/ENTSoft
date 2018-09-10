package com.entsoft.dtos.response;

public class ResponseDto {

    private String message;

    private ResponseDto(String message) {
        this.message = message;
    }

    public static ResponseDto build(String message) {
        return new ResponseDto(message);
    }

    public String getMessage() {
        return message;
    }

    @Override
    public String toString() {
        return "ResponseDto{" +
                "message='" + message + '\'' +
                '}';
    }
}
