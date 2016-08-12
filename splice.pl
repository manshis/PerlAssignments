#!C/strawberry/perl/bin/perl


@alpha = (a..z);

splice(@alpha, 5 ,5, a..e);

print @alpha;