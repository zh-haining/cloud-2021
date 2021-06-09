package com.spnc.controller;

import com.spnc.entities.CommonResult;
import com.spnc.entities.Payment;
import com.spnc.services.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

/**
 * @desc:
 * @author: zh_haining
 * @date: 2021/6/9 下午4:09
 */
@RestController
public class OrderController {

    @Autowired
    private PaymentService paymentService;

    @GetMapping(value = "consumer/payment/get/{id}")
    public CommonResult<Payment> getPayment(@PathVariable("id") Long id) {
        return paymentService.getPayment(id);
    }
}
