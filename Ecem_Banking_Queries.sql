--7 B
select MAX(purpose), MAX(count(purpose)) from loans
where month = 4
group by purpose 
order by count(purpose) ;

--11 B 
SELECT first, count(client_id) FROM clients
where SEX = 'Female' AND AGE IN(50,51)
group by first
having count(client_id) > 1;

--40 B
SELECT  YEAR, COUNT(ACCOUNT_ID) FROM ACCOUNTS
GROUP BY YEAR
ORDER BY YEAR;

--41 B
SELECT TYPE, COUNT(ID) FROM transactions
GROUP BY TYPE
ORDER BY COUNT(ID) DESC;

--42 B
SELECT TYPE, SUM(AMOUNT) FROM transactions
GROUP BY TYPE
ORDER BY SUM(AMOUNT) DESC;
