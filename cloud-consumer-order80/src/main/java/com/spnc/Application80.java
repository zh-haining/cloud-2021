package com.spnc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

/**
 * @desc:
 * @author: zh_haining
 * @date: 2021/5/28 下午4:34
 */
@SpringBootApplication
@EnableEurekaClient
public class Application80 {
    public static void main(String[] args) {
        SpringApplication.run(Application80.class, args);
    }
}
