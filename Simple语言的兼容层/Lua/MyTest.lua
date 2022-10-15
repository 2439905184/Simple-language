local test = { old="old" }
-- 在lua中除了 table是引用传递 外，其余基本都是值传递。所以当你直接打印一个table的时候，看到的是一个指针类型的数据
function change_value(var1 ,var2) 
    var1.old = var2
end

change_value(test,"new")

print(test.old)