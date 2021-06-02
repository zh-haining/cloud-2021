package com.spnc.service.impl;

import com.spnc.entities.Payment;
import com.spnc.mapper.PaymentMapper;
import com.spnc.service.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @desc:
 * @author: zh_haining
 * @date: 2021/6/1 下午8:41
 */
@Service
public class PaymentServiceImpl implements PaymentService {
    @Autowired
    private PaymentMapper paymentMapper;

    @Override
    public int create(Payment payment) {
        return paymentMapper.create(payment);
    }

    @Override
    public Payment getPaymentByid(Long id) {
        return paymentMapper.getPaymentById(id);
    }
}
