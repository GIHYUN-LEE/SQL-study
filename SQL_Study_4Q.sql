-- Sql 조회문 스터디
use fisa;

-- Q1. 입사 월이 2월이고 부서번호가 30인 사람들의 사번, 사원명, 급여 검색하시오.

	-- Mysql
	   SELECT empno, ename, sal FROM emp WHERE Month(hiredate)=2 AND deptno=30; 
	
    -- Oracle
	   SELECT empno, ename, sal FROM emp WHERE TO_CHAR(hiredate,'MM')='02' AND deptno=30;
    
    -- Mysql, Oracle 공통
	   SELECT empno, ename, sal FROM emp WHERE EXTRACT(MONTH FROM hiredate)=2 AND deptno=30;
------------------------------------------------------------------------------------------------------
-- Q2. 1981년에 입사한 사원들 중, 이름에 'A'가 포함되지 않은 사원의 이름과 입사일을, 입사일 기준 내림차순으로 출력하시오.
    
    -- Mysql
	   SELECT ename, hiredate FROM emp WHERE Year(hiredate)=1981 AND ename NOT LIKE '%A%'; 
	
    -- Oracle
       SELECT ename, hiredate FROM emp WHERE ename NOT LIKE ('%A%') AND TO_CHAR(hiredate, 'YYYY')='1981' ORDER BY hiredate desc; 
    
    -- Mysql, Oracle 공통
	   SELECT ename, hiredate FROM emp WHERE EXTRACT(YEAR FROM hiredate) = 1981 AND ename NOT LIKE '%A%' ORDER BY hiredate DESC;
 ------------------------------------------------------------------------------------------------------
-- Q3. 사원명에 A가 들어간 사원들 중에 입사일이 1981년이랑 1987년인 사람들만 검색
	   SELECT ename, hiredate FROM emp  -- oracle
	   WHERE ename LIKE ('%A%')
	   AND hiredate BETWEEN to_date('1981','YYYY') AND to_date('1987','YYYY');  
------------------------------------------------------------------------------------------------------
-- Q4. 12월에 입사한 사람들 중에서 급여가 2000이상인 사람들 검색하여 사원이름과 입사일 급여를 출력하시오. 
       SELECT ename, hiredate, sal
       FROM emp
       WHERE sal >= 2000 AND TO_CHAR(hiredate, 'MM') = 12;
   