## 不同种类的适配
---

**屏幕尺寸**
 屏幕对角线的长度 单位英寸 1英寸=2.54厘米
 
 **屏幕分辨率**
 屏幕分辨率是指在横纵向上的像素点数，单位是px，1px=1个像素点。一般以纵向像素*横向像素
 
 
  **屏幕像素密度**
屏幕像素密度是指每英寸上的像素点数，单位是dpi，即“dot per inch”的缩写。屏幕像素密度与屏幕尺寸和屏幕分辨率有关，在单一变化条件下，屏幕尺寸越小、分辨率越高，像素密度越大，反之越小。
 
 
 **dp、dip、dpi、sp、px**
 
 dp dip一个意思 都是Density Independent Pixels的缩写，即密度无关像素 。 在Android中，规定以160dpi为基准，1dip=1px，如果密度是320dpi，则1dip=2px，以此类推。
 
 sp，即scale-independent pixels，与dp类似，但是可以根据文字大小首选项进行放缩，是设置字体大小的御用单位。
 
 **dp2px**
 px = density * dp;
density = dpi / 160;
px = dp * (dpi / 160);

 ---
 
 名称 | 像素范围 
 ----|------|----
mdpi |	120dpi~160dpi
hdpi  |		160dpi~240dpi
xhdpi  |		240dpi~320dpi
xxhdpi  |		320dpi~480dpi
xxxhdpi  |		480dpi~640dpi
 
 
 比例为 2:3:4:6:8

 ---
 
 https://blog.csdn.net/jim19890923/article/details/72820102
 
 

 