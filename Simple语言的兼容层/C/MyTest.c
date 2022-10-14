#include <stdio.h>
// 通过来指针来改变值 *号指针可以获取到指针的值,不是指针的变量 &才是取变量地址
void change_value(int *v, int *vv)
{
    *v = *vv;
}
int main()
{
    // 声明两个变量
    int v = 0;
    int vv = 1;
    // 传入变量的内存地址
    change_value(&v,&vv);
    printf("%d",v);
    // printf("%d",v);
}