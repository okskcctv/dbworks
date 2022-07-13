-- SUM, COUNT, AVG
-- 주문 테이블 검색
-- 고객이 주문한 도서의 총 판매액
SELECT SUM(saleprice) AS 총매출    -- AS 생략가능
FROM orders;

-- '김연아' 고객이 주문한 도서의 총 판매액
SELECT SUM(saleprice) AS 총매출
FROM orders
WHERE custid = 2;

-- 고객이 주문한 도서의 총 판매액, 평균값
SELECT SUM(saleprice) AS Total,
       AVG(saleprice) AS Average
FROM orders;

-- 마당 서점의 도서 판매 건수
SELECT COUNT(*) AS 총판매건수
FROM orders;

-- 고객별로 주문한 도서의 총 수량과 판매액
SELECT custid, COUNT(*) 도서수량, SUM(saleprice) 총액
FROM orders
GROUP BY custid; -- 그룹으로 묶어야 할때는 GROUP BY를 사용한다

-- 가격이 8000원 이상인 도서를 구매한 고객에 대하여 고객별 주문 도서의 총 수량을 구하시오
-- 단 2권 이상 구매한 고객만 구하시오
-- HAVING 절은 GROUP BY 질의 결과 나타내는 그룹을 제한하는 역할을 한다.
SELECT custid, COUNT(*)
FROM orders
WHERE saleprice >= 8000
GROUP BY custid
HAVING count(*) >= 2;

SELECT * FROM book;
SELECT * FROM customer;
SELECT * FROM orders;