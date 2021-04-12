import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.xml.ws.Endpoint;

@WebServlet(value="", loadOnStartup=0)
public class WebServiceCalledByServlet extends HttpServlet{
    private static final long serialVersionUID = -2864381365175258589L;

    public void init() {
        String address = "http://127.0.0.1:8888/WebServiceWithServlet";
        Endpoint.publish(address, new WebServiceImpl());
        System.out.println("使用WebServiceCalledByServlet发布webservice成功!");
    }
}
