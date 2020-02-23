package com.store.dao;
import com.store.pojo.Phones;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author LinQiuying
 * @date 2020/2/2 - 11:41
 */
public interface PhoneMapper {

    //增加手机库存
    int addPhone(Phones phone);

    //根据id删除一个Phone
    int deletePhoneById(int id);

    //更新Phone
    int updatePhone(Phones phones);

    //根据id查询,返回一个Phone
    Phones queryPhoneById(int id);

    //查询全部Phone,返回list集合
    List<Phones> queryAllPhone();

}
