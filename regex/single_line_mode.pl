#!/usr/bin/env perl
use strict;
use warnings;

# https://gihyo.jp/dev/serial/01/perl-hackers-hub/005802
# 「/s」単一行モードという名前だが、「.」を改行にマッチさせるだけ
# 複数行モードや「^」や「$」とは無関係

# 通常「.」は改行にマッチしない
my $text = "text has\nbreak";
if ($text =~ /has.*break/) { print "match\n"; } else { print "not matched\n"; }

# /s 修飾子で「.」が改行にマッチする
my $text2 = "text has\nbreak";
if ($text2 =~ /has.*break/s) { print "match\n"; } else { print "not matched\n"; }
