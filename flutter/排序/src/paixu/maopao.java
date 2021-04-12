package paixu;

import java.util.HashMap;
import java.util.Map;

public class maopao {

    public static void main(String[] args){
        maopao m=new maopao();
        int mylist[]=new int[]{5,22,41,52,6,7,817,87,4,53,423};
        for (int i=0;i<mylist.length ;i++ ){
            System.out.print(mylist[i]+"\t");
        }
        //直接插入排序
        m.insertSort(mylist);

        //冒泡排序
        m.bubbleSort(mylist);
        //快速排序
        m.quietSort(mylist);


        //直接选择排序
        m.choiceSort(mylist);
        //堆排序
        m.heapSort(mylist);

        //有序序列合并
        int[] a = {12, 45, 67, 90, 101,121};  // 有序表a
        int[] b = {2, 7,12, 52, 89, 95};
//        m.Merge(a,b,a.length,b.length,10);
        int[] me = m.me(a, b);

        System.out.print("合并排序"+"\n");


        for (int i=0;i<me.length ;i++ ){
            System.out.print(me[i]+"\t");
        }


        int[] ints = m.heapSorts(mylist);
        System.out.print(""+"\t");


        for (int i=0;i<ints.length ;i++ ){
            System.out.print(ints[i]+"\t");
        }
    }




    /*  //1直接插入排序
     *  *  时间复杂度：O(n2)
     *  空间复杂度：O(1)
     *
     *  稳定性：稳定
     * */
    public void insertSort(int[] array){
        int length=array.length;
        //外层循环确定待比较数值
        for (int i=1;i<array.length;i++) {  //必须i=1，因为开始从第二个数与第一个数进行比较
            int temp = array[i];  //待比较数值
            int a;
            //内层循环为待比较数值确定其最终位置
            for ( a = i - 1;a>=0 && array[a]>temp;a--) {  //待比较数值比前一位置小，应插往前插一位
                //将大于temp的值整体后移一个单位
                array[a+1] = array[a];
            }
            array[a+1] = temp; //待比较数值比前一位置大，最终位置无误
        }

        System.out.println(" \n 插入排序：");

        for(int a=0;a<length;a++){
            System.out.print(array[a]+"\t");
        }
    }

    //2.1 交换排序之冒泡 时间复杂度为o(N2)
    public  void bubbleSort( int[] list){
        int temp;
        int length=list.length;
        for(int j=0;j<length-1;j++){
            for(int i=0;i<length-1-j;i++){
                if(list[i]>list[i+1]){

                    temp=list[i];
                    list[i]=list[i+1];
                    list[i+1]=temp;
                }
            }
        }
        System.out.println("\n冒泡排序\t");

        for (int i=0;i<list.length ;i++ ){
            System.out.print(list[i]+"\t");
        }

    }


    //2.1 交换排序之快速

    public void quietSort(int [] arr){
        sort(arr,0,arr.length-1);
        for (int a=0;a<arr.length;a++){
            System.out.print(arr[a]+"\t");
        }
    }
    public void sort(int[] arr,int left,int right){

        if(left>right){
            return;
        }
        int base=arr[left];
        int i=left, j=right;
        while (i!=j){
            //右边
            while (arr[j]>=base&&i<j){
                j--;
            }
            //左边
            while (arr[i]<=base&&i<j){
                i++;
            }
            //找到合适位置
            if(i>=j){
                int temp=arr[i];
                arr[i]=arr[j];
                arr[j]=temp;
            }
            //将基数放到中间
            arr[left]=arr[i];
            arr[i]=base;
            //递归 继续执行
            sort(arr,left,i-1);
            sort(arr, j+1,right);
        }

        System.out.print("\n快速排序算法\t");



    }



    /**
     选择排序之选择排序法
     https://www.cnblogs.com/captainad/archive/2019/06/10/10999697.html
     */
    public void choiceSort(int []arr){
        int min;
        int temp;
        for (int i=0;i<arr.length;i++){
            min=i;
            for (int j=i+1;j<arr.length;j++){
                if (arr[min]>arr[j]){
                    min=j;
                }
            }

            if(min!=i){


                temp = arr[i];







































































































































































































































































































































































































































































































































































































































































































































































































































































































                arr[i] = arr[min];
                arr[min] = temp;
            }
        }
        System.out.print("直接选择排序\n");

        for (int i=0;i<arr.length;i++){
            System.out.print(arr[i]+"\t");
        }



        int max;
        for(int i=0;i<arr.length;i++){
            max=i;
            for(int j=i+1;j<arr.length;j++){
                if(arr[max]<arr[j]){
                    max=j;
                }
            }

            if(max!=i){
                int temps=arr[i];
                arr[i]=arr[max];
                arr[max]=temps;
            }
        }
        System.out.print("最大\n");
        for (int a=0;a<arr.length;a++){
            System.out.print(arr[a]+"\t");
        }

    }


    /**
     选择排序之堆排序法
     https://blog.csdn.net/u010452388/article/details/81283998
     */

    /*
     * 堆排序法1
     * */

    //堆排序
    public  void heapSort(int[] arr) {
        //构造大根堆
        heapInsert(arr);
        int size = arr.length;
        while (size > 1) {
            //固定最大值
            swap(arr, 0, size - 1);
            size--;
            //构造大根堆
            heapify(arr, 0, size);

        }

        System.out.print("\n堆排序法");

        for (int i=0;i<arr.length;i++){
            System.out.print(arr[i]+"\t");
        }

    }

