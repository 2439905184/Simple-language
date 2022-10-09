# 使用模板和替换实现了变量名后置 接着需要再创建一个模板 使用关键字语句的形式完成 -> 的关键字代码形式
template assignVar(p_value: untyped, p_var: untyped): untyped =
  p_var = p_value

proc cheers(): string = 
  return "Cheers!"

var my_var = ""
assignVar("新值,Simple语言的内部赋值函数实现", my_var)
echo my_var

assignVar("测试值2", my_var)
echo my_var

# 实现了 fx() -> var 的语言格式设计
assignVar(cheers(), my_var)
echo my_var

# template 赋值宏函数(a:string,B:string) = 
#   a = b
    
# # var a = "AX"
# # echo a & "BB"
# # var c = a >> "BB"
# # echo c
# echo addString("A","B")

# # var c = 赋值宏函数("a" ,"new")
# # echo c 

# proc `pp`(x,y:string) = 
#   var a =  "AA"

# var b = "ADF"
# var c = "A"
# b pp c