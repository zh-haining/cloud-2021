package com.lb.myrule;

import com.netflix.loadbalancer.IRule;
import com.netflix.loadbalancer.RandomRule;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @desc:
 * @author: zh_haining
 * @date: 2021/6/9 下午1:25
 */
@Configuration
public class MyRule {

    @Bean
    public IRule myRule1() {
        return new RandomRule();
    }
}
