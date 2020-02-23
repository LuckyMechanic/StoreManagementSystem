package com.store.service;

import com.store.dao.PhoneMapper;
import com.store.pojo.Phones;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
/**
 * @author LinQiuying
 * @date 2020/2/2 - 14:24
 */
public class PhoneServiceImpl implements PhoneService{
    //service调dao层
    @Autowired
    private PhoneMapper phoneMapper;
    public void setPhoneMapper(PhoneMapper phoneMapper) {
        this.phoneMapper = phoneMapper;
    }

    public int addPhone(Phones phone) {
        return phoneMapper.addPhone(phone);
    }

    public int deletePhoneById(int id) {
        return phoneMapper.deletePhoneById(id);
    }

    public int updatePhone(Phones phones) {
        System.out.println("PhoneServiceImpl:updatePhone=>"+phones);
        return phoneMapper.updatePhone(phones);
    }

    public Phones queryPhoneById(int id) {
        return phoneMapper.queryPhoneById(id);
    }

    public List<Phones> queryAllPhone() {
        return phoneMapper.queryAllPhone();
    }
}
