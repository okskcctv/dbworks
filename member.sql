-- ex4 ���̺� ����
CREATE TABLE ex4(
    userId  VARCHAR2(10) PRIMARY KEY, -- �⺻Ű ����
    passwd  VARCHAR2(10) NOT NULL
);

ALTER TABLE ex4 RENAME TO member -- ���̺��̸� ����

-- ������ Į�� �߰�
ALTER TABLE member ADD regDate DATE -- Į�� �߰�

-- �Ի��� Į�� �߰�
ALTER TABLE member ADD hireDate VARCHAR2(20);

-- �޿� Į�� �߰�
ALTER TABLE member ADD salary NUMBER;

-- ������ ����
INSERT INTO member (userId, passwd) VALUES ('sky2022', '1234mnop');
INSERT INTO member (userId, passwd) VALUES ('sky2022', '1234mno');
INSERT INTO member (userId, passwd, regDate, salary)
VALUES ('smile2022', '1234mno', SYSDATE, 1000000);
INSERT INTO member VALUES ('night2022', 'asd1234', SYSDATE, 3000000, '2022/05/06');

-- ������ ����
UPDATE member SET salary = 2000000 WHERE userId = 'sky2022';
UPDATE member SET salary = 1000000 WHERE userId = 'river2022';

-- userId sky2022 ����ϰ� �޿� ������ �����ϱ�
UPDATE member SET salary = 1000000, regDATE = SYSDATE WHERE userId = 'sky2022';

-- ������ ����(��ü ������ ����)
DELETE FROM member;

-- ������ ����
DELETE FROM member WHERE userId = 'river2022';

-- ���̺� ����
CREATE TABLE member2 AS SELECT * FROM member;

-- ���̺� ����
DROP TABLE member2;

-- Ŀ�� ����
COMMIT;

-- �ѹ� ����
ROLLBACK;

-- ������ ��ȸ
SELECT * FROM member;

-- ������ ���� (��������)
SELECT * FROM member ORDER BY salary DESC;

-- Ư�� ������ ��ȸ
SELECT * FROM member WHERE userId = 'river2022';

-- ���̺��� ����
DESC member;