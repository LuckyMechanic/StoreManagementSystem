package com.store.controller;

import com.store.pojo.Phones;
import com.store.service.PhoneService;
import com.store.service.PhoneServiceImpl;
import com.sun.xml.internal.bind.v2.model.core.ID;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.List;

/**
 * @author LinQiuying
 * @date 2020/2/2 - 16:03
 */
@Controller
@RequestMapping("/phone")
public class PhoneController {
    @Autowired
    @Qualifier("PhoneServiceImpl")
    private PhoneService phoneService;

    //查询全部的手机，并且返回到手机展示页面
    @RequestMapping("/allPhone")
    public String list(Model model)
    {
        List<Phones> list = phoneService.queryAllPhone();
        model.addAttribute("list",list);
        return "allPhone";
    }

    //跳转到主页面
    @RequestMapping("/all")
    public String toAll() {
        return "main";
    }

    //跳转到增加手机页面
    @RequestMapping("/toAddPhone")
    public String addPaper() {
        return "addPhone";
    }

    //添加书籍请求
    @RequestMapping("/addPhone")
    public String addPhone(Phones phones)
    {
        System.out.println("addPhone=>"+phones);
        phoneService.addPhone(phones);
        return "redirect:/phone/allPhone";
    }

    //跳转到修改页面
    @RequestMapping("/toUpdate")
    public String toUpdatePaper(int id,Model model)
    {
        Phones phones= phoneService.queryPhoneById(id);
        model.addAttribute("QPhone",phones);
        return "updatePhone";
    }

    //修改
    @RequestMapping("/updatePhone")
    public String updatePhone(Phones phones)
    {
        System.out.println("updatePhone=>"+phones);
        phoneService.updatePhone(phones);
        return "redirect:/phone/allPhone";
    }

    //删除
    @RequestMapping("/deletePhone/{phoneId}")
    public String deletePhone(@PathVariable("phoneId") int id)
    {
        phoneService.deletePhoneById(id);
        return "redirect:/phone/allPhone";
    }
}
