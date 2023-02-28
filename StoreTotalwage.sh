isPartTime=1;
isFullTime=2;
workingHours=20;
totalWorkinHours=0
totalSalary=0;
day=1
while [[ $day -le 20 && $totalworkinghours -le 100 ]]
do
empCheck=$((RANDOM%3));
case $empCheck in
$isFullTime)
empHrs=8
;;
$isPartTime)
empHrs=4
;;
*)
empHrs=0
;;
esac
totalWorkingHours=$(($totalWorkingHours+$empHrs))
if [[ $totalWorkingHours -ge 100 ]]
then
totalWorkingHours=$(($totalWorkingHours - $empHrs))
break;
fi
salary=$(($workingHours*$empHrs))
totalSalary=$(($totalSalary+$salary))
echo "Day $day Daily wage is $salary and along with total wage is $totalSalary"
((day++))
done
echo "Finally emp has earns $totalSalary in a $totalWorkingHours"
