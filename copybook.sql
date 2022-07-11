-- book table 복사
CREATE TABLE t_book
AS SELECT *
FROM book;

COMMIT;

ROLLBACK;

SELECT *
FROM t_book;

-- 축구의 역사 책 가격 7000 -> 10000으로 변경
UPDATE t_book
SET price = 10000
WHERE bookid = 1;

-- 양궁의 실제 출판사 이름 굿스포츠 -> 나무수로 변경
UPDATE t_book
SET publisher = '나무수'
WHERE bookid = 6;       -- primary key로 수정하는것이 오류를 줄일수 있음

-- 야구를 부탁해 출판사 이름 이상미디어 -> 삼성당으로 가격을 13000 -> 15000으로 변경
UPDATE t_book
SET publisher = '삼성당', price = 15000
WHERE bookid = 8;

-- 도서번호가 5번인 책을 삭제
DELETE FROM t_book
WHERE bookid = 5;

-- 골프 바이블 삭제
DELETE FROM t_book
WHERE bookid = 4;