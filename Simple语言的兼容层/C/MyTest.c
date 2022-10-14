#include <stdio.h>
#include "Simple.h"
int main()
{
    // 声明两个变量
    int v = 0;
    change_int(&v,128);
    
    //int vv = 1;
    // 传入变量的内存地址
    //change_value(&v,&vv);
    printf("%d",v);
    // printf("%d",v);
}