/*

	# 데이터 조작어 (DML : Data Manipulation Language) 
	
		[ DELETE문 ]
	
		- 테이블의 레코드를 삭제한다.
		- 대부분 where절과 같이 사용한다.
		- MySQL에서 safe update 정책이 걸려 있어서 safe update를 설정을 해제해야 delete쿼리를 사용할 수 있다.
	       좌측 상단 메뉴 Edit클릭 > Preference클릭 > SQL Editor클릭 Safe Updates 체크박스 해지 > MySQL Workbench 재시작
	   
	   [ 레코드 삭제 형식 ]
	   
	    - DELETE FROM TABLE WHERE FIELD_CONDITION='DATA';
	    
		EX) 
			DELETE FROM 
						MEMBER 
			WHERE 
						NO=1;

*/

# 상품코드가 'P10006'인 레코드 삭제
DELETE FROM 
		PRODUCT 
WHERE 
		PRODUCT_CD='P10006';

SELECT * FROM PRODUCT;

# 상품코드가 'P10005'인 레코드 삭제
DELETE FROM PRODUCT 
WHERE PRODUCT_CD='P10005';

SELECT * FROM PRODUCT;
# 상품코드가 'P10004'인 레코드 삭제
DELETE FROM
		PRODUCT
WHERE
		PRODUCT_CD='P10004';
        
SELECT * FROM PRODUCT;
# 전체 데이터 삭제 예시
DELETE FROM PRODUCT;

COMMIT;

SELECT * FROM PRODUCT;