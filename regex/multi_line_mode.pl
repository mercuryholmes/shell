#!/usr/bin/env perl
use strict;
use warnings;

# https://gihyo.jp/dev/serial/01/perl-hackers-hub/005802
# 複数行モードは^と$のマッチ方法を変える。
# 「/m」を指定すると、対象文字列に含まれている改行文字の直後と直前にもそれぞれマッチする
# 複数行モードでは「\A」と「\Z」は影響を受けない

my $text = "text has\nmulti\nline";

#　「^」通常、文字列の先頭にしかマッチしない
if ($text =~ /^multi/) { print "match\n"; } else { print "not matched\n"; }
# 「/m」指定をすると改行直後にマッチするようになる
if ($text =~ /^multi/m) { print "match\n"; } else { print "not matched\n"; }

# 「$」通常、文字列の末尾にしかマッチしない
if ($text =~ /multi$/) { print "match\n"; } else { print "not matched\n"; }
# 「/m」指定をすると改行直前にマッチするようになる
if ($text =~ /multi$/m) { print "match\n"; } else { print "not matched\n"; }

# 複数行モードでは「\A」は影響を受けず、文字列の先頭にのみマッチ
if ($text =~ /\Amulti/m) { print "match\n"; } else { print "not matched\n"; }

# 複数行モードでは「\Z」は影響を受けず、文字列の末尾にのみマッチ
if ($text =~ /multi\Z/m) { print "match\n"; } else { print "not matched\n"; }
