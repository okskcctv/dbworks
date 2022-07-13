-- 자료 검색
SELECT * FROM book;

-- 모든 도서의 이름과 가격 검색
SELECT bookname, price FROM book;

-- 모든 도서의 도서번호, 도서이름, 출판사 가격 검색
SELECT bookid, bookname, price, publisher 
FROM book;

-- 도서 테이블에 있는 모든 출판사 검색
SELECT DISTINCT publisher FROM book; -- DISTINCT 중복 제거

-- 책번호가 5번인 도서
SELECT *
FROM book
WHERE bookid = 5;   -- = 같다

-- 책번호가 5번이 아닌 도서
SELECT *
FROM book
WHERE bookid <> 5;  -- <> 같지않다

-- 가격이 20000원 미만인 도서 검색
SELECT *
FROM book
WHERE price < 20000;

-- 범위 가격이 10000원 이상 20000원 이하인 도서 검색
-- BETWEEN ~ AND
SELECT *
FROM book
WHERE price BETWEEN 10000 AND 20000;

-- 비교 연산자 사용
SELECT *
FROM book
WHERE price >= 10000 AND price <= 20000;

-- IN()
-- 출판사가 '굿스포츠' 혹은 '대한미디어'인 도서 검색
SELECT *
FROM book
WHERE publisher NOT IN('굿스포츠', '대한미디어');

SELECT *
FROM book
WHERE publisher = '굿스포츠' OR publisher = '대한미디어';

-- LIKE 연산자 : %기호 사용
-- 축구의 역사를 출판한 출판사 검색
SELECT *
FROM book
WHERE bookname LIKE '축구의 역사';

-- 도서 이름에 축구가 포함된 출판사 검색
-- 축구로 시작하면 '축구%'로 표기
SELECT bookname, publisher
FROM book
WHERE bookname LIKE '%축구%';

-- 축구에 관한 도서중 20000원 이상
SELECT bookname, publisher, price
FROM book
WHERE bookname LIKE '%축구%' AND price >= 20000;

-- 도서를 이름순으로 정렬
SELECT *
FROM book
ORDER BY bookname DESC;

-- 도서의 가격으로 내림차순 가격이 같으면 출판사순으로 오름차순
SELECT *
FROM book
ORDER BY price DESC, publisher ASC;