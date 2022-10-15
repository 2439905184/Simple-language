class Test():
    old = "old"
    pass

# 从lua语言中赋值过来的注释, 不知道对不对
# 在python中除了 Object是引用传递 外，其余基本都是值传递。所以当你直接打印一个Object的时候，看到的是一个指针类型的数据
def change_value(var1, var2):
    var1.old = var2
    pass

TestObj = Test()
change_value(TestObj,"new")
print(TestObj.old)