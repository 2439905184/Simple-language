public class SimpleAstBuilder 
{
    // 创建单行语句
    public void create_sentence(String code){}
    public SimpleNode create_var(String var_name, Object var_value){}
    public SimpleNode create_call(String func_name){}
    public SimpleNode create_call(String func_name, Object[] params, SimpleNode return_type){}
    // 赋值到某个变量
    public SimpleNode assign_to(SimpleNode var_name, SimpleNode value){}
    // 生成完整的AST抽象语法树
    public Object[] build(){}
}
