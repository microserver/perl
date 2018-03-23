#!/usr/bin/perl

use feature 'state';

use 5.010;
#use strict;
use warnings;

$a = 10;
print "a = $a\n";
print 'a = $a\n';

my $b = 10;
print "$b";




use XML::DOM;
use Cwd;
use File::Path;

 
my @names = ('google', 'runoob', 'taobao');
 
my @copy = @names;   # 复制数组
my $size = @names;   # 数组赋值给标量，返回数组元素个数
 
print "名字为 : @copy\n";
print "名字数为 : $size\n";

my @array = (1,2,3);
@array[50] = 4;
 
$size = @array;
$max_index = $#array;
 
print "数组大小:  $size\n";
print "最大索引: $max_index\n";
print "文件名 ". __FILE__ . "\n";
print "行号 " . __LINE__ ."\n";
print "包名 " . __PACKAGE__ ."\n";
 
# 无法解析
print "__FILE__ __LINE__ __PACKAGE__\n";


#!/usr/bin/perl
 
my $smile  = v9786;
my $foo    = v102.111.111;
my $martin = v77.97.114.116.105.110; 
 
print "smile = $smile\n";
print "foo = $foo\n";
print "martin = $martin\n";

my @array = qw/这是 一个 数组/;
print "array = @array[0]\n";


my @sites = qw/google taobao runoob/;
 
print "$sites[0]\n";
print "$sites[1]\n";
print "$sites[2]\n";
print "$sites[-1]\n";    # 负数，反向读取

my @var_10 = (1..10);
my @var_20 = (10..20);
my @var_abc = (a..z);
 
print "@var_10\n";   # 输出 1 到 10
print "@var_20\n";   # 输出 10 到 20
print "@var_abc\n";  # 输出 a 到 z


my @array2 = (1,2,3);
$array2[50] = 4;
 
my $size = @array2;
my $max_index = $#array2;
 
print "数组大小:  $size\n";
print "最大索引: $max_index\n";

#!/usr/bin/perl
 
# 创建一个简单是数组
@sites = ("google","runoob","taobao");
print "1. \@sites  = @sites\n";
 
# 在数组结尾添加一个元素
push(@sites, "baidu");
print "2. \@sites  = @sites\n";
 
# 在数组开头添加一个元素
unshift(@sites, "weibo");
print "3. \@sites  = @sites\n";
 
# 删除数组末尾的元素
pop(@sites);
print "4. \@sites  = @sites\n";
 
# 移除数组开头的元素
shift(@sites);
print "5. \@sites  = @sites\n";

@nums = (1..20);
print "替换前 - @nums\n";
 
splice(@nums, 5, 5, 21..25); 
print "替换后 - @nums\n";

# 定义字符串
$var_test = "runoob";
$var_string = "www-runoob-com";
$var_names = "google,taobao,runoob,weibo";
 
# 字符串转为数组
@test = split('', $var_test);
@string = split('-', $var_string);
@names  = split(',', $var_names);
 
print "$test[3]\n";  # 输出 o
print "$string[2]\n";  # 输出 com
print "$names[3]\n";   # 输出 weibo

# 定义字符串
$var_string = "www-runoob-com";
$var_names = "google,taobao,runoob,weibo";
 
# 字符串转为数组
@string = split('-', $var_string);
@names  = split(',', $var_names);
 
 
# 数组转为字符串
$string1 = join( '-', @string );
$string2 = join( ',', @names );
 
print "$string1\n";
print "$string2\n";

 
# 定义数组
@sites = qw(google taobao runoob facebook);
print "排序前: @sites\n";
 
# 对数组进行排序
@sites = sort(@sites);
print "排序hou: @sites\n";

# 定义数组
@sites = qw(google taobao runoob facebook);
print "网站: @sites\n";
 
# 设置数组的第一个索引为 1
#$[ = 0;
 
print "\@sites[1]: $sites[1]\n";
print "\@sites[2]: $sites[2]\n";

@numbers = (1,3,(4,5,6));
 
