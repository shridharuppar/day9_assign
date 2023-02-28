#!/bi/bash -x

isPartTime=1;
isFullTIme=2;
totalSalary=0;
empRatePerHr=20;
numWorkingDays=20;
for (( day=1; day<=$numWorkingDays; day++ ))
do
empCheck=$((RANDOM%3));
case $empCheck in
$isFulltime)
empHrs=8
;;
$isPartTime)
empHrs=4
;;
*)
empHrs=0
;;
esac
salaryPerDay=$(($empHrs*$empRatePerHr));
totalSalaryOfMonth=$(($numWorkingDays*$salaryPerDay));
done
echo "Employee earned $totalSalaryOfMonth $ this month"
echo "Employee earned $salaryPerDay $ per Day"
