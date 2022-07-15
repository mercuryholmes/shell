#!/usr/bin/env perl
use strict;
use warnings;
use DateTime;

my $dt1 = DateTime->new(year => 2022, month => 5, day => 5);
my $dt2 = DateTime->today;

print "$dt1\n";
print "$dt2\n";

# 何ヶ月後
my $months = $dt1 - $dt2;
print $months->in_units('months'), "\n";

# 何日後
my $days = $dt1->delta_days($dt2);
print $days->in_units('days'), "\n";

# 何週間後
my $days = $dt1->delta_days($dt2);
print $days->in_units('weeks'), "\n";
