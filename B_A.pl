#############################################################################
## Name:        Problem B. Dancing With the Googlers
## URL:  	http://code.google.com/codejam/contest/1460488/dashboard#s=p1
#############################################################################


#!/usr/bin/perl -w

##Read data from source file. And give needed variables value.

open(Input, "B-large-practice.in") or die "No such file!"; 
@array=<Input>;
chomp($array[0]);
$T = $array[0];

foreach(@array[1..$#array]) {
	chomp($_);
	@case = split (/ /, $_);
	($N,$S,$p) = (@case[0..2]);
	@t = @case[3..$#case];
	$count = 0; $other = 0;
	
	if ($p==0){
		$result= @t;
	}elsif($p==1){
		foreach(@t){
			if ($_>0){
				$count++
			}
		}
		$result = $count;
	}else{
		for(@t){
			if ($_>=(3*$p-2)){
				$count++;
			}elsif ($_ ==(3*$p-3) or $_ ==(3*$p-4)){
				$other++;
			}else{
			}
			if ($other>=$S){
				$result = ($S+$count);
			} else {
				$result = ($other+$count);
			}
		}
	}
	
	push(@wanted,$result);
}
close(Input);


open(Output,">output.txt");
$i=1;
foreach(@wanted){;print Output "Case #$i: $_\n";$i++;}
print "Success!\n";
close(Output);