    //构造大根堆（通过新插入的数上升）
    public  void heapInsert(int[] arr) {
        for (int i = 0; i < arr.length; i++) {
            //当前插入的索引
            int currentIndex = i;
            //父结点索引
            int fatherIndex = (currentIndex - 1) / 2;
            //如果当前插入的值大于其父结点的值,则交换值，并且将索引指向父结点
            //然后继续和上面的父结点值比较，直到不大于父结点，则退出循环
            while (arr[currentIndex] > arr[fatherIndex]) {
                //交换当前结点与父结点的值
                swap(arr, currentIndex, fatherIndex);
                //将当前索引指向父索引
                currentIndex = fatherIndex;
                //重新计算当前索引的父索引
                fatherIndex = (currentIndex - 1) / 2;
            }
        }
    }
    //将剩余的数构造成大根堆（通过顶端的数下降）
    public  void heapify(int[] arr, int index, int size) {
        int left = 2 * index + 1;
        int right = 2 * index + 2;
        while (left < size) {
            int largestIndex;
            //判断孩子中较大的值的索引（要确保右孩子在size范围之内）
            if (arr[left] < arr[right] && right < size) {
                largestIndex = right;
            } else {
                largestIndex = left;
            }
            //比较父结点的值与孩子中较大的值，并确定最大值的索引
            if (arr[index] > arr[largestIndex]) {
                largestIndex = index;
            }
            //如果父结点索引是最大值的索引，那已经是大根堆了，则退出循环
            if (index == largestIndex) {
                break;
            }
            //父结点不是最大值，与孩子中较大的值交换
            swap(arr, largestIndex, index);
            //将索引指向孩子中较大的值的索引
            index = largestIndex;
            //重新计算交换之后的孩子的索引
            left = 2 * index + 1;
            right = 2 * index + 2;
        }

    }

    //交换数组中两个元素的值
    public  void swap(int[] arr, int i, int j) {
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
    }

    /*
     * 堆排序法2
     * */

    public  int[] heapSorts(int[] array) {
        //这里元素的索引是从0开始的,所以最后一个非叶子结点array.length/2 - 1
        for (int i = array.length / 2 - 1; i >= 0; i--) {
            adjustHeap(array, i, array.length);  //调整堆
        }

        // 上述逻辑，建堆结束
        // 下面，开始排序逻辑
        for (int j = array.length - 1; j > 0; j--) {
            // 元素交换,作用是去掉大顶堆
            // 把大顶堆的根元素，放到数组的最后；换句话说，就是每一次的堆调整之后，都会有一个元素到达自己的最终位置
            swap(array, 0, j);
            // 元素交换之后，毫无疑问，最后一个元素无需再考虑排序问题了。
            // 接下来我们需要排序的，就是已经去掉了部分元素的堆了，这也是为什么此方法放在循环里的原因
            // 而这里，实质上是自上而下，自左向右进行调整的
            adjustHeap(array, 0, j);
        }
        return array;
    }
    public  void adjustHeap(int[] array, int i, int length) {
        // 先把当前元素取出来，因为当前元素可能要一直移动
        int temp = array[i];
        for (int k = 2 * i + 1; k < length; k = 2 * k + 1) {  //2*i+1为左子树i的左子树(因为i是从0开始的),2*k+1为k的左子树
            // 让k先指向子节点中最大的节点
            if (k + 1 < length && array[k] < array[k + 1]) {  //如果有右子树,并且右子树大于左子树
                k++;
            }
            //如果发现结点(左右子结点)大于根结点，则进行值的交换
            if (array[k] > temp) {

                swap(array, i, k);

                // 如果子节点更换了，那么，以子节点为根的子树会受到影响,所以，循环对子节点所在的树继续进行判断
                i  =  k;
            } else {  //不用交换，直接终止循环
                break;
            }
        }
    }



    /*有序序列合并*/
    public int[]me1(int[] arr,int[] arr1,int h,int m,int n){
        int k=h;
        int []c=new int[m+n];
        int i=0,j=m+1;
        while (i<m&&j<n){
            if(arr[i]<arr1[j]){
                c[k++]=arr[i];
                i++;
            }else{
                c[k++]=arr1[j];
                j++;
            }
        }

        while (i<m){
            c[k++]=arr[i++];
        }
        while (j<n){
            c[k++]=arr1[j++];
        }
        return  c;
    }


    public  int[] me(int[] a, int[] b){
        int m = a.length;
        int n = b.length;
        int[] c = new int[m+n];
        int i = 0, j = 0, k = 0;
        while(i<m && j<n){
            if(a[i] <= b[j]){
                c[k++] = a[i++];
            }else{
                c[k++] = b[j++];
            }
        }
        while(i<m){
            c[k++] = a[i++];
        }
        while(j<n){
            c[k++] = b[j++];
        }
        return c;
    }

    /*二路归并法拍戏*/
    public void  twoMeage(int[] a,int[] b,int n,int h){
        int i=1;
        while(i<n-2*h+1){
//        me1(a, b);
            i=i+2*h;
        }if(i+h-1<n){

        }else {
//        for ()
        }

    }


}
