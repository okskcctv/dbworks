-- book table 생성
CREATE TABLE book(
    bookid NUMBER PRIMARY KEY,
    bookname VARCHAR2(40),
    publisher VARCHAR2(40),
    price NUMBER
);

-- customer table 생성
CREATE TABLE customer(
    custid  NUMBER PRIMARY KEY,
    name    VARCHAR2(40),
    address VARCHAR2(50),
    phone   VARCHAR2(20)
);

-- order table 생성
CREATE TABLE orders(
    orderid     NUMBER PRIMARY KEY,
    custid      NUMBER,
    bookid      NUMBER,
    saleprice   NUMBER,
    orderdate  DATE,
    FOREIGN KEY(custid) REFERENCES customer(custid),    -- 왜래키(custid)
    FOREIGN KEY(bookid) REFERENCES book(bookid)         -- 왜래키(bookid)
);

ALTER TABLE orders RENAME COLUMN orederdate to orderdate; -- 오타 수정


-- book 자료 삽입
INSERT INTO book VALUES (1, '축구의 역사', '굿스포츠', 7000);
INSERT INTO book VALUES (2, '축구아는 여자', '나무수', 13000);
INSERT INTO book VALUES (3, '축구의 이해', '대한미디어', 22000);
INSERT INTO book VALUES (4, '골프 바이블', '대한미디어', 35000);
INSERT INTO book VALUES (5, '피겨 교본', '굿스포츠', 8000);
INSERT INTO book VALUES (6, '양궁의 실제', '굿스포츠', 6000);
INSERT INTO book VALUES (7, '야구의 추억', '이상미디어', 20000);
INSERT INTO book VALUES (8, '야구를 부탁해', '이상미디어', 13000);
INSERT INTO book VALUES (9, '올림픽 이야기', '삼성당', 7500);
INSERT INTO book VALUES (10, 'Olympic Champions', 'Pearson', 13000);

-- customer 자료 삽입
INSERT INTO customer VALUES (1, '박지성', '영국 맨체스터', '000-5000-0001');
INSERT INTO customer VALUES (2, '김연아', '대한민국 서울', '000-6000-0001');
INSERT INTO customer VALUES (3, '안산', '대한민국 광주광역시', '000-7000-0001');
INSERT INTO customer VALUES (4, '류현진', '미국 토론토', NULL);
INSERT INTO customer VALUES (5, '손흥민', '영국 토트넘', '000-8000-0001');

-- order 자료 삽입
INSERT INTO orders VALUES(1, 1, 1, 6000, TO_DATE('2018-07-01', 'YYYY-MM-DD'));
INSERT INTO orders VALUES(2, 1, 3, 21000, TO_DATE('2018-07-03', 'YYYY-MM-DD'));
INSERT INTO orders VALUES(3, 2, 5, 8000, TO_DATE('2018-07-03', 'YYYY-MM-DD'));
INSERT INTO orders VALUES(4, 3, 6, 6000, TO_DATE('2018-07-04', 'YYYY-MM-DD'));
INSERT INTO orders VALUES(5, 4, 7, 20000, TO_DATE('2018-07-05', 'YYYY-MM-DD'));
INSERT INTO orders VALUES(6, 1, 2, 12000, TO_DATE('2018-07-07', 'YYYY-MM-DD'));
INSERT INTO orders VALUES(7, 4, 8, 13000, TO_DATE('2018-07-07', 'YYYY-MM-DD'));
INSERT INTO orders VALUES(8, 3, 10, 12000, TO_DATE('2018-07-08', 'YYYY-MM-DD'));
INSERT INTO orders VALUES(9, 2, 10, 7000, TO_DATE('2018-07-09', 'YYYY-MM-DD'));
INSERT INTO orders VALUES(10, 3, 8, 13000, TO_DATE('2018-07-10', 'YYYY-MM-DD'));

-- 주문 번호1번의 책 가격을 7000원으로 변경
UPDATE orders SET saleprice = 7000 WHERE orderid = 1;

SELECT * FROM orders;

SELECT TO_CHAR(orderdate, 'YYYY-MM-DD') AS orderdate
FROM orders;

SELECT * FROM customer;

COMMIT;