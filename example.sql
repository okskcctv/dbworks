-- ���̺� ex2 ����
CREATE TABLE ex2(
    col_date      DATE,         -- ��, ��, ��
    col_timestamp TIMESTAMP     -- ��, ��, ��, ��, ��, ��
);

-- ���̺� ex3 ����
CREATE TABLE ex3(
    col_null        CHAR(10),
    col_not_null    CHAR(10) NOT NULL
);

COMMIT;

-- ex3�� ������ �Է�
INSERT INTO ex3 VALUES ('Hello', ''); -- NOT NULL �������� ����
INSERT INTO ex3 VALUES ('', 'Hello');

-- ex3 ������ �˻�
SELECT * FROM ex3;

-- ������ �Է�(���糯¥ - SYSDATE �Է�)
INSERT INTO ex2 VALUES (SYSDATE, SYSTIMESTAMP);

COMMIT;

-- ������ �˻�
SELECT * FROM ex2;