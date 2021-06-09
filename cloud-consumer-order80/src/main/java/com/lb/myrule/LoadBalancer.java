package com.lb.myrule;

import org.springframework.cloud.client.ServiceInstance;

import java.util.List;

/**
 * @desc:
 * @author: zh_haining
 * @date: 2021/6/9 下午2:03
 */
public interface LoadBalancer {
    ServiceInstance instances(List<ServiceInstance> serviceInstances);
}
