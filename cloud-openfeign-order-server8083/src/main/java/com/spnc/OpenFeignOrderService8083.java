package com.spnc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

/**
 * @desc:
 * @author: zh_haining
 * @date: 2021/6/9 下午4:03
 */
@SpringBootApplication
@EnableFeignClients
public class OpenFeignOrderService8083 {
    public static void main(String[] args) {
        SpringApplication.run(OpenFeignOrderService8083.class, args);
    }
}