print "numbers = @numbers\n";


@odd = (1,3,5);
@even = (2, 4, 6);
 
@numbers = (@odd, @even);
 
print "numbers = @numbers\n";

$var = (5,4,3,2,1)[4];
 
print "var 的值为 = $var\n";

@list = (5,4,3,2,1)[1..3];
 
print "list 的值 = @list\n";

%data = ('google', 'google.com', 'runoob', 'runoob.com', 'taobao', 'taobao.com');
 
print "\$data{'google'} = $data{'google'}\n";
print "\$data{'runoob'} = $data{'runoob'}\n";
print "\$data{'taobao'} = $data{'taobao'}\n";


%data = (-google=>'google.com', -runoob=>'runoob.com', -taobao=>'taobao.com');


%data = (-taobao => 45, -google => 30, -runoob => 40);
 
@array = @data{-taobao, -runoob};
 
print "Array : @array\n";


%data = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');
 
@names = keys %data;
 
print "$names[0]\n";
print "$names[1]\n";
print "$names[2]\n";

%data = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');
 
@urls = values %data;
 
print "$urls[0]\n";
print "$urls[1]\n";
print "$urls[2]\n";


%data = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');
 
if( exists($data{'facebook'} ) ){
   print "facebook 的网址为 $data{'facebook'} \n";
}
else
{
   print "facebook 键不存在\n";
}


 
%data = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');
 
@keys = keys %data;
$size = @keys;
print "1 - 哈希大小: $size\n";
 
@values = values %data;
$size = @values;
print "2 - 哈希大小: $size\n";


%data = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');
@keys = keys %data;
$size = @keys;
print "1 - 哈希大小: $size\n";
 
# 添加元素
$data{'facebook'} = 'facebook.com';
@keys = keys %data;
$size = @keys;
print "2 - 哈希大小: $size\n";
 
# 删除哈希中的元素
delete $data{'taobao'};
@keys = keys %data;
$size = @keys;
print "3 - 哈希大小: $size\n";


$name = "菜鸟教程";
$favorite = 10;     # 喜欢数
 
$status = ($favorite > 60 )? "热门网站" : "不是热门网站";
 
print "$name - $status\n";

$a = 20;
# 使用 unless 语句检测布尔表达式
unless( $a < 20 ){
    # 布尔表达式为 false 时执行
    printf "a 大于等于 20\n";
}
print "a 的值为 : $a\n";
 
$a = "";
# 使用 unless 语句检测布尔表达式
unless ( $a ){
    # 布尔表达式为 false 时执行
    printf "条件 a 为 false\n";
}
print "a 的值为 : $a\n";


$a = 5;
 
# 执行 until 循环
until( $a > 10 ){
   printf "a 的值为 : $a\n";
   $a = $a + 1;
}


@list = (2, 12, 36, 42, 51);
 
# 执行foreach 循环
foreach $a (@list){
    print "a 的值为: $a\n";
}

$a = 0;
while($a < 3){
   print "a = $a\n";
}continue{
   $a = $a + 1;
}


@list = (1, 2, 3, 4, 5);
foreach $a (@list){
   print "a = $a\n";
}continue{
   last if $a == 4;
}



$a = 0;
while($a < 10){
   if( $a == 5 ){
      $a = $a + 1;
      redo;
   }
   print "a = $a\n";
}continue{
   $a = $a + 1;
}


$a = 10;
$b = 20;
 
print "\$a = $a , \$b = $b\n";
 
if( $a == $b ){
   print "$a == \$b 结果 true\n";
}else{
   print "\$a == \$b 结果 false\n";
}
 
if( $a != $b ){
   print "\$a != \$b 结果 true\n";
}else{
   print "\$a != \$b 结果 false\n";
}
 
$c = $a <=> $b;
print "\$a <=> \$b 返回 $c\n";
 
if( $a > $b ){
   print "\$a > \$b 结果 true\n";
}else{
   print "\$a > \$b 结果 false\n";
}
 
