#unset
name[0]=sam
name[1]="1"
name[2]='3'

echo "${name[@]}"
IFS=":"
echo "${name[@]}"
echo "${name[*]}"
unset name
echo "${name[@]}"
declare -a names #declare a array
names=(same [2]=jon jake)
echo "${#names[*]}"
echo "${names[*]}"
echo "${names[2]}"

echo "Printing values in names"
for i in "${names[@]}"
do
	echo $i
done

#print length in index
name=(sam gowtham sais naveen buddy)
echo "printing second index having value gowtham: ${#name[1]}"
