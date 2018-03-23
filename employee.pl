#!/usr/bin/perl
 
package Employee;
use Person;
use strict;
our @ISA = qw(Person);    # 从 Person 继承
 
# 重写构造函数
sub new {
    my ($class) = @_;
 
    # 调用父类的构造函数
    my $self = $class->SUPER::new( $_[1], $_[2], $_[3] );
    # 添加更多属性
    $self->{_id}   = undef;
    $self->{_title} = undef;
    bless $self, $class;
    return $self;
}
 
# 重写方法
sub getFirstName {
    my( $self ) = @_;
    # 这是子类函数
    print "这是子类函数\n";
    return $self->{_firstName};
}
 
# 添加方法
sub setLastName{
    my ( $self, $lastName ) = @_;
    $self->{_lastName} = $lastName if defined($lastName);
    return $self->{_lastName};
}
 
sub getLastName {
    my( $self ) = @_;
    return $self->{_lastName};
}
 
1;