if( $a >= $b ){
   print "\$a >= \$b 结果 true\n";
}else{
   print "\$a >= \$b 结果 false\n";
}
 
if( $a < $b ){
   print "\$a < \$b 结果 true\n";
}else{
   print "\$a < \$b 结果 false\n";
}
 
if( $a <= $b ){
   print "\$a <= \$b 结果 true\n";
}else{
   print "\$a <= \$b 结果 false\n";
}


$a = 10;
 
$b = q{a = $a};
print "q{a = \$a} = $b\n";
 
$b = qq{a = $a};
print "qq{a = \$a} = $b\n";
 
# 使用 unix 的 date 命令执行
$t = qx{date};
print "qx{date} = $t\n";


 
$c = "-" x 3;
print "\"-\" x 3 = $c\n";

 
@months = qw( 一月 二月 三月 四月 五月 六月 七月 八月 九月 十月 十一月 十二月 );
@days = qw(星期天 星期一 星期二 星期三 星期四 星期五 星期六);
 
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
print "$mday $months[$mon] $days[$wday]\n";


$epoc = time();
 
print "从1970年1月1日起累计的秒数为：$epoc\n";


 
# 函数定义
sub Hello{
   print "Hello, World!\n";
}
 
# 函数调用
Hello();


 
# 定义求平均值函数
sub Average{
   # 获取所有传入的参数
   $n = scalar(@_);
   $sum = 0;
 
   foreach $item (@_){
      $sum += $item;
   }
   $average = $sum / $n;
   print '传入的参数为 : ',"@_\n";           # 打印整个数组
   print "第一个参数值为 : $_[0]\n";         # 打印第一个参数
   print "传入参数的平均值为 : $average\n";  # 打印平均值
}
 
# 调用函数
Average(10, 20, 30);


 
# 定义函数
sub PrintList{
   my @list = @_;
   print "列表为 : @list\n";
}
$a = 10;
@b = (1, 2, 3, 4);
 
# 列表参数
PrintList($a, @b);


# 方法定义
sub PrintHash{
   my (%hash) = @_;
 
   foreach my $key ( keys %hash ){
      my $value = $hash{$key};
      print "$key : $value\n";
   }
}
%hash = ('name' => 'runoob', 'age' => 3);
 
# 传递哈希
PrintHash(%hash);


# 全局变量
$string = "Hello, World!";
 
# 函数定义
sub PrintHello{
   # PrintHello 函数的私有变量
   my $string;
   $string = "Hello, Runoob!";
   print "函数内字符串：$string\n";
}
# 调用函数
PrintHello();
print "函数外字符串：$string\n";





# 全局变量
$string = "Hello, World!";
 
sub PrintRunoob{
   # PrintHello 函数私有变量
   local $string;
   $string = "Hello, Runoob!";
   # 子程序调用的子程序
   PrintMe();
   print "PrintRunoob 函数内字符串值：$string\n";
}
sub PrintMe{
   print "PrintMe 函数内字符串值：$string\n";
}
 
sub PrintHello{
   print "PrintHello 函数内字符串值：$string\n";
}
 
# 函数调用
PrintRunoob();
PrintHello();
print "函数外部字符串值：$string\n";


sub PrintCount{
   state $count = 0; # 初始化变量
 
   print "counter 值为：$count\n";
   $count++;
}
 
for (1..5){
   PrintCount();
}







$var = 10;
 
# $r 引用 $var 标量
$r = \$var;
 
# 输出本地存储的 $r 的变量值
print "$var 为 : ", $$r, "\n";
 
@var = (1, 2, 3);
# $r 引用  @var 数组
$r = \@var;
# 输出本地存储的 $r 的变量值
print "@var 为: ",  @$r, "\n";
 
%var = ('key1' => 10, 'key2' => 20);
# $r 引用  %var 数组
$r = \%var;
# 输出本地存储的 $r 的变量值
print "%var 为 : ", %$r, "\n";


$var = 10;
$r = \$var;
print "r 的引用类型 : ", ref($r), "\n";
 
