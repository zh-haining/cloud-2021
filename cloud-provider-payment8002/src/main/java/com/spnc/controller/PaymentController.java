package com.spnc.controller;

import com.spnc.entities.CommonResult;
import com.spnc.entities.Payment;
import com.spnc.service.PaymentService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * @desc:
 * @author: zh_haining
 * @date: 2021/6/1 下午8:42
 */
@RestController
@Slf4j
public class PaymentController {

    @Autowired
    private PaymentService paymentService;

    @Value("${server.port}")
    private Integer port;

    @PostMapping(value = "payment/create")
    public CommonResult create(@RequestBody Payment payment) {
        int result = paymentService.create(payment);
        log.info("插入结果：{}", result > 0 ? "success" : "fail");
        if (result > 0) {
            return new CommonResult(200, "success");
        } else {
            return new CommonResult(444, "插入数据失败");
        }
    }

    @GetMapping(value = "payment/get/{id}")
    public CommonResult getPaymentById(@PathVariable("id") Long id) {
        Payment payment = paymentService.getPaymentByid(id);
        if (null != payment) {
            log.info("查询结果:{}", payment.toString());
            return new CommonResult(200, "success | " + port, payment);
        } else {
            return new CommonResult(444, "查询数据失败");
        }
    }

    @GetMapping(value = "payment/getLb")
    public CommonResult getPaymentLb() {
        return new CommonResult(200, "success", port);
    }

    @GetMapping(value = "payment/timeout")
    public CommonResult timeout() {
        try {
            Thread.sleep(3 * 1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        return new CommonResult(200, "success", port);
    }
}
