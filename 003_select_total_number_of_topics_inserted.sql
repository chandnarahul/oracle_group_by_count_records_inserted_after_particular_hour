-- use group by with extract clause to extracr HOUR from whenreceived column
select topic,count(*) from MESSAGE_ARCHIVE 
WHERE 
trunc(WHENRECEIVED)=to_date('15-07-2020','DD-MM-YYYY')
AND EXTRACT (HOUR FROM CAST (WHENRECEIVED AS TIMESTAMP)) > 19
GROUP BY topic 
ORDER BY count(*) DESC
;
