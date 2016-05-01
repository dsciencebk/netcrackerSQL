#Выведите сегодняшнюю дату в следующих четырех столбцах (все столбцы - строкового типа):
#Год (4 цифры)
#Полное название месяца заглавными буквами
#День месяца (число)
#День недели словом заглавными буквами
#Пример вывода:
#2011	OCTOBER	04	TUESDAY


SELECT TO_CHAR(SYSDATE,'YYYY') a,TO_CHAR(SYSDATE,'MONTH') b,TO_CHAR(SYSDATE,'DD') c,TO_CHAR(SYSDATE,'DAY') d
FROM dual