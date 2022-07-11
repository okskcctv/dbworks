-- 부서와 사원 테이블 생성
CREATE TABLE department(
    deptid   NUMBER,                      -- 부서 번호
    deptname VARCHAR2(20) NOT NULL,     -- 부서 이름
    location VARCHAR2(20) NOT NULL,     -- 사무실 위치
    PRIMARY KEY(deptid)
);

CREATE TABLE employee(
    empid   NUMBER(3) PRIMARY KEY,        -- 자릿 수 제한
    empname VARCHAR2(20) NOT NULL,
    age     NUMBER,
    deptid  NUMBER,
    CONSTRAINT EMP_FK FOREIGN KEY(deptid) REFERENCES department(deptid)
    -- CONSTRAINT 외래키 제약 이름 선언
);


-- 부서 자료 입력
INSERT INTO department VALUES (10, '전산팀', '서울');
INSERT INTO department VALUES (20, '총무팀', '인천');

-- 사원 자료 추가
INSERT INTO employee VALUES (101, '이강', 27, 10);
INSERT INTO employee VALUES (102, '김산', 28, 20);
INSERT INTO employee VALUES (103, '정들', 35, 30); -- 부서코드 없음

-- 부서 삭제
DELETE FROM department WHERE deptid = 10; -- employee 테이블에서 참조하고 있어서 오류

-- 외래키 제약 조건 삭제
ALTER TABLE employee DROP CONSTRAINT EMP_FK;
    
COMMIT;

SELECT * FROM department;

SELECT * FROM employee;