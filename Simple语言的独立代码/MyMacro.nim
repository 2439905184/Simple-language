import macros

# 宏函数
# 赋值 把前面的字面量的值赋值到后面的参数(变量)中 目前暂时还不能实现 -> 这个符号
macro assignTo(p_value: untyped,p_var: untyped): untyped = 
  var myLit = newLit() #创建语法
  result = quote do:
    `p_var = p_value`

var oldVar = "old"
var c = "new"
# "abc" -> c
echo assignTo(c,oldVar)