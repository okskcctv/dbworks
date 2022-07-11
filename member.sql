-- ex4 테이블 생성
CREATE TABLE ex4(
    userId  VARCHAR2(10) PRIMARY KEY, -- 기본키 선언
    passwd  VARCHAR2(10) NOT NULL
);

ALTER TABLE ex4 RENAME TO member -- 테이블이름 변경

-- 가입일 칼럼 추가
ALTER TABLE member ADD regDate DATE -- 칼럼 추가

-- 입사일 칼럼 추가
ALTER TABLE member ADD hireDate VARCHAR2(20);

-- 급여 칼럼 추가
ALTER TABLE member ADD salary NUMBER;

-- 데이터 삽입
INSERT INTO member (userId, passwd) VALUES ('sky2022', '1234mnop');
INSERT INTO member (userId, passwd) VALUES ('sky2022', '1234mno');
INSERT INTO member (userId, passwd, regDate, salary)
VALUES ('smile2022', '1234mno', SYSDATE, 1000000);
INSERT INTO member VALUES ('night2022', 'asd1234', SYSDATE, 3000000, '2022/05/06');

-- 데이터 수정
UPDATE member SET salary = 2000000 WHERE userId = 'sky2022';
UPDATE member SET salary = 1000000 WHERE userId = 'river2022';

-- userId sky2022 등록일과 급여 데이터 수정하기
UPDATE member SET salary = 1000000, regDATE = SYSDATE WHERE userId = 'sky2022';

-- 데이터 삭제(전체 데이터 삭제)
DELETE FROM member;

-- 데이터 삭제
DELETE FROM member WHERE userId = 'river2022';

-- 테이블 복사
CREATE TABLE member2 AS SELECT * FROM member;

-- 테이블 삭제
DROP TABLE member2;

-- 커밋 수행
COMMIT;

-- 롤백 수행
ROLLBACK;

-- 데이터 조회
SELECT * FROM member;

-- 데이터 정렬 (내림차순)
SELECT * FROM member ORDER BY salary DESC;

-- 특정 조건을 조회
SELECT * FROM member WHERE userId = 'river2022';

-- 테이블의 구조
DESC member;