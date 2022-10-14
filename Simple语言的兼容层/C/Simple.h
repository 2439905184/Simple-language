// 通过来指针来改变值 *号指针可以获取到指针的值,不是指针的变量 &才是取变量地址
void change_value(int *v, int *vv)
{
    *v = *vv;
}
// 通过普通变量覆盖原变量的值
void change_int(int *var, int p_value)
{
    *var = p_value;
}
void change_float(float *var, int p_value)
{
    *var = p_value;
}
void change_double(double *var, double p_value)
{
    *var = p_value;
}
// todo
void change_variant()
{

}
// todo
void execute()
{

}