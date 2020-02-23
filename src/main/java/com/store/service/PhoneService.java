package com.store.service;

import com.store.pojo.Phones;

import java.util.List;

/**
 * @author LinQiuying
 * @date 2020/2/2 - 14:23
 */
public interface PhoneService {
    //增加手机库存
    int addPhone(Phones phone);

    //根据id删除一个Phone
    int deletePhoneById(int id);

    //更新Book
    int updatePhone(Phones phones);

    //根据id查询,返回一个Book
    Phones queryPhoneById(int id);

    //查询全部Book,返回list集合
    List<Phones> queryAllPhone();

}
