-- ���̺� �����
CREATE TABLE ex1(
    column1 CHAR(10),       -- ���� ����
    column2 VARCHAR2(10),   -- ���� ����
    column3 NUMBER
)

-- ������ �Է�
INSERT INTO ex1 (column1, column2, column3) VALUES ('abc' ,'abc', 10);
INSERT INTO ex1 (column1, column2) VALUES ('�츮' ,'�츮');

-- �ڷ��� ����, ����, ���� ���� ����
COMMIT;

-- ������ �˻�(��ü �˻�)
SELECT * FROM ex1;

-- Ư�� Į��(��) �˻�
SELECT column1, column2 FROM ex1;

-- CHAR�� VARCHAR2�� ũ���
-- Į���� ��Ī ����� ��� : Į���� As ����
SELECT column1, LENGTH(column1) As len1,
        column2, LENGTH(column2) As len2
    FROM ex1;    