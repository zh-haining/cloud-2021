package com.spnc.mapper;

import com.spnc.entities.Payment;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * @desc:
 * @author: zh_haining
 * @date: 2021/6/1 下午8:21
 */
@Mapper
public interface PaymentMapper {


    public int create(Payment payment);

    public Payment getPaymentById(@Param("id") Long id);
}
