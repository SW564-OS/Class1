WITH SUB AS (SELECT *
FROM EMP E
JOIN DEPT D ON E.DEPTNO = D.DEPTNO
JOIN SALGRADE S ON S.HISAL >= E.SAL AND E.SAL > S.LOSAL
JOIN (SELECT MGR, COUNT(JOB) AS JOB_COUNT FROM EMP GROUP BY MGR) E2 
ON COALESCE(E.MGR,0) = COALESCE(E2.MGR,0)
ORDER BY sal DESC)

-- SELECT에 대한 공부 내용
SELECT *
FROM SUB;

SELECT * 
FROM EMP E
JOIN DEPT D ON E.DEPTNO = D.DEPTNO
JOIN SALGRADE S ON S.HISAL >= E.SAL AND E.SAL > S.LOSAL
ORDER BY sal DESC;

SELECT * FROM emp;
desc emp;

select * from dept;
desc dept;

select * from salgrade;
DESC SALGRADE;

SELECT EMPNO, ENAME, SAL 
FROM emp;

SELECT DEPTNO
FROM EMP;

SELECT DISTINCT DEPTNO
FROM EMP;

SELECT DISTINCT JOB
FROM EMP;

/*
여러줄 주석
*/

--한 줄 주석

--'Ctrl + /' 여러줄 한 줄 주석 처리

SELECT DISTINCT JOB, DEPTNO
FROM EMP;

SELECT ENAME, SAL, SAL*12+COALESCE(COMM,0) AS 연봉, COMM
FROM EMP;

SELECT ENAME, SAL, SAL*12+COALESCE(COMM,0) 연봉, COMM
FROM EMP;

SELECT ENAME, SAL, SAL*12+COALESCE(COMM,0) "올해 연봉", COMM
FROM EMP;

/* 컬럼명 뒤에 AS(생략 가능)을 사용하여 별칭 지정 가능
띄어쓰기가 필요할 경우 ""를 사용하여 별칭을 묶어줄 것*/

SELECT * FROM EMP
ORDER BY JOB ASC;

SELECT * FROM EMP
ORDER BY SAL DESC;

SELECT * FROM EMP
ORDER BY JOB ASC, SAL DESC;

--ASC 오름차순, DESC 내림차순
--ORDER BY 내에서 오르내리차순 순서를 정하여 사용 가능함(ASC는 보통 생략)

/* NUMBER에 대한 이해
NUMBER(7,2) -> 유효한 자리는 7자리, 소수점은 2번째 자리까지만 유효(3번째자리부터는 반올림하여 처리)
NUMBER(2,4) -> 유효한 자리는 2자리, 소수점은 4번째 자리까지만 유효(ex.0.0012같이 상수 2자리이며 소수점 4번째 이내까지는 유효)
NUMBER(2,-1) -> -1은 소수점 앞 이동, 13을 기입하게 되면 -1로 인해 3자리는 0으로 변환하여 10으로 산출
*/

/*Q1. SELECT, FROM, 별칭*/

/*Q3.
SELECT *
FROM EMP
ORDER BY DEPTNO DESC, ENAME*/

/*Q2.
SELECT JOB
FROM EMP
GROUP BY JOB;*/
--Q2의 모범답안은 DISTINCT를 사용하는 것일 것임.

SELECT *
FROM EMP
WHERE DEPTNO = 30;

SELECT *
FROM EMP
WHERE EMPNO = 7782;

SELECT *
FROM EMP
WHERE DEPTNO = 30
AND JOB = 'SALESMAN';

SELECT *
FROM EMP
WHERE DEPTNO = 30
OR JOB = 'CLERK';

SELECT *
FROM EMP
WHERE ENAME = 'WARD'
OR JOB = 'CLERK'
OR DEPTNO = 20;

SELECT *
FROM EMP
WHERE ENAME = 'WARD'
OR JOB = 'CLERK'
AND DEPTNO = 20;

--AND와 OR가 같이 있을 경우 AND우선 계산후 OR을 계산.

/*WHERE조건 = 필터링 효과를 내는 절. 개수 제한 없으며, 참 혹은 거짓에 해당되는 조건만 걸 수 있음
AND, OR을 이용하여 연결할 수 있음.*/

SELECT *
FROM EMP 
WHERE SAL*12 = 36000;

SELECT *
FROM EMP
WHERE SAL > 3000;

SELECT *
FROM EMP
WHERE SAL <= 2000
ORDER BY SAL;

SELECT *
FROM EMP
WHERE SAL >= 2500
AND JOB = 'ANALYST';

SELECT *
FROM EMP
WHERE JOB LIKE '%A%';

SELECT *
FROM EMP
WHERE ENAME >= 'F';

/* 봉급이 2000 이상이고, 3000 미만인 "사원" 출력*/
SELECT ENAME
FROM EMP
WHERE 1=1
AND SAL >= 2000 AND 3000 > SAL;

-- 문제1. 부서번호가 20이 아닌 목록
SELECT *
FROM EMP
WHERE 1=1
AND DEPTNO <> 20;
-- 문제2. 부서 번호가 20도 아니고, 10도 아닌 목록
SELECT *
FROM EMP
WHERE 1=1
AND DEPTNO <> 20 AND DEPTNO <> 10;
-- 문제3. 부서번호가 30이면서 봉급 2000 이하
SELECT *
FROM EMP
WHERE 1=1
AND DEPTNO = 30 AND 2000 >= SAL;

SELECT *
FROM EMP
WHERE 1=1
AND DEPTNO IN (10, 20);

