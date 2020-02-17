pdftotext -layout S2.pdf S2.txt


grep --no-group-separator -A3 "CHN18CS" S2.txt > S2_cs.txt


tr  '\n' ' ' < S2_cs.txt > result2.txt
sed 's/\t//g' result2.txt > results.txt
awk '{$1=$1;print}' results.txt > result1.txt
sed 's/CHN/\n\nCHN/g' result2.txt > results.txt
tr  ',' ' ' < results.txt > result.txt


sed -i 's/(O)/ 10/g' result.txt
sed -i 's/(A+)/ 9/g' result.txt
sed -i 's/(A)/ 8.5/g' result.txt
sed -i 's/(B+)/ 8/g' result.txt
sed -i 's/(B)/ 7/g' result.txt
sed -i 's/(C)/ 6/g' result.txt
sed -i 's/(P)/ 5/g' result.txt
sed -i 's/(F)/ 0/g' result.txt
sed -i 's/(FE)/ 0/g' result.txt
sed -i 's/(I)/ 0/g' result.txt
sed -i 's/(Absent)/ 0/g' result.txt


awk  '{  
	print $1,$3,$5,$7,$9,$11,$13,$15,$17,$19
 }' result.txt > temp.txt 


awk '{
	sum = 0
	flag = 0
	fails = 0
	for(var =2; var<=NF; var++)
	{	
		if($var == 0) 
		{
			flag = 1
			fails = fails + 1
		}
		sum += $var
	}
	sgpa = sum/9
	if (flag == 0) {	
	 	printf("%s sgpa: %0.2f\n\n",$1,sgpa)
	}
	if (flag == 1) {
		printf("%s failed subjects : %d\n\n",$1,fails)
	}
}' temp.txt > sgpa.txt

sed 's/sgpa: 0.00/\n/g' sgpa.txt > sgpa2.txt

join student.txt sgpa2.txt > sgpa_2.txt
