package com.spnc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

/**
 * @desc:
 * @author: zh_haining
 * @date: 2021/6/2 下午6:21
 */
@SpringBootApplication
@EnableEurekaClient
public class Application8002 {
    public static void main(String[] args) {
        SpringApplication.run(Application8002.class);
    }
}
