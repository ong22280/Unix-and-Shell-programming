#---1---
awk 'NR<=20{print}'

#---2---
awk '{print NR NF}' ~vim_ex

#---3---
awk '/UNIX/{print}'

#---4---
awk '{print $1,$3}' data1.txt

#---5.1---
awk '$4==0{print}' data1.txt

#---5.2---
awk '$3>15.00{print}' data1.txt

#---5.3---
sort -nr -k4 data1.txt | awk 'NR==1{print}'

#---5.4---
awk '$4>40 && NR!=1 {print $1,$2,$3*$4}' data1.txt

#---6---
BEGIN {
	OFS="\t"
	print "Weekly Report"
	print "\t""FirstN","LastN","Rate","Hours","totalMoney"
	total_all = 0
}

{
	if (NR!=1) {
		total = 0
		i = 0
		while (i < 40) {
			total+=$3
			i++
		}
		while (i < $4) {
			total+=$3
			i++
		}
		print "\t"$1,$2,$3,$4,total
		total_all+=total
	}
}

END {
	print "total money: "total_all
}

#---7---
BEGIN {
	OFS="\t"
	srand()
	print "ID","Quiz1","Quiz2","Quiz3","Quiz4","Quiz5"
	Rand[i]
	Q[j]
	for (i = 1; i <= 40; i++) {
		do
		{
			r = rand()*10000
		} while (r in Rand || r > 4999)
		Rand[i] = r	
		for (j = 1; j <= 5; j++)
		{
			do
			{
				q = rand()*100
			} while (q > 100)
			Q[j] = q
		}
		printf("%04d\t%3d\t%3d\t%3d\t%3d\t%3d\n",Rand[i],Q[1],Q[2],Q[3],Q[4],Q[5])
	}
}

#---8---
BEGIN {
	OFS="\t"
	print "-----------------------------------"
	print " ID","Quiz1","Quiz2","Quiz3","Quiz4","Quiz5"
	print "-----------------------------------"
	for (i=1; i<=5; i++) {
		max[i] = 0
		min[i] = 999
	}
	avg[q]
	sum[q]
	count = 0
}
{
	if (NR>1) {
		print $0
		for (j=0; j<=5; j++) {
			f = j+1
			if ($f > max[j])
				max[j] = $f
			if ($f < min[j])
				min[j] = $f
			sum[j]+=$f
		}
		count++
	}
}
END {
	for (j=1; j<=5; j++)
		avg[j] = sum[j]/count
	print "Max",max[1],max[2],max[3],max[4],max[5]
	print "Min",min[1],min[2],min[3],min[4],min[5]
	print "-----------------------------------"
	print "Avg",avg[1],avg[2],avg[3],avg[4],avg[5]
	print "-----------------------------------"
}

#---9---
BEGIN {
	totalAll
	numType
	uType
	uSize
}
{
	if (NR>1) {
		split($9,A,".")
		if (A[2]=="") {
			uSize += $5
			uType++
		}
		else {
			i=1
			while (A[i]!="")
				i++
			name = A[i-1]
			Type[name] = name
			Size[name] += $5
			Total[name]++
		}
		totalAll++
	}
}
END {
	print "Number of files :", totalAll
	for (i in Type)
		printf("Number of file type - %-6s : %d \t total size: %d bytes\n", Type[i], Total[i], Size[i])
	printf("Number of unknown file type  : %d \t total size: %d bytes\n", uType, uSize)
}

