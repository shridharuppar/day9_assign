#!\bin\bash -x
isPresent=1;
randomCheck=$((RANDOM%2));
if [ $isPresent -eq $randomCheck ];
then
empRateHour=20;
empHours=8;
salary=$(($empHours * $empRateHour));
else
salary=0;
fi
echo "Employee earned $salary $today";
