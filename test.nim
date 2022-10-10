
const 赋值符号1 = "="
const 赋值符号2 = "->"

# 前向声明
#SimplePrint(a):discard

# Simple语言的底层print函数
proc SimplePrint(SimpleVar:auto) = 
  echo SimpleVar

var test_code = readFile("test.txt")
# echo test_code
var str_start_index = 0
var str_end_index = 0
var VarName = ""
var VarValue = ""
var FunCall = ""
var FunCallParam = ""
# 引号次数
var str_times = 0


for index,ch in test_code:
  if ch == '"':
    str_times += 1
    if str_times == 1:
      str_start_index = index + 1
    elif str_times == 2:
      str_end_index = index - 1 
      # 一个字符串已结束 需要清除引号记录次数
      str_times = 0
  elif ch == '-':
    var ch_next = test_code[index+1]
    if ch_next == '>':
      VarName = $test_code[index+2]
  elif ch == 'p':
    FunCall = $test_code[index..index + 4 ]
    FunCallParam = $test_code[index + 4 + 1 + 1]

VarValue = test_code[str_start_index..str_end_index]
# echo FunCall
# echo FunCallParam

if FunCall == "print":
  if FunCallParam == VarName:
    SimplePrint(VarValue)



# echo Var 
# echo str_times
# echo str_start_index, " ",str_end_index
# echo tt[str_start_index..str_end_index]
# echo len(tt[str_start_index..str_end_index])