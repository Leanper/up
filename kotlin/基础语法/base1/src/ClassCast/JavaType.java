package ClassCast;

import static java.sql.DriverManager.println;

public class JavaType {
    public static void main(String[] arg){
        Prent p=new child();
        println(((child) p).getLocalName());

    }

}
