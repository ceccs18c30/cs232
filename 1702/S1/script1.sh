pdftotext -layout S1.pdf S1.txt


grep --no-group-separator -A3 "CHN18CS" S1.txt > S1_cs.txt


tr  '\n' ' ' < S1_cs.txt > result1.txt
sed 's/\t//g' result1.txt > results.txt
awk '{$1=$1;print}' results.txt > result1.txt
sed 's/CHN/\n\nCHN/g' result1.txt > results.txt
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
	cgpa = sum/9
	if (flag == 0) {	
	 	printf("%s sgpa: %0.2f\n\n",$1,cgpa)
	}
	if (flag == 1) {
		printf("%s failed subjects : %d\n\n",$1,fails)
	}
}' temp.txt > sgpa.txt

sed 's/sgpa: 0.00/\n/g' sgpa.txt > sgpa1.txt

join student.txt sgpa1.txt > sgpa_1.txt
