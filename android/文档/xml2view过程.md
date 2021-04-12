
布局通过xml转化为view

    activity通过setContentView（layoutId）得到加载对象 
   
    public void setContentView(@LayoutRes int layoutResID) {
        getWindow().setContentView(layoutResID);
        initWindowDecorActionBar();
    }
   
    
    
    setContextView源码 可以看出得到getwindow() 查看getwindow()源码
    
    public Window getWindow() {
    return mWindow;
    }
    
    搜索mWindow 只有一个地方得到
    
    mWindow = new PhoneWindow(this, window, activityConfigCallback);
    
https://blog.csdn.net/qq_30889373/article/details/82823013
https://www.cnblogs.com/coding-way/p/5257579.html
https://mp.weixin.qq.com/s/zTWnwDHL2am8Xu1ZVQKTgg