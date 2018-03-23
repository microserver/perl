#!/usr/bin/perl
 

use Foo;
 
Foo::bar( "a" );
Foo::blat( "b" );



@files = `ls -l`;

foreach $file (@files){
   print $file;
}


$PATH = "我是 Perl 的变量";
 
system('echo $PATH');  # $PATH 作为 shell 环境变量
system("echo $PATH");  # $PATH 作为 Perl 的变量
system("echo \$PATH"); # 转义 $
 
1;



if(!defined($pid = fork())) {
   # fork 发生错误返回 undef
   die "无法创建子进程: $!";
}elsif ($pid == 0) {
   print "通过子进程输出\n";
   exec("date") || die "无法输出日期: $!";
  
} else {
   # 在父进程中
   print "通过父进程输出\n";
   $ret = waitpid($pid, 0);
   print "完成的进程ID: $ret\n";
 
}
 
1;


print "Hello, World\n";
 
=head1 Hello, World 实例
这是一个 Perl 的简单实例。
=cut
 
print "Hello, Runoob\n";


