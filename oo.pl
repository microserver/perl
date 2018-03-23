#!/usr/bin/perl
 
# 下面是简单的类实现
package MyClass;
 
sub new
{
   print "MyClass::new called\n";
   my $type = shift;            # 包名
   my $self = {};               # 引用空哈希
   return bless $self, $type;   
}
 
sub DESTROY
{
   print "MyClass::DESTROY called\n";
}
 
sub MyMethod
{
   print "MyClass::MyMethod called!\n";
}
 
 
# 继承实现
package MySubClass;
 
@ISA = qw( MyClass );
 
sub new
{
   print "MySubClass::new called\n";
   my $type = shift;            # 包名
   my $self = MyClass->new;     # 引用空哈希
   return bless $self, $type;  
}
 
sub DESTROY
{
   print "MySubClass::DESTROY called\n";
}
 
sub MyMethod
{
   my $self = shift;
   $self->SUPER::MyMethod();
   print "   MySubClass::MyMethod called!\n";
}
 
# 调用以上类的主程序
package main;
 
print "调用 MyClass 方法\n";
 
$myObject = MyClass->new();
$myObject->MyMethod();
 
print "调用 MySubClass 方法\n";
 
$myObject2 = MySubClass->new();
$myObject2->MyMethod();
 
print "创建一个作用域对象\n";
{
  my $myObject2 = MyClass->new();
}
# 自动调用析构函数
 
print "创建对象\n";
$myObject3 = MyClass->new();
undef $myObject3;
 
print "脚本执行结束...\n";
# 自动执行析构函数
