-- person table ����
CREATE TABLE person(
    userId      VARCHAR2(10) PRIMARY KEY,
    userPw      VARCHAR2(10) NOT NULL,
    name        VARCHAR2(20) NOT NULL,
    age         NUMBER(3)
);

-- �ڷ� ����
INSERT INTO person(userId, userPw, name, age)
VALUES ('cloud', 'cloud123', '������', 120);

COMMIT;

SELECT * FROM person;