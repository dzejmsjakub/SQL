
-- Wyświetl strukturę tabeli departments
		SELECT * FROM departments;

-- Wyświetl zawartość tabeli regions
  		SELECT * FROM regions;
  
-- Wyświetl imiona, nazwiska oraz pensje pracowników
  		SELECT FIRST_NAME, LAST_NAME, SALARY FROM employees;
  
-- Wyświetl imiona, nazwiska pracowników. Nadaj aliasy „imie”, „nazwisko” odpowiednim kolumnom
  		SELECT FIRST_NAME IMIE, LAST_NAME NAZWISKO, SALARY WYPLATA FROM employees;
  						
/*  Popraw błędy w zapytaniach:
		select * from countri;
		select department_name, from employees;
		select hire_date as ‘data zatrudnienia’ from employees;
		select name nazwisko pracownika from employees
*/  
   
  	 	SELECT * FROM countries; 
  	 	SELECT DEPARTMENT_ID FROM employees;
     	SELECT HIRE_DATE 'DATA ZATRUDNIENIA' FROM employees;
    	SELECT LAST_NAME NAZWISKO FROM employees; 
 
-- Wyświetl imiona i nazwiska pracowników w jednej kolumnie (konkatenacja)   
   		SELECT CONCAT (FIRST_NAME, ' ', LAST_NAME) AS 'IMIE I NAZWISKO' FROM employees;
   		
-- Wyświetl alfabetyczną listę pracowników
    	SELECT * FROM employees ORDER BY FIRST_NAME ASC;
    	 
-- Wyświetl nazwiska pracowników w porządku malejącym
  		 SELECT LAST_NAME FROM employees ORDER BY LAST_NAME DESC;
  		 
-- Wyświetl nazwiska i pensje pracowników w porządku malejącym wg pensji
  		SELECT LAST_NAME, SALARY FROM employees ORDER BY SALARY DESC;
  
  
-- Wyświetl imiona, nazwiska i pensje pracowników w porządku rosnącym wg pensji i malejącym wg nazwisk
  		SELECT FIRST_NAME, LAST_NAME, SALARY FROM employees ORDER BY SALARY ASC, LAST_NAME DESC;  
  
--  Wyświetl listę nazwisk. W wyniku nie mogą pojawić się duplikaty nazwisk
  		SELECT DISTINCT LAST_NAME FROM employees;
  
-- Wyświetl imię, nazwisko oraz datę zatrudnienia wszystkich pracowników, których pensja nie znajduje się w przedziale [4000, 12 000]. Wyniki posortuj rosnąco wg pensji
		SELECT first_name, last_name, hire_date 
		FROM employees 
		WHERE salary < 4000 or salary > 12000 
		ORDER BY SALARY ASC; 
	
-- Wyświetl imiona i nazwiska pracowników, w których nazwisku występuje litera ‘i’, ‘a’ lub ‘o’
		SELECT FIRST_NAME, LAST_NAME 
		FROM employees 
		WHERE LAST_NAME LIKE '%I%' OR LAST_NAME LIKE '%A%' OR LAST_NAME LIKE '%O%';
	
		SELECT first_name, last_name FROM employees WHERE last_name REGEXP '[i,a,o]';
	
  
-- Wyświetl imiona, nazwiska i pensje powiększone o 20% pracowników zatrudnionych w oddziale o identyfikatorze 50.
	
		SELECT FIRST_NAME IMIE, LAST_NAME NAZWISKO, SALARY WYPLATA, SALARY * 1.2 PO_PODWYZCE, DEPARTMENT_ID 
		FROM employees
		WHERE DEPARTMENT_ID = 50;
	


-- Wyświetl imiona, nazwiska, daty zatrudnienia i pensje pracowników zatrudnionych na stanowisku
		ST_CLERK, których data zatrudnienia nie przypada na lata 2004-2005.
	
		SELECT FIRST_NAME, LAST_NAME, SALARY, HIRE_DATE,
			EXTRACT(YEAR FROM HIRE_DATE), YEAR(HIRE_DATE), JOB_ID
		FROM employees
			WHERE JOB_ID = 'ST_CLERK' AND 
			YEAR (HIRE_DATE) NOT BETWEEN 2004 AND 2005;
		

-- Wyświetl liczbę wszystkich pracowników	

		SELECT COUNT(*) FROM employees;


-- Wyświetl średnią pensję osób zatrudnionych na stanowisku IT_PROG
	
		SELECT AVG(SALARY) FROM employees
		WHERE JOB_ID = 'IT_PROG';
