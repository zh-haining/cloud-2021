package com.spnc.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.UUID;

/**
 * @desc:
 * @author: zh_haining
 * @date: 2021/5/28 下午4:17
 */
@RestController
@Slf4j
public class HelloController {

    @GetMapping(value = "/hello")
    public String hello() {
        String str = UUID.randomUUID().toString();
        log.info("hello,{}", str);
        return "hello, " + str;
    }
}
