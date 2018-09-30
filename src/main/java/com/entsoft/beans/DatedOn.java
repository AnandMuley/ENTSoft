package com.entsoft.beans;

import java.time.LocalDateTime;

public class DatedOn {

    private LocalDateTime value;

    public DatedOn(LocalDateTime value) {
        this.value = value;
    }

    public LocalDateTime getValue() {
        return value;
    }

    @Override
    public String toString() {
        return "DatedOn{" +
                "value='" + value + '\'' +
                '}';
    }
}
