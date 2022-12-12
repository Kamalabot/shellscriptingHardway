!#/usr/bin/env bash 

#The function calculate the average
#
avecalc()
{
  echo Provide the numbers you want to average 
  if [ $# = 0 ];
  then
    echo Give some numbers when you execute the shell script
  else
    total=0
    for p in $* 
      do
        total=`expr $total + $p`
      done
  fi
  
  echo total is `expr $total / $#`
}

avecalc $*
