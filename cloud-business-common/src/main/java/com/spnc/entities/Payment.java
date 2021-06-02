package com.spnc.entities;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;

/**
 * @desc:
 * @author: zh_haining
 * @date: 2021/6/1 下午3:56
 */
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Payment implements Serializable {
    private static final long serialVersionUID = 8687612863619287821L;
    private Long id;
    private String serial;
}
