#!/bin/bash

# 인수가 3개가 아닐 경우 종료
if [ $# -ne 3 ]; then
    echo "입력값 오류"
    exit 1
fi

month=$1 
date=$2
year=$3

# 월 대문자로 변환, 형태 변환
case $month
in
  jan|january|1) 
    md_month="Jan";;
    feb|february|2) md_month="Feb" ;;
    mar|march|3) md_month="Mar" ;;
    apr|april|4) md_month="Apr" ;;
    may|5) md_month="May" ;;
    jun|june|6) md_month="Jun" ;;
    jul|july|7) md_month="Jul" ;;
    aug|august|8) md_month="Aug" ;;
    sep|september|9) md_month="Sep" ;;
    oct|october|10) md_month="Oct" ;;
    nov|november|11) md_month="Nov" ;;
    dec|december|12) md_month="Dec" ;;
    *) echo "월이 제대로 입력되지 않았습니다. ${month}은 유효하지 않습니다."; exit 1 ;;
    esac


#윤년 판별
if(( year % 4 != 0 ))
then
  leap_year=0
elif(( year % 400 == 0 ))
then
  leap_year=1
elif(( year % 100 == 0 ))
then 
  leap_year=0
else
  leap_year=1
fi

#각 달의 일(date) 수 정하기. 윤년일 경우, 2월은 29일까지 존재
case $md_month in
    Jan|Mar|May|Jul|Aug|Oct|Dec) max_date=31 ;;
    Apr|Jun|Sep|Nov) max_date=30 ;;
    Feb)
        if (( leap_year == 1 )); then
            max_date=29
        else
            max_date=28
        fi
        ;;
esac

#날짜 오류 판별
if (( $date <= 0 ))
then
    echo "일이 제대로 입력되지 않았습니다. ${date}는 유효하지 않습니다."
    exit 1
elif [ "$md_month" == "Feb" ] && [ $leap_year -eq 1 ] && [ $date -gt 29 ]
then
    echo "윤년이기 때문에 date는 29일보다 큰 날짜는 존재하지 않습니다. ${date}는 유효하지 않습니다."
    exit 1
elif [ "$month" == "Feb" ] && [ $leap_year -eq 0 ] && [ $date -gt 28 ]
then
    echo "윤년이 아니기 때문에 28일보다 큰 날짜는 존재하지 않습니다. ${date}는 유효하지 않습니다."
    exit 1
elif (( $date > $max_date ))
then
    echo "${month}에는 ${max_date}일보다 큰 날짜는 존재하지 않습니다. ${date}는 유효하지 않습니다."
    exit 1
fi


#출력
echo $md_month $date $year