@var = (1, 2, 3);
$r = \@var;
print "r 的引用类型 : ", ref($r), "\n";
 
%var = ('key1' => 10, 'key2' => 20);
$r = \%var;
print "r 的引用类型 : ", ref($r), "\n";


my $foo = 100;
$foo = \$foo;
 
print "Value of foo is : ", $$foo, "\n";

# 函数定义
sub PrintHash{
   my (%hash) = @_;
   
   foreach $item (%hash){
      print "元素 : $item\n";
   }
}
%hash = ('name' => 'runoob', 'age' => 3);
 
# 创建函数的引用
$cref = \&PrintHash;
 
# 使用引用调用函数
&$cref(%hash);


if (open(MYFILE, ">tmp")) {
$~ = "MYFORMAT";
write MYFILE; # 含文件变量的输出，此时会打印与变量同名的格式，即MYFILE。$~里指定的值被忽略。
 
format MYFILE = # 与文件变量同名 
=================================
      输入到文件中
=================================
.
close MYFILE;
}



open(DATA, "<file.txt") or die "file.txt 文件无法打开, $!";
 
while(<DATA>){
   print "$_";
}


open(DATA, ">file2.txt") or die "file.txt 文件无法打开, $!";

close(DATA);


# 只读方式打开文件
open(DATA1, "<file.txt");
 
# 打开新文件并写入
open(DATA2, ">file2.txt");
 
# 拷贝数据
while(<DATA1>)
{
   print DATA2 $_;
}
close( DATA1 );
close( DATA2 );



my $file = "file.txt";
my (@description, $size);
if (-e $file)
{
    push @description, '是一个二进制文件' if (-B _);
    push @description, '是一个socket(套接字)' if (-S _);
    push @description, '是一个文本文件' if (-T _);
    push @description, '是一个特殊块文件' if (-b _);
    push @description, '是一个特殊字符文件' if (-c _);
    push @description, '是一个目录' if (-d _);
    push @description, '文件存在' if (-x _);
    push @description, (($size = -s _)) ? "$size 字节" : '空';
    print "$file 信息：", join(', ',@description),"\n";
}


# 显示 /tmp 目录下的所有文件
$dir = "/tmp/*";
my @files = glob( $dir );
 
foreach (@files ){
   print $_ . "\n";
}

# 显示 /tmp 目录下所有以 .c 结尾的文件
$dir = "/tmp/*.c";
@files = glob( $dir );
 
foreach (@files ){
   print $_ . "\n";
}
 
# 显示所有隐藏文件
$dir = "/tmp/.*";
@files = glob( $dir );
foreach (@files ){
   print $_ . "\n";
}
 
# 显示 /tmp 和 /home 目录下的所有文件
$dir = "/tmp/* /home/*";
@files = glob( $dir );
 
foreach (@files ){
   print $_ . "\n";
}



print(exists($hash{value}) ? '存在' : '不存在',"\n");

foreach ('Google','Runoob','Taobao') {
    print $_;
    print "\n";
}


$bar = "I am runoob site. welcome to runoob site.";
if ($bar =~ /run/){
   print "第一次匹配\n";
}else{
   print "第一次不匹配\n";
}
 
$bar = "run";
if ($bar =~ /run/){
   print "第二次匹配\n";
}else{
   print "第二次不匹配\n";
}


$string = "welcome to runoob site.";
$string =~ m/run/;
print "匹配前的字符串: $`\n";
print "匹配的字符串: $&\n";
print "匹配后的字符串: $'\n";

$string = "welcome to google site.";
$string =~ s/google/runoob/;
 
print "$string\n";


$string = 'welcome to runoob site.';
$string =~ tr/a-z/A-z/;

print "$string\n";



$string = 'runoob';
$string =~ tr/a-z/a-z/s;
 
print "$string\n";

$string =~ tr/\d/ /c;     # 把所有非数字字符替换为空格
$string =~ tr/\t //d;     # 删除tab和空格
$string =~ tr/0-9/ /cs    # 把数字间的其它字符替换为一个空格。


 

