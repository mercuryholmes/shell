#!/usr/bin/env perl
use strict;
use warnings;

# https://www.javadrive.jp/regex-basic/writing/index2.html

# 肯定先読み
my $text = "by Jeffrey Friedl";
if ($text =~ /(?=Jeffrey)Jeff/) { print "match\n"; } else { print "not match\n"; }

# 下記と同じ
if ($text =~ /Jeff(?=rey)/) {print "match\n";} else { print "not match\n"; }

# 肯定先読みと肯定後読みを使ったリプレイス
my $text2 = "see Jeffs book";
$text2 =~ s/(?<=\bJeff)(?=s\b)/`/g;
print $text2,"\n";

# 先頭に余分な,がついてしまうので後読み(?<=\d)で条件を絞る
my $pop = "298444215";
$pop =~ s/(?<=\d)(?=(\d\d\d)+$)/,/g;
print "The US population is $pop\n";

my $text3 = "The population of 298444215 is growing";
# これだと文末まで数字を要求するためマッチしない
$text3 =~ s/(?<=\d)(?=(\d\d\d)+$)/,/g;
print $text3, "\n";

# 否定先読みで数字以外を指定すれば数字を切り取ることができる
$text3 =~ s/(?<=\d)(?=(\d\d\d)+(?!\d))/,/g;
print $text3, "\n";
