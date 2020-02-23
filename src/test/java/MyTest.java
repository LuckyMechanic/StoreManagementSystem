import com.store.pojo.Phones;
import com.store.service.PhoneService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.applet.AppletContext;

public class MyTest
{
    @Test
    public void test()
    {
        ApplicationContext Context = new ClassPathXmlApplicationContext("applicationContext.xml");
        PhoneService phoneServiceImpl = (PhoneService) Context.getBean("PhoneServiceImpl");
        for (Phones phones : phoneServiceImpl.queryAllPhone()) {
            System.out.println(phones);
        }
    }
}