SELECT *
FROM EMP
WHERE 1=1
AND NOT DEPTNO IN (10, 20);

SELECT *
FROM EMP
WHERE SAL BETWEEN 2000 AND 3000;

SELECT *
FROM EMP
WHERE SAL NOT BETWEEN 2000 AND 3000;

/*Wild Card %는 길이에 관계없이 아무거나 대체 사용, _는 어떤 것이든 관계없이 한 문자 대체*/
SELECT *
FROM EMP
WHERE 1=1
AND ENAME LIKE 'S%';

SELECT *
FROM EMP
WHERE 1=1
AND ENAME LIKE '_L%';

-- 이름이 4글자인 사람들
SELECT *
FROM EMP
WHERE 1=1
AND ENAME LIKE '_____';

SELECT *
FROM EMP
WHERE 1=1
AND COMM IS NULL;

SELECT *
FROM EMP
WHERE 1=1
AND COMM IS NULL;

SELECT COMM, COMM+10 AS "10추가된 값"
FROM EMP;

-- NULL값 0으로 치환하여 계산하는 SQL
SELECT COMM, COALESCE(COMM,0)+10 AS "10추가된 값"
FROM EMP;

SELECT *
FROM EMP
WHERE 1=1
AND DEPTNO = 10
UNION
SELECT *
FROM EMP
WHERE 1=1
AND DEPTNO = 20;

-- COLUMN의 개수가 달라서 오류 발생
SELECT EMPNO, ENAME, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 10
UNION
SELECT EMPNO, ENAME, SAL
FROM EMP
WHERE DEPTNO = 20;

-- 컬럼 배열이 동일한 데이터 타입으로 배열되지 않아서 오류 발생
SELECT EMPNO, ENAME, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 10
UNION 
SELECT ENAME, EMPNO, DEPTNO, SAL
FROM EMP
WHERE DEPTNO =20;

-- COLUMN이 다르더라도 데이터 타입이 동일하다면 정상 실행
-- EMPNO와 SAL 모두 숫자 타입이라 COLUMN이 달라도 UNION 적용되나 둘의 값의 의미가 달라짐
SELECT EMPNO, ENAME, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 10
UNION
SELECT SAL, JOB, DEPTNO, SAL
FROM EMP
WHERE DEPTNO = 20;

-- UNION은 중복제거 기능을 가지고 있음
SELECT EMPNO, ENAME, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 10
UNION
SELECT EMPNO, ENAME, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 10;

-- 중복제거 없이 그대로 출력하기 위해선 "UNION ALL"을 사용하여 테이블 합
SELECT EMPNO, ENAME, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 10
UNION ALL
SELECT EMPNO, ENAME, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 10;

-- 125P 문제 풀이
SELECT *
FROM EMP
WHERE ENAME LIKE '%S';

SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 30
AND JOB = 'SALESMAN';

-- #집합연산자 없이
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE DEPTNO IN (20,30)
AND SAL > 2000;

-- #UNION
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 20
AND SAL > 2000
UNION
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 30
AND SAL > 2000;

-- #MINUS
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
MINUS
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE NOT DEPTNO IN (20,30) OR NOT SAL > 2000;
-- WHERE NOT (DEPTNO IN (20,30) OR SAL > 2000);
-- 괄호를 통해 전체 NOT을 걸어주거나 개별로 NOT으로 걸어주거나 그건 맘대로

-- #INTERSECT 
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
INTERSECT
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE DEPTNO IN (20,30)
AND SAL > 2000;

SELECT *
FROM EMP
WHERE SAL < 2000 OR 3000 < SAL;

SELECT *
FROM EMP
WHERE ENAME LIKE '%E%'
AND DEPTNO = 30
AND SAL NOT BETWEEN 1000 AND 2000;

SELECT *
FROM EMP
WHERE COMM IS NULL
AND MGR IS NOT NULL
AND JOB IN ('MANAGER', 'CLERK')
AND ENAME NOT LIKE '_L%';
-- AND MGR LIKE '%'을 사용할 경우 NULL은 제외됨

-- 소문자 처리
SELECT LOWER('ABCD')
FROM DUAL;

-- 소문자 처리된 것을 대문자로 재처리
SELECT UPPER(LOWER(ENAME))
FROM EMP;

-- 입력된 데이터 값이 대소문자 어떤 것인지 모를 때 함수를 통해 한 가지로 통일후 검색하는 방식
-- 책 131P 실습 6-3 참고 바람
SELECT *
FROM EMP
WHERE LOWER(ENAME) LIKE LOWER('%Mi%');

-- 길이 검색 함수
SELECT ENAME, LENGTH(ENAME)
FROM EMP;

SELECT LENGTH('ABC'), LENGTH('한글')
FROM DUAL;

SELECT ENAME, LENGTH(ENAME)
FROM EMP
WHERE LENGTH(ENAME) >= 5;

-- BYTE를 조회하는 함수
SELECT LENGTHB('한')
FROM DUAL;

-- JOB테이블의 테이터 분석
SELECT JOB, LENGTH(JOB), LENGTHB(JOB), SUBSTR(JOB, 1, 2)
FROM EMP;

-- 이름 모자이크 처리 연습
SELECT JOB, SUBSTR(JOB, 1, 1), SUBSTR(JOB, LENGTH(JOB), 1), 
SUBSTR(JOB, 1, 1) || '*' || SUBSTR(JOB, LENGTH(JOB), 1)
FROM EMP;

-- 234만 출력
SELECT '123456', SUBSTR('123456',2,3)
FROM DUAL;

-- 앞의 두 글자만 출력
SELECT JOB, SUBSTR(JOB, 1, 2)
FROM EMP;

-- 세번째부터 세글자
SELECT JOB, SUBSTR(JOB, 3, 3)
FROM EMP;

-- 네번째부터 끝까지
SELECT JOB, SUBSTR(JOB, 4), SUBSTR(JOB, -3, 3), SUBSTR(JOB, LENGTH(JOB)-2, 3)
FROM EMP;

-- SUBSTR(원하는 테이블, 출력 시작한 문자 위치, 출력할 문자 수량)
-- SUBSTR의 시작 문자 위치가 해당 글자의 총 수량보다 높은 경우 NULL처리
-- SUBSTR의 출력할 문자 수량은 얼마를 넣든 SQL이 알아서 걸러줌
-- SUBSTR의 두번째에 음수를 줄 경우 뒤에서부터 카운팅 시작

SELECT '010-1234-5678' AS REPLACE_BEFORE,
REPLACE('010-1234-5678', '-', '*') AS REPLACE_1,
REPLACE('010-1234-5678', '-') AS REPLACE_2
FROM DUAL;

-- EMP테이블에서 A를 모두 *로 출력
SELECT ENAME, REPLACE(ENAME, 'A', '*')
FROM EMP;

-- 이름의 반을 *로 바꾸어라
SELECT ENAME, SUBSTR(ENAME, 1, 2) AS Q1,
REPLACE(ENAME, SUBSTR(ENAME, 1, 2), '**') AS Q2, --앞 두자리
REPLACE(ENAME, SUBSTR(ENAME, -2), '**') AS "Add", -- 뒤 a두자리
CEIL(LENGTH(ENAME)/2) AS "Q3-0",
RPAD(SUBSTR(ENAME, 1, CEIL(LENGTH(ENAME)/2)), LENGTH(ENAME), '*') AS "Q3-1", --이름 절반의 앞
LPAD(SUBSTR(ENAME, CEIL(LENGTH(ENAME)/2) +1), LENGTH(ENAME), '*') AS "Q3-2" -- 이름 절반의 뒤
FROM EMP;

-- 따라쓰기, 이해하기, 안 보고 쓰기 수업 듣는 방법

-- R & L PAD 사용법
SELECT 'Oracle',
LPAD('Oracle', 10, '#'),
RPAD('Oracle', 10, '#'),
LPAD('Oracle', 10),
RPAD('Oracle', 10),
RPAD('Oracle', 3)
FROM DUAL;

SELECT RPAD('971225-', 14, '*'),
RPAD('010-1234-', 13, '*')
FROM DUAL;

-- ENAME에 이름자리수를 6자리로 *로 채워라
SELECT RPAD(ENAME, 6, '*'), LPAD(ENAME, LENGTH(ENAME)*2, '*')
FROM EMP;

-- 본인 전화 번호를 계산으로만 뒤 4자리를 마스킹
SELECT
RPAD(SUBSTR('010-2825-3366', 1, LENGTH('010-2825-3366')-4), LENGTH('010-2825-3366'), '*')
FROM DUAL;

-- 사원의 이름을 앞에 2자리만 보이게 하고 나머지는 별모양으로 치환
SELECT RPAD(SUBSTR(ENAME,1,2), LENGTH(ENAME), '*')
FROM EMP;

-- 사원 이름의 앞글자 하나만 *표시
SELECT LPAD(SUBSTR(ENAME, -LENGTH(ENAME)+1), LENGTH(ENAME), '*') 
FROM EMP;

SELECT '*' || ENAME
FROM EMP;

-- JOB을 대상으로 20자크기의 공간에서 가운데 정렬
-- 하나로 묶어서 풀이(컴퓨터 눈에서 보는 방식)
SELECT RPAD(LPAD(JOB, LENGTH(JOB)+CEIL((20-LENGTH(JOB))/2), '*'), 20 , '*')
FROM EMP;
-- 연결 방식 이용한 풀이(사람 눈에서 바라보는 풀이)
SELECT LPAD('*', (20-LENGTH(JOB))/2, '*') || JOB || RPAD('*', ((20-LENGTH(JOB))/2)-1, '*')
FROM EMP;
-- 아직 안 배운 함수 이용하여 풀이
SELECT LPAD('*', CEIL((20-LENGTH(JOB))/2), '*') || JOB || RPAD('*', FLOOR(((20-LENGTH(JOB))/2)), '*')
FROM EMP;

SELECT CONCAT(EMPNO, ENAME),
CONCAT(EMPNO, CONCAT(':', ENAME))
FROM EMP;

-- Concat으로 하기보단 ||을 써서 문자열을 합치자
SELECT '[' || TRIM(LEADING '_' FROM ' _ _Oracle_ _ ') || ']'
FROM DUAL;

-- 실습예제
-- 앞뒤 선택된 단어 제거(단, 앞 뒤로 선택된(미선택시 공백) 글자는 붙어 있는 것만 지울 수 있음)
SELECT '     A B C D     ',
TRIM('     A B C D     '),
REPLACE('     A B C D     ', ' ', '')
FROM DUAL;

-- ENAME의 두번째 글자만 *처리
SELECT SUBSTR(ENAME, 1, 1) || '*' || SUBSTR(ENAME, 3)
FROM EMP;

-- 소수점 첫 번째 자리가 0의 자리임
SELECT ROUND(14.123),
ROUND(14.123, 0),
ROUND(14.123, 1),
ROUND(14.123, 2)
FROM DUAL;

-- TRUNC 지정된 자릿수에서 버림
-- CEIL 지정된 숫자보다 높은 정수중 가장 작은 정수로 반환
-- FLOOR 지정된 숫자보다 낲은 정수중 가장 큰 정수로 반환

-- FLOOR는 지정된 숫자보다 낮은 것중 큰 것은 찾아내기에 15, TRUNC는 지정된 자릿수에서 숫자를 버리기에 -14 
SELECT FLOOR(-14.12), TRUNC(-14.12)
FROM DUAL;

-- 프로그램마다 계산의 정밀도가 다르기에 계산을 할 때는 한 프로그램에서 모두 처리하는 것이 좋음

-- 나머지를 구하는 함수
SELECT MOD(5, 2)
FROM DUAL;


SELECT TO_CHAR(SYSDATE + INTERVAL '9' HOUR, 'HH24:MI:SS'),
TRUNC(SYSDATE) - TO_DATE('19950215', 'YYYY-MM-DD')
FROM DUAL;

SELECT EMPNO, EMPNO || '500A'
FROM EMP;

SELECT TO_CHAR(SYSDATE + INTERVAL '9'HOUR, ' MON YYYY-MM-DD HH24:MI:SS')
FROM DUAL;

-- 'YYYY"년" MM"월" DD"일"' 같이 한글을 넣고 싶을 경우 ""를 이용하여 한글 감싸기

SELECT TO_DATE('2024/11/15', 'YYYY/MM/DD')
FROM DUAL;

SELECT TO_DATE('2024/11/15', 'YYYY:MM:DD'),
TO_CHAR(TO_DATE('2024/11/15 15:15', 'YYYY:MM:DD HH24:SS'), 'YYYY-MM-DD HH24:MI:SS')
FROM DUAL;

SELECT TO_DATE('2024/11/15', 'YYYY/MM/DD') - TO_DATE('2024/11/16', 'YYYY/MM/DD'),
TO_CHAR(TO_DATE('2024/11/15', 'YYYY/MM/DD') - INTERVAL '1' DAY, 'YYYY/MM/DD')
FROM DUAL;

SELECT TO_DATE('2024/11/16', 'YYYY/MM/DD') - TO_DATE('2024/11/15 18', 'YYYY/MM/DD HH24')
FROM DUAL;

SELECT *
FROM EMP
WHERE HIREDATE > TO_DATE('1981/06/01', 'YYYY-MM-DD');

-- 졸업일 계산
SELECT TO_DATE('2025/05/02', 'YYYY-MM-DD') - TO_DATE('2024/11/15', 'YYYY-MM-DD')
FROM DUAL;

-- NUMTODSINTERVAL
SELECT TO_CHAR(TO_DATE('2025/05/02', 'YYYY-MM-DD') - NUMTODSINTERVAL(168, 'DAY'), 'YYYY-MM-DD')
FROM DUAL;

-- NVL은 NVL(테이블, 변환 희망)으로, COALESCE는 COALESCE(테이블, 테이블, 변환 희망 등)으로 사용
-- NVL은 2가지 인수만 가지지만, COALESCE는 여러개의 인수를 가질 수 있으며 유연한게 사용 가능
SELECT COMM, SAL, NVL(COMM, 0)+SAL
FROM EMP;

-- NVL2(테이블, 테이블이 NULL아닐 경우 경우, 테이블이 NULL일 경우)

-- 2024/11/18

-- DECODE(테이블, 조건1, 조건1 반환값, 조건2, 조건2반환값, 나머지)
SELECT EMPNO, ENAME, JOB, SAL, 
DECODE(JOB, 'MANAGER', SAL*1.1, 'SALESMAN', SAL*1.05, 'ANALYST', SAL, 'CLERK', SAL*1.2, SAL*1.03) "UPSAL"
FROM EMP;

-- 이름하고 봉급, 추가수당, 봉급+추가수당
SELECT ENAME, SAL, COMM, 
DECODE(COMM, NULL, SAL+0, SAL+COMM) "최종연봉(?)"
FROM EMP;

-- CASE를 이용한 NULL값 제거한 최종연봉
SELECT ENAME, SAL, COMM,
CASE COMM
WHEN COMM IS NULL THEN SAL
ELSE SAL+COMM END AS "최종연봉"
FROM EMP;

-- COMM이 NULL일 경우 N/A 출력, NULL 아닐 경우 COMM 출력(문자 + 숫자가 조합될 경우 문자로 인식)
SELECT CASE
WHEN COMM IS NULL THEN 'N/A'
ELSE TO_CHAR(COMM) END
FROM EMP;

-- 174P Q1
SELECT EMPNO, 
RPAD(SUBSTR(EMPNO, 1, 2), LENGTH(EMPNO), '*'),
ENAME,
RPAD(SUBSTR(ENAME, 1, 1), LENGTH(ENAME), '*')
FROM EMP
WHERE LENGTH(ENAME) >= 5 AND 6 > LENGTH(ENAME);

-- Q2
SELECT EMPNO, ENAME, SAL,
TRUNC(SAL / 21.5, 2) AS "DAY_PAY",
ROUND(SAL / 21.5 / 8, 1) AS "TIME_PAY"
FROM EMP;

-- Q3
SELECT EMPNO, ENAME, HIREDATE,
NEXT_DAY(ADD_MONTHS(HIREDATE, 3), '월요일') AS "R_JOB",
NEXT_DAY(HIREDATE + INTERVAL '3' MONTH, '월요일') AS "R_JOB2",
CASE 
WHEN COMM IS NULL THEN 'N/A'
ELSE TO_CHAR(COMM) END AS "COMM"
FROM EMP;

-- Q4
SELECT EMPNO, ENAME, MGR,
CASE 
WHEN MGR IS NULL THEN '0000'
WHEN SUBSTR(MGR, 1, 2) = 75 THEN '5555'
WHEN SUBSTR(MGR, 1, 2) = 76 THEN '6666'
WHEN SUBSTR(MGR, 1, 2) = 77 THEN '7777'
WHEN SUBSTR(MGR, 1, 2) = 78 THEN '8888'
ELSE TO_CHAR(MGR) END "CHG_NGR"
FROM EMP;

SELECT EMPNO, ENAME, MGR,
CASE
WHEN MGR IS NULL THEN '0000'
WHEN MGR LIKE '75%' THEN '5555'
WHEN MGR LIKE '76%' THEN '6666'
WHEN MGR LIKE '77%' THEN '7777'
WHEN MGR LIKE '78%' THEN '8888'
ELSE TO_CHAR(MGR) END "CHG_MGR"
FROM EMP;

SELECT EMPNO, ENAME, MGR,
NVL2(MGR, LPAD(' ', 5, SUBSTR(MGR, 2, 1)), '0000')
FROM EMP;

SELECT EMPNO, ENAME, MGR,
CASE
WHEN MGR IS NULL THEN '0000'
WHEN SUBSTR(MGR, 2, 1) IN (5, 6, 7, 8) 
THEN LPAD(SUBSTR(MGR, 2, 1), 4, SUBSTR(MGR, 2, 1))
ELSE TO_CHAR(MGR) END AS "CHG_MGR"
FROM EMP;

SELECT SUM(SAL + COMM)
FROM EMP;

SELECT EMPNO, ENAME, JOB, SAL, SUM(SAL)
FROM EMP
GROUP BY EMPNO, ENAME, JOB, SAL;

SELECT ENAME, COUNT(ENAME) OVER()
FROM EMP
WHERE ENAME LIKE '%A%';

-- 최대 연봉인 사람1
WITH A AS (SELECT MAX(SAL) AS "S"
FROM EMP)

SELECT *
FROM EMP P
JOIN A ON P.SAL = A.S;

-- 최대 연봉인 사람2
SELECT *
FROM EMP
WHERE SAL = (SELECT MAX(SAL) FROM EMP);

SELECT AVG(SAL)
FROM EMP;

SELECT SUM(SAL), AVG(SAL) FROM EMP WHERE DEPTNO = 10
UNION ALL
SELECT SUM(SAL), AVG(SAL) FROM EMP WHERE DEPTNO = 20
UNION ALL
SELECT SUM(SAL), AVG(SAL) FROM EMP WHERE DEPTNO = 30;

-- 집계함수의 경우 다른 컬럼을 가질 수 없으나 GROUP BY를 통해 컬럼을 그룹핑해줄 경우 올 수 있음
SELECT AVG(SAL), DEPTNO
FROM EMP
GROUP BY DEPTNO;

-- 집계함수는 WHERE절에서 사용할 수 없음
SELECT DEPTNO, JOB, AVG(SAL)
FROM EMP
GROUP BY DEPTNO, JOB
HAVING AVG(SAL) >= 2000;

-- WHERE에서 쓸 수 있는 조건은 되도록 WHERE에서 사용
-- HAVING은 집계함수 조건이 필요할 때 쓰는 것이니 HAVING에서밖에 쓸 수 없는 경우에 HAVING에서 씀

-- 실행순서를 정리하기 위한 SQL문
SELECT JOB, COUNT(*) -- 5번 실행
FROM EMP -- 1번 실행
WHERE SAL > 1000 -- 2번 실행
GROUP BY JOB -- 3번 실행
HAVING COUNT(*) >= 3 -- 4번 실행
ORDER BY JOB;-- 6번 실행 

-- 212P Q1
SELECT DEPTNO, AVG(SAL), MAX(SAL), MIN(SAL), COUNT(*)
FROM EMP
GROUP BY DEPTNO;

-- Q2
SELECT JOB, COUNT(*)
FROM EMP
GROUP BY JOB
HAVING COUNT(*) >= 3;

-- 추가문제1 1981년에 입사한 사원 중에 급여가 가장 낮은 사원의 정보를 모두 조회하세요
SELECT *
FROM EMP
WHERE TO_CHAR(HIREDATE, 'YY') = '81'
AND SAL = (SELECT MIN(SAL) 
FROM EMP 
WHERE TO_CHAR(HIREDATE, 'YY') = '81');

SELECT MIN(SAL)
FROM EMP
WHERE TO_CHAR(HIREDATE, 'YY') = 81;

-- 추가문제2 1981년에 입사한 사원 중에서 급여가 1981년 평균 급여보다 높은 사원의 수를 조회하세요.
SELECT COUNT(*)
FROM EMP
WHERE TO_CHAR(HIREDATE, 'YY') = '81'
AND SAL > (SELECT AVG(SAL) FROM EMP WHERE TO_CHAR(HIREDATE, 'YY') = '81');

-- 추가문제3 각 부서별로 급여가 가장 높은 사원과 가장 낮은 사원의 급여 차이를 조회하세요.
SELECT JOB, MAX(SAL), MIN(SAL), MAX(SAL) - MIN(SAL)
FROM EMP
GROUP BY JOB;

-- Test PiVOT
SELECT DEPTNO, A CLERK, B SALESMAN, C MANAGER, D PRESIDENT, E ANALYST
FROM EMP
PIVOT ( 
    SUM(SAL)
    FOR JOB IN ('CLERK' A, 'SALESMAN' B, 'MANAGER' C, 'PRESIDENT' D, 'ANALYST' E));
    
SELECT DEPTNO,
       SUM(CLERK_SAL) AS CLERK_SUM, AVG(CLERK_SAL) AS CLERK_AVG,
       SUM(SALESMAN_SAL) AS SALESMAN_SUM, AVG(SALESMAN_SAL) AS SALESMAN_AVG,
       SUM(MANAGER_SAL) AS MANAGER_SUM, AVG(MANAGER_SAL) AS MANAGER_AVG,
       SUM(PRESIDENT_SAL) AS PRESIDENT_SUM, AVG(PRESIDENT_SAL) AS PRESIDENT_AVG,
       SUM(ANALYST_SAL) AS ANALYST_SUM, AVG(ANALYST_SAL) AS ANALYST_AVG
FROM EMP
PIVOT (
    SUM(SAL) AS SAL,
    AVG(SAL) AS AVG_SAL
    FOR JOB IN ('CLERK' AS CLERK, 'SALESMAN' AS SALESMAN, 'MANAGER' AS MANAGER, 'PRESIDENT' AS PRESIDENT, 'ANALYST' AS ANALYST)
)
GROUP BY DEPTNO;

SELECT *
FROM DEPT;

SELECT *
FROM EMP, DEPT
ORDER BY EMPNO;

SELECT *
FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO
ORDER BY EMPNO;

SELECT ENAME, E.DEPTNO, E.*
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
ORDER BY EMPNO;

-- JOIN은 두 개 이상의 테이블을 한 번에 조회하는 기술

SELECT E.ENAME, E.MGR, E2.ENAME, E2.EMPNO, E2.MGR, E3.ENAME, E3.EMPNO
FROM EMP E
JOIN EMP E2 ON E.MGR = E2.EMPNO
JOIN EMP E3 ON E2.MGR = E3.EMPNO;

SELECT E.ENAME, E.MGR, E2.ENAME, E2.EMPNO, E2.MGR
FROM EMP E
RIGHT JOIN EMP E2 ON E.MGR = E2.EMPNO;

SELECT *
FROM EMP E JOIN DEPT D USING (DEPTNO);

SELECT *
FROM EMP E JOIN DEPT D ON (E.DEPTNO = D.DEPTNO)
WHERE SAL >= 3000;

SELECT *
FROM EMP E1 
JOIN EMP E2 ON (E1.MGR = E2.EMPNO);

-- 239P Q1
SELECT DEPT.DEPTNO, DEPT.DNAME, EMP.EMPNO, EMP.ENAME, EMP.SAL
FROM DEPT, EMP
WHERE DEPT.DEPTNO = EMP.DEPTNO
AND SAL > 2000
ORDER BY DEPT.DEPTNO;

SELECT DEPTNO, DNAME, EMPNO, ENAME, SAL
FROM DEPT
JOIN EMP USING (DEPTNO)
WHERE SAL > 2000
ORDER BY DEPTNO;

SELECT DEPT.DEPTNO, DEPT.DNAME, EMP.EMPNO, EMP.ENAME, EMP.SAL
FROM DEPT
JOIN EMP ON DEPT.DEPTNO = EMP.DEPTNO
WHERE SAL > 2000;

-- Q2
SELECT D.DEPTNO, D.DNAME, FLOOR(AVG(E.SAL)), MAX(E.SAL), MIN(E.SAL), COUNT(E.ENAME)
FROM DEPT D
JOIN EMP E ON D.DEPTNO = E.DEPTNO
GROUP BY D.DEPTNO, D.DNAME;

-- Q3
SELECT D.DEPTNO, D.DNAME, E.EMPNO, E.ENAME, E.JOB, E.SAL
FROM DEPT D
LEFT JOIN EMP E ON D.DEPTNO = E.DEPTNO
ORDER BY D.DEPTNO, D.DNAME;

-- 추가문제1 사원번호, 이름, 부서명, 급여등급 출력
SELECT EMPNO, ENAME, DNAME, GRADE
FROM EMP E
JOIN DEPT D ON E.DEPTNO = D.DEPTNO
JOIN SALGRADE S ON S.HISAL >= E.SAL AND E.SAL > S.LOSAL;

-- 추가문제2 상사보다 월급이 높은 사원의 이름, 급여, 상사이름, 상사급여
SELECT E.ENAME, E.SAL, E2.ENAME, E2.SAL
FROM EMP E
JOIN EMP E2 ON E.MGR = E2.EMPNO
WHERE E.SAL > E2.SAL;

-- 서브쿼리
SELECT ENAME, SAL
FROM EMP
WHERE SAL > (SELECT SAL FROM EMP WHERE ENAME = 'JONES');

SELECT *
FROM EMP
WHERE DEPTNO IN (20, 30);

-- BLAKE보다 높은 연봉을 받는 사람들
SELECT ENAME
FROM EMP E
WHERE SAL > (SELECT SAL FROM EMP WHERE ENAME = 'BLAKE');

-- JONES과 같은 JOB을 가진 사람들
SELECT ENAME
FROM EMP
WHERE JOB = (SELECT JOB FROM EMP WHERE ENAME = 'JONES')
AND ENAME != 'JONES';

SELECT *
FROM (SELECT EMPNO, DEPTNO, ENAME
FROM EMP
WHERE DEPTNO = 10);

SELECT ROWNUM, EMP.*
FROM EMP;

-- 262P Q1
SELECT E.JOB, E.EMPNO, E.ENAME, E.SAL, E.DEPTNO, D.DNAME
FROM EMP E
JOIN DEPT D ON E.DEPTNO = D.DEPTNO
WHERE JOB = (SELECT JOB FROM EMP WHERE ENAME = 'ALLEN')
ORDER BY SAL DESC;

-- Q2
SELECT E.EMPNO, E.ENAME, DNAME, E.HIREDATE, D.LOC, E.SAL, S.GRADE
FROM EMP E
JOIN DEPT D ON E.DEPTNO = D.DEPTNO
JOIN SALGRADE S ON S.HISAL >= E.SAL AND E.SAL > S.LOSAL
WHERE E.SAL > (SELECT AVG(SAL) FROM EMP)
ORDER BY SAL DESC, EMPNO;

-- Q3
SELECT E.EMPNO, E.ENAME, E.JOB, E.DEPTNO, D.DNAME, D.LOC
FROM EMP E
JOIN DEPT D ON E.DEPTNO = D.DEPTNO
WHERE 1=1
AND E.DEPTNO = 10
AND E.JOB NOT IN (SELECT JOB FROM EMP WHERE DEPTNO IN (30));

-- Q4-1
SELECT E.EMPNO, E.ENAME, E.SAL, S.GRADE
FROM EMP E
JOIN DEPT D ON E.DEPTNO = D.DEPTNO
JOIN SALGRADE S ON S.HISAL >= E.SAL AND E.SAL > S.LOSAL
WHERE SAL > (SELECT MAX(SAL) FROM EMP WHERE JOB = 'SALESMAN')
ORDER BY E.EMPNO;

-- Q4-2
SELECT E.EMPNO, E.ENAME, E.SAL, S.GRADE
FROM EMP E
JOIN DEPT D ON E.DEPTNO = D.DEPTNO
JOIN SALGRADE S ON S.HISAL >= E.SAL AND E.SAL > S.LOSAL
WHERE SAL > (SELECT SAL FROM (SELECT ROWNUM, SAL FROM EMP WHERE JOB = 'SALESMAN') WHERE ROWNUM = 1)
ORDER BY E.EMPNO;

/*  Oracle이 수행하는 4가지 기능 "CRUD"
    생성 = CREATE
    조회 = READ
    수정 = UPDATE
    삭제 = DELETE
*/

-- CREATE에 대한 공부 내용
-- DDL(Data Definition Language) 꼭 외워둘 것

-- CREATE TABLE 예시
CREATE TABLE EMP_DDL (
    EMPNO NUMBER(4),
    ENAME VARCHAR(10),
    JOB VARCHAR(9),
    MGR NUMBER(4),
    HIREDATE DATE,
    SAL NUMBER(7,2),
    SOMM NUMBER(7,2),
    DEPTNO NUMBER(2)
);

DESC EMP_DDL;

SELECT *
FROM EMP_DDL;

CREATE TABLE DEPT_DDL
    AS SELECT * FROM DEPT;
    
SELECT *
FROM DEPT_DDL;

DESC DEPT_DDL;

CREATE TABLE EMP_DDL3
    AS SELECT * FROM EMP WHERE DEPTNO = 30;

SELECT *
FROM EMP_DDL3;

CREATE TABLE EMP_ALTER
    AS SELECT * FROM EMP;

ALTER TABLE EMP_ALTER ADD HP VARCHAR2(10);

SELECT * FROM EMP_ALTER;

ALTER TABLE EMP_ALTER RENAME COLUMN HP TO TEL;

ALTER TABLE EMP_ALTER MODIFY EMPNO NUMBER(5);

DESC EMP_ALTER;

ALTER TABLE EMP_ALTER DROP COLUMN TEL;

RENAME EMP_ALTER TO EMP_RENAME;

SELECT *
FROM EMP_RENAME;

TRUNCATE TABLE EMP_RENAME;

DROP TABLE EMP_RENAME;

CREATE TABLE DEPT_TEMP
    AS SELECT * FROM DEPT;

SELECT * FROM DEPT_TEMP;
    
INSERT INTO DEPT_TEMP (DEPTNO, ENAME, LOC)
    VALUES (60, 'DATABASE', 'CHANGNYEONG');
    
DELETE FROM DEPT_TEMP
WHERE DEPTNO = 60
AND DNAME IS NULL;

INSERT INTO DEPT_TEMP
    VALUES (60, 'NETWORK', 'BUSAN');

INSERT INTO DEPT_TEMP (DEPTNO, LOC)
    VALUES (90, 'INCHEON');

CREATE TABLE EMP_TEMP
    AS SELECT *
    FROM EMP
    WHERE 1<>1;
    
SELECT *
FROM EMP_TEMP;

DESC EMP_TEMP;

ALTER TABLE EMP_TEMP 
ADD HT VARCHAR(12);

ALTER TABLE EMP_TEMP DROP COLUMN HT;

