package com.spnc.com.lb;

import com.lb.myrule.LoadBalancer;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * @desc:
 * @author: zh_haining
 * @date: 2021/6/9 下午1:59
 */
@Component
public class MyLB implements LoadBalancer {
    private AtomicInteger atomicInteger = new AtomicInteger(0);

    @Override
    public ServiceInstance instances(List<ServiceInstance> serviceInstances) {
        int index = this.getAndIncreament() % serviceInstances.size();
        return serviceInstances.get(index);
    }

    private final int getAndIncreament() {
        int current, next;
        for (; ; ) {
            current = this.atomicInteger.get();
            next = current > 2147483647 ? 0 : current + 1;
            if (this.atomicInteger.compareAndSet(current, next)) {
                return next;
            }
        }
    }

}
