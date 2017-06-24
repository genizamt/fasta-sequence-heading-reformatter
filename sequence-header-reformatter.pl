use strict;
use warnings;
# LINE 16 CONTAINS NEW HEADER NAME WITH FOLLOWED BY "_" TO SPACE COUNTER
# Usage: perl headformat.pl <assembly> > <newnamefile> 
# >1_2_8_Confidence_1.000_Length_1023._corvallis
# EXAMPLE OUTPUT
# >NEW_HEADER_00001

my $counter = 1;

while (<>) {
    chomp($_);
    if ($_ =~ /^\>/) {
	$_ =~ s/>//;
	my @array = split(/\|/,$_);
	print ">INSERT_HEADER_NAME_HERE_";
	printf ("%0*d", 5,$counter);
	#print ".$array[1]";
	print "\n";
	$counter++;
	}
    else {
	print "$_\n";
    }
}
