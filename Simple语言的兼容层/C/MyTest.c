#include <stdio.h>
#include "Simple.h"
int main()
{
    // 声明两个变量
    int v = 0;
    change_int(&v,128);
    printf("%d",v);
}