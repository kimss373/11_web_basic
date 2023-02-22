/*

	# 데이터 조작어 (DML : Data Manipulation Language) 
	
		[ UPDATE문 ]
		
		 - 테이블의 레코드를 수정한다.
		 - 대부분 where절과 같이 사용한다.
		 - MySQL에서 safe update 정책이 걸려 있어서 safe update를 설정을 해제해야 update쿼리를 사용할 수 있다.
	       좌측 상단 메뉴 Edit클릭 > Preference클릭 > SQL Editor클릭 Safe Updates 체크박스 해지 > MySQL Workbench 재시작
	
		[ 레코드 수정 형식 ]
	    
	   - UPDATE 
	   			테이블명 
	   	 SET 
	   	 		컬럼명1 = 값1 ,
	   	 		컬럼명2 = 값2
	   	 WHERE
	   	 		조건식
	   
	  
	  
	  EX) 
			UPDATE 
					MEMBER 
			SET 
					NAME = 'JACKSON', 
					HEIGHT = '185.1' 
			WHERE 
					NO = 3;

*/

UPDATE PRODUCT SET PRODUCT_NM = '조립PC' WHERE PRODUCT_CD='P10003';



# 'P10003'상품의 가격을 1000000, 등록시간을 현재시간으로 변경하기.
UPDATE 
		PRODUCT 
SET 
        PRICE=1000000, 
        REG_DT = NOW() 
WHERE 
        PRODUCT_CD='P10003';
		
# 'P10003'상품의 가격을 기존가격에서 1000원 증가 , 등록시간을 현재시간으로 변경하기.
UPDATE 
		PRODUCT 
SET 
		PRICE = PRICE + 1000
WHERE
		PRODUCT_CD = 'P10003';


SELECT * FROM PRODUCT;
# 'P10004'상품의 가격을 30750으로 변경 , 등록시간을 현재시간으로 변경하기.		
UPDATE
		PRODUCT
SET
		PRICE = 30750,
        REG_DT = NOW()
WHERE
		PRODUCT_CD = 'P10004';

SELECT * FROM PRODUCT;
# 'P10005'등록시간을 현재시간으로 변경하기.				
UPDATE
		PRODUCT
SET
		REG_DT = NOW()
WHERE
		PRODUCT_CD = 'P10005';

COMMIT;

SELECT * FROM PRODUCT;