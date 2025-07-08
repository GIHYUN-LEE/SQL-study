# 📘 SQL 날짜 조건 실습 정리

## 🧠 실습한 문제

1. **1981년에 입사한 사원들 중**, 이름에 **'A'가 포함되지 않은** 사원의 이름과 입사일을, 입사일 기준 **내림차순으로 검색**
2. **12월에 입사한 사원들 중**, 급여가 **2000 이상**인 사원 검색  
   → 출력: `이름`, `입사일`, `급여`
3. **입사 월이 2월이고**, 부서번호가 30인 사원의 **사번, 이름, 급여** 검색
4. **사원명에 'A'가 포함되고**, 입사 연도가 **1981년 또는 1987년**인 사원 검색

---

## 🔧 풀이에 사용한 SQL 문법

- `LIKE`, `NOT LIKE`: 문자열 포함 여부 판단
- `BETWEEN A AND B`: 범위 조건
- `ORDER BY`: 정렬 (오름차순 / 내림차순)
- 날짜 조건 조회 함수

---

## 🗂️ DBMS별 날짜 함수 정리

### ✅ MySQL

```sql
YEAR(hiredate)     -- 연도 추출
MONTH(hiredate)    -- 월 추출
DAY(hiredate)      -- 일 추출
✅ Oracle
sql
복사
편집
-- 날짜 → 문자열로 추출
TO_CHAR(hiredate, 'YYYY')  -- 연도
TO_CHAR(hiredate, 'MM')    -- 월
TO_CHAR(hiredate, 'DD')    -- 일

-- 문자열 → 날짜로 변환
TO_DATE('20250708', 'YYYYMMDD')
TO_DATE('2025-07-08', 'YYYY-MM-DD')
✅ MySQL & Oracle 공통
sql
복사
편집
EXTRACT(YEAR FROM hiredate)
EXTRACT(MONTH FROM hiredate)
EXTRACT(DAY FROM hiredate)
