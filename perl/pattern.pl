#!/usr/bin/env perl ## Copyright(C) 20XX by Yoshiki

use strict;
use warnings;

$_ = "fredman is fred test defined fred";

if (/fred/) {
  print "Matched: $`<$&>$'\n";
} else {
  print "No match: $_\n";
}
