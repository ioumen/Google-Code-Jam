#############################################################################
## Name:        Problem A. Speaking in Tongues
## URL:    http://code.google.com/codejam/contest/1460488/dashboard#s=p0
#############################################################################


#!/usr/bin/perl -w

##Read data from source file. 

open(Input, "A-small-practice.in") or die "No such file!"; 
@array=<Input>;

foreach(@array[1..$#array]) {
	tr/abcdefghijklmnopqrstuvwxyz/yhesocvxduiglbkrztnwjpfmaq/;	
	push (@wanted,$_);
}
close(Input);

##Write results into a new file

open(Output,">output.txt");
$i=1;
foreach(@wanted){;print Output "Case #$i: $_";$i++;}
print "Success!\n";
close(Output);
