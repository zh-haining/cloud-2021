package com.spnc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

/**
 * @desc:
 * @author: zh_haining
 * @date: 2021/5/28 下午4:14
 */
@SpringBootApplication
@EnableEurekaClient
public class Application8001 {
    public static void main(String[] args) {
        SpringApplication.run(Application8001.class, args);
    }
}
