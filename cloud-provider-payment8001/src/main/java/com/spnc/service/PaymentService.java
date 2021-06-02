package com.spnc.service;

import com.spnc.entities.Payment;
import org.apache.ibatis.annotations.Param;

/**
 * @desc:
 * @author: zh_haining
 * @date: 2021/6/1 下午8:40
 */
public interface PaymentService {
    public int create(Payment payment);

    public Payment getPaymentByid(@Param("id") Long id);
}
