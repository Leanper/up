package day7_12_1_javaorkotlin;

import java.awt.*;

public class JavaMainTest{

    public static void main(String[] a){

        getKotlinDataClass();
        //调用类的方法
        OprationKt.study(new Person(3,"fd"),"张三");

        //调用kotlin bean
        getKotlinBean();

        /*
        * 调用kotlin方法
        * */
        String kotlinString = KotlinMainTestKt.getKotlinString("3");
        System.out.println("调用kotlin方法：--》"+kotlinString);


    }


    /*
    * 调用kotlin数据类
    * */
    private static void getKotlinDataClass() {
        Person p=new Person(3, "");
        //调用kotlin数据类data person get set对象
        p.setAge(4);
        p.getName();
        System.out.println(p.getName());
    }

    /*
    * 提供kotlin调用方法
    * */
    public String  getJavaString(String name){

        if (name.length()>3)
            return name;
        else
            return null;
    }

    /*
    * 调用kotlin bean
    * */
    public static void getKotlinBean(){
        //调用kotlin的bean
        StudentBean studentBean=new StudentBean();
        studentBean.setAge(3);
        studentBean.setName("李四");
        studentBean.setSex("女");
        studentBean.getScore();
        System.out.print(studentBean.getScore());
        System.out.println(studentBean.getName());

    }

//    https://www.jianshu.com/p/e3ae07461a21


}
