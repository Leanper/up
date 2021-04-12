import javax.jws.WebService;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebService
public class WebServiceImpl implements IWebService {
    @Override
    public String sayHello(String name) {
        Date date = new Date();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String hello = df.format(date) + "," + name + "call the inferface!";
        return hello;
    }
}