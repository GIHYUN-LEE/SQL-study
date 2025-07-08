markdown
복사
편집
# 📘 SQL 문법 비교: MySQL vs Oracle

> **문제:**  
> 입사 월이 2월이고 부서번호가 30인 사원의 사번, 이름, 급여를 출력하시오.

---

## 🐬 MySQL 전용 문법

```sql
SELECT empno, ename, sal
FROM emp
WHERE MONTH(hiredate) = 2
  AND deptno = 30;
MONTH() 함수는 MySQL에서 날짜의 "월"을 추출할 때 사용합니다.

월이 정수 2로 비교되는 방식입니다.

🍊 Oracle 전용 문법
sql
복사
편집
SELECT empno, ename, sal
FROM emp
WHERE TO_CHAR(hiredate, 'MM') = '02'
  AND deptno = 30;
TO_CHAR(date, 'MM')은 Oracle에서 날짜의 "월"을 문자로 추출하는 함수입니다.

두 자리 문자열 '02'로 비교해야 정확히 2월만 필터링됩니다.

🌐 공통 ANSI SQL 문법 (MySQL & Oracle 모두 가능)
sql
복사
편집
SELECT empno, ename, sal
FROM emp
WHERE EXTRACT(MONTH FROM hiredate) = 2
  AND deptno = 30;
EXTRACT(MONTH FROM date)는 ANSI SQL 표준 함수로, Oracle과 MySQL 모두 지원됩니다.

다양한 DBMS 간 이식성을 고려할 때 유용한 방법입니다.
