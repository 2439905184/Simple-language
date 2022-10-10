import std/macros

proc fx(): string =
  return "hello"

template assignString(p_var,p_value: NimNode): string = 
  p_var = p_value

template assignVar(p_var: NimNode, p_value: untyped) =
  #macros.newVarStmt(abc,p_value)
  p_var = p_value

proc echoVar(p_var: NimNode) = 
  discard

# 变量名 变量值
macro test() = 
  var myFxFunc: NimNode = newNimNode(nnkCall).add(ident("fx"),newEmptyNode())
  var myFxVar: NimNode = newNimNode(nnkVarSection).add((newIdentDefs(ident("a"), newEmptyNode(), newStrLitNode("Hello"))))
  var zimianliang = myFxVar.toStrLit()
  # newNimNode(nnkCall).add(ident("echo"), newStrLitNode(zimianliang))
  newNimNode(nnkCall).add(ident("echo"), zimianliang)
  # echoVar(myFxVar)

  # assignString(myFxVar,myFxFunc)

proc executeCode*(p_code: string) =
  # 结果变量
  var FuncCall: string
  # 变量名
  var Var:string
  # var myNimNodeCall: NimNode
  # for ch in p_code:
  #   echo ch
  test()
  # assignVar(Value)
  # echo FuncCall

proc executeFile*(p_file: string) = 
  var ffx:string
  var file:File = open(p_file)
  #file.readBuffer()
  file.close()
  discard
