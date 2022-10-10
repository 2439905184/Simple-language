import std/macros
# 使用模板和替换实现了变量名后置 接着需要再创建一个模板 使用关键字语句的形式完成 -> 的关键字代码形式
template assignVar(p_value: untyped,p_var: untyped) =
  #macros.newVarStmt(abc,p_value)
  p_var = p_value
#   echo ppp
# nnkVarSection(nnkIdentDefs(nnkIdent("a"), nnkIntLit(3)))
# template `assignString`(p_value:string,p_var:string):untyped = 
#   p_var = p_value
# macro a(p_var: untyped): untyped = 
#   # var varDefNode = newNimNode(nnkVarSection).add(newIdentDefs(ident("a"),newStrLitNode("Hello")))
#   # echo varDefNode
#   # var myLit = newLit()
#   discard
proc cheers(): string = 
  return "Cheers!"

var a:string = ""
var cheer = cheers()
assignVar(cheer,a)
#[
proc test1() =
  var my_var = ""
  assignVar("新值,Simple语言的内部赋值函数实现", my_var)
  echo my_var

  assignVar("测试值2", my_var)
  echo my_var

  # 实现了 fx() -> var 的语言格式设计
  assignVar(cheers(), my_var)
  echo my_var
]#
# var ppp:string
# assignVar("测试值2")
# var varDefNode{.compileTime.} = newNimNode(nnkVarSection).add(newIdentDefs(ident("a"),newStrLitNode("Hello")))
# {.compileTime.}
# a = "AA"