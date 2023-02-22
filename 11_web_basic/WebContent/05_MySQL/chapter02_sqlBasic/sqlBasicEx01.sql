/*

	# 데이터 조작어 (DML :  Data Manipulation Language) 
	
		[ SELECT문 ] 
	
		- 테이블에 저장되어 있는 데이터를 조회하거나 검색하기 위한 명령어
		
		
		[ 레코드 출력 형식 ]
	    
	   - SELECT  컬럼명1, 컬럼명2, ...  
	   	  FROM 테이블명 
	   	  
	   - SELECT  	컬럼명1, 컬럼명2, ...  
	   	 FROM 		테이블명
	   	 WHERE 	    조건절
	   	 GROUP BY   그룹컬럼명
	   	 HAVING 	그룹핑 조건절
	   	 ORDER BY   정렬방식
	   	 LIMIT	    출력 개수 지정
	   	 
	   	 
	   [ SELECT문의 실행 순서 ]
	   
	   - FROM > WHERE > GROUP BY > HAVING > SELECT > ORDER BY > LIMIT
	   	 
	   	  
	
	   EX)
	   
		   1) 전체 컬럼 조회
		   SELECT  
					* 
		   FROM 
					MEMBER;
		   
		   2) 특정 컬럼 조회
		   SELECT 
					NO,
					NAME 
		   FROM 
					MEMBER;

*/

CREATE DATABASE DML_TEST;
USE DML_TEST;

CREATE TABLE PRODUCT (	
	PRODUCT_CD 		VARCHAR(20),
	PRODUCT_NM 		VARCHAR(100),
	PRICE			INT,
	REG_DT			DATETIME
);


# 실습을 위한 데이터 셋팅 예시
INSERT INTO PRODUCT VALUES ('P10001' , '게이밍마우스패드' , 24850 , '2020-02-11'),
						   ('P10002' , '조립 PC' , 1000000 , '2020-06-30'),
						   ('P10003' , '브리츠 2채널 스피커' , 30750 , '2020-08-08'),
						   ('P10004' , '기계식키보드 화이트(적축)', 38150 , '2020-12-30'),
						   ('P10005' , 'USB 8GB', 4700 , '2021-01-07'),
						   ('P10005' , 'USB 16GB' , 8340 , '2021-06-27'),
						   ('P10005' , 'USB 32GB' , 15000 , '2021-09-20'),
						   ('P10005' , 'USB 허브' , 23500 , '2021-12-20');
						   
# 전체 컬럼 조회
SELECT * FROM DML_TEST.PRODUCT;


# PRODUCT_CD 컬럼만 조회
SELECT 
		PRODUCT_CD 
FROM 
		PRODUCT;

		
# PRODUCT_CD , PRODUCT_NM 컬럼만 조회	
SELECT 
		PRODUCT_CD, 
        PRODUCT_NM 
FROM 
		PRODUCT;
		
# PRODUCT_CD , PRODUCT_NM , PRICE컬럼만 조회	  
SELECT PRODUCT_CD, PRODUCT_NM, PRICE 
FROM   PRODUCT;
		
# PRODUCT_CD , PRODUCT_NM , PRICE , REG_DT 컬럼만 조회	
SELECT PRODUCT_CD, PRODUCT_NM, PRICE, REG_DT
FROM   PRODUCT;

SELECT *
FROM   PRODUCT;
		
# 컬럼을 적는 순서에 따라 출력되는 순서가 달라진다.
SELECT PRICE, REG_DT, PRODUCT_CD, PRODUCT_NM
FROM PRODUCT;

		
# 테이블에 존재하지 않는 연산 데이터를 조회 할 수 있다. AS 키워드로 별칭을 지정할 수 있으며 별칭은 생략할 수 있다.
SELECT
		PRICE,
        PRICE * 0.1 AS ADDITIONAL_TAX,
        PRICE + PRICE * 0.1 AS TOTAL_PRICE
FROM
		PRODUCT;
        