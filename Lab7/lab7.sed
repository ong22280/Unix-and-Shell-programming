#---1.1---
20,30s/day/night/g

#---1.2---
s/kasetsart/Kasetsart/g

#---1.3---
s/\/usr\/local\/bin/\/common\/bin/g

#---1.4---
s/\([0-9]\{1\}\)\([0-9]\{4\}\)\([0-9]\{5\}\)\([0-9]\{2\}\)\([0-9]\{1\}\)/\1-\2-\3-\4-\5/

#---1.5---
#grep -in 'FWORD'

#---1.6---
s/FWORD/****/ig

#---1.7---
s/\(\<[^ ]*\>\) *\1/\1/g

#---1.8---
#sed 's/^ *//' test.sed | sed 's/ *$//'

#---2---
#sed -n '/pattern/p' file1

#---3---
#sed 's/^ *//' test.sed | sed 's/ *$//'

#---4---
#sed '/UNIX/{s/^.*$/*****&*****/}' file4

#---5---
#sed 's/\> \{1,\}/ /g' file5 | sed 's/ *$//'

#---6---
/\/\*.*\*\// b case1
:case1
s/\/\*.*\*\///

#---7---
s/\(.*\/\)\(.*\)/\1  \2/

#---8---
/^$/{
	$!N
	/^\n$/D
}

#---9---
/.*\/\*/ {
	b append
	/\/\*,\*\// b del
	:append
	N
	:del
	N
	s/\/\*.*\*\/// 
}

#---10---
/^  [^h]/d
/^#/d
/^f/d
/^$/d
/^lease/{
    h
    d
}
/^  h/{
    G
    s/^  hardware ethernet \(.*\);\nlease \(.*\) {$/\2\n\1/
}
/^}/{
    g
    d
}

