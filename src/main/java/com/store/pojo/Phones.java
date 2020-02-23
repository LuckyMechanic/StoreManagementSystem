package com.store.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author LinQiuying
 * @date 2020/2/2 - 11:13
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Phones {
    private int phoneID;
    private String phoneName;
    private int phoneCounts;
    private String detail;
}
