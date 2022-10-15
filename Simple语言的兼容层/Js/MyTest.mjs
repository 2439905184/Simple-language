//es6
var test = {"old":"old"}
// var old = "old"
// js的参数传递, object是传递的实际内存地址 普通变量参数传入函数时, 会创建一个拷贝引用 所以无法修改原变量的值
function change_value(var_name, var_value)
{
    var_name.old = var_value
    //console.log(var_name)
}

change_value(test,"new")
console.log(test)