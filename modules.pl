#!/usr/bin/perl
 
package Foo;
print "Begin 和 Block 实例\n";
 
BEGIN { 
    print "这是 BEGIN 语句块\n" 
}
 
END { 
    print "这是 END 语句块\n" 
}
 
