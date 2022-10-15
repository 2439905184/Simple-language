import std.stdio;

void change_value(string *var1, string var2)
{
    *var1 = var2;
}

void main()
{
    string old = "old";
    // old = "new";
    change_value(&old,"new");
    writeln(old);
}   