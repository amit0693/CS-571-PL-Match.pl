use strict;
use warnings;
my $filename = 'input.txt';
open(FH, '<', $filename) or die $!;
while(<FH>){
    chomp $_;
    print "$_ contains hi \n" if( $_ =~ /hi/);
    print "$_ contains two or more 'l' Character \n" if( $_ =~ /([l][a-z]*){2,3}/);
    print "$_ begins with h as the and ends with t \n" if($_ =~ /([a-z]*)(h)([a-z]*(t$))/);
    print "$_ contains only one vowel letters \n" if ($_ =~ /^[^aeiou]*[aeiou][^aeiou]*$/i);
      }
close(FH);
