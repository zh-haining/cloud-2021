package com.spnc.services;

import com.spnc.entities.CommonResult;
import com.spnc.entities.Payment;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

/**
 * @desc:
 * @author: zh_haining
 * @date: 2021/6/9 下午4:07
 */
@Component
@FeignClient(value = "CLOUD-PAYMENT-SERVICE")
public interface PaymentService {
    @GetMapping(value = "/payment/get/{id}")
    public CommonResult<Payment> getPayment(@PathVariable("id") Long id);

    @GetMapping(value = "payment/timeout")
    public CommonResult timeout();
}