INSERT INTO EMP_TEMP(
EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES (2111, '이순신', 'MANAGER', 9999, TO_DATE('07/01/2001', 'DD/MM/YYYY'), 4000, NULL, 20);

INSERT INTO EMP_TEMP(
EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES (3111, '심청이', 'MANAGER', 9999, SYSDATE, 4000, NULL, 30);

INSERT INTO EMP_TEMP(
EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
SELECT E.EMPNO, E.ENAME, E.JOB, E.MGR, E.HIREDATE, E.SAL, E.COMM, E.DEPTNO
FROM EMP E
JOIN SALGRADE S ON S.HISAL >= E.SAL AND E.SAL > S.LOSAL
WHERE S.GRADE = 1;

CREATE TABLE DEPT_TEMP2
AS SELECT * FROM DEPT;

SELECT *
FROM DEPT_TEMP2;

UPDATE DEPT_TEMP2
SET LOC = 'SEOUL';

ROLLBACK;

SELECT *
FROM DEPT_TEMP2
WHERE DEPTNO = 40;

UPDATE DEPT_TEMP2
SET LOC = 'SEOUL', DNAME = 'DATABASE'
WHERE DEPTNO = 40;

SELECT *
FROM EMP_TEMP;

UPDATE EMP_TEMP
SET SAL = SAL+50
WHERE 2500 >= SAL;

-- EMP_TEMP2 생성(EMP 테이블 복사)에서 연봉이 1000이하인 사원의 연봉을 1.3배 이상
CREATE TABLE EMP_TEMP2
AS SELECT * FROM EMP;

DROP TABLE EMP_TEMP2;

SELECT *
FROM EMP_TEMP2;

UPDATE EMP_TEMP2
SET SAL = SAL*1.3
WHERE 1000 >= SAL;

SELECT * FROM EMP_TEMP2;

ROLLBACK;

SELECT * FROM USER_TABLES;

SELECT * FROM USER_INDEXES;

CREATE INDEX IDX_EMP_SAL
ON EMP (SAL);

SELECT *
FROM EMP
ORDER BY SAL;

SELECT /*+ INDEX(E)*/
*
FROM EMP E
ORDER BY SAL;

SELECT *
FROM EMP_TEMP2;

SELECT *
FROM EMP_TEMP;

DELETE FROM EMP_TEMP2
WHERE DEPTNO = 10;

INSERT INTO EMP_TEMP2 (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES ((SELECT MAX(EMPNO)+1 FROM EMP_TEMP2), 'NEW', 'CLERK', (SELECT MIN(MGR) FROM EMP_TEMP2), SYSDATE, 700, NULL,20);

-- 규칙대로 번호가 증가하는 기능 == 시퀀스
CREATE SEQUENCE SEQ_EMPNO
START WITH 8000
INCREMENT BY 1;

SELECT SEQ_EMPNO.NEXTVAL
FROM DUAL;

SELECT SEQ_EMPNO.CURRVAL
FROM DUAL;

INSERT INTO EMP_TEMP2(EMPNO, ENAME)
VALUES (SEQ_EMPNO.NEXTVAL, '천재1');

DROP SEQUENCE SEQ_EMPNO;

CREATE TABLE TABLE_NOTNULL (
    LOGIN_ID VARCHAR(20) NOT NULL,
    LOGIN_PWD VARCHAR(20) NOT NULL,
    TEL VARCHAR2(20)
    
    );
    
INSERT INTO TABLE_NOTNULL (LOGIN_ID, LOGIN_PWD, TEL)
VALUES ('TEST', 1234, NULL);

SELECT *
FROM USER_CONSTRAINTS;

SELECT *
FROM TABLE_NOTNULL;

ALTER TABLE TABLE_NOTNULL
MODIFY TEL NOT NULL;

UPDATE TABLE_NOTNULL
SET TEL = 0
WHERE TEL IS NULL;

DESC TABLE_NOTNULL;

ALTER TABLE TABLE_NOTNULL
DROP CONSTRAINT SYS_C0029302;

CREATE TABLE TABLE_PK(
 LOGIN_ID VARCHAR(20) PRIMARY KEY,
    LOGIN_PWD VARCHAR(20) NOT NULL,
    TEL VARCHAR2(20)
);

DESC TABLE_PK;

SELECT *
FROM USER_CONSTRAINTS;

INSERT INTO TABLE_PK(LOGIN_ID, LOGIN_PWD, TEL)
VALUES ('TEST', 'PWE01', '010-1234-5678');

INSERT INTO TABLE_PK(LOGIN_ID, LOGIN_PWD, TEL)
VALUES (NULL, NULL, NULL);

SELECT *
FROM TABLE_PK;

CREATE TABLE TABLE_NAME(
    CL1 VARCHAR(20),
    CL2 VARCHAR(20),
    CL3 VARCHAR(20),
    
    PRIMARY KEY(CL1),
    UNIQUE(CL1, CL2));
    
DROP TABLE TABLE_NAME;

INSERT INTO TABLE_NAME
VALUES ('ID1', 'ID2', NULL);

INSERT INTO TABLE_NAME
VALUES ('ID1', 'ID3', NULL);

CREATE TABLE DEPT_PK(
    DEPTNO NUMBER(2) PRIMARY KEY,
    DNAME VARCHAR(14),
    LOC VARCHAR(13));
    
CREATE TABLE EMP_FK(
    EMPNO NUMBER(4) PRIMARY KEY,
    ENAME VARCHAR(10),
    DEPTNO NUMBER(2) REFERENCES DEPT_PK(DEPTNO));
   
INSERT INTO DEPT_PK
VALUES (10, 'A', 1);
 
INSERT INTO EMP_FK
VALUES (1, 'A', 1);

UPDATE DEPT_PK
SET DEPTNO = 3
WHERE DEPTNO = 1;