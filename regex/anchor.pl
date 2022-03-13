#!/usr/bin/env perl
use strict;
use warnings;

# https://gihyo.jp/dev/serial/01/perl-hackers-hub/005802

# 「^」文字列の先頭にマッチ
my $text = "beginnig\n of\n text";
if ($text =~ /^beginnig/) { print "match\n"; } else { print "not matched\n"; }

#「$」文字列の末尾にマッチ
my $text2 = "this\n line\n is\n ending";
if ($text2 =~ /ending$/) { print "match\n"; } else { print "not matched\n"; }

#「$」文字列の末尾の改行直前にもマッチ
my $text3 = "this\n line\n is\n ending\n";
if ($text3 =~ /ending$/) { print "match\n"; } else { print "not matched\n"; }

# 「\A」 文字列の先頭にマッチ (^と同じ)
my $text4 = "beginnig\n of\n text"; 
if ($text4 =~ /\Abeginnig/) { print "match\n"; } else { print "not matched\n"; }

# \Z 文字列の末尾にマッチ ($と同じ)
my $text5 = "this\n line\n is\n ending"; # ending\n にもマッチ
if ($text5 =~ /ending\Z/) { print "match\n"; } else { print "not matched\n"; }

# \z 文字列の厳密な末尾にマッチ (末尾に改行がある場合はマッチしない)
my $text6 = "this\n line\n is\n ending";
if ($text6 =~ /ending\z/) { print "match\n"; } else { print "not matched\n"; }

# \z 末尾に改行がある場合はマッチしない
my $text7 = "this\n line\n is\n ending\n";
if ($text7 =~ /ending\z/) { print "match\n"; } else { print "not matched\n"; }
