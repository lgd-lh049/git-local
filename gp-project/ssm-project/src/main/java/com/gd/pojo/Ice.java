package com.gd.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Ice {

    private int iceId;
    private String iceName;
    private String iceVariety;
    private double icePrice;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private String iceData;
    private int iceStatus;
    private String iceImages;
}
