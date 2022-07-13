-- �ڷ� �˻�
SELECT * FROM book;

-- ��� ������ �̸��� ���� �˻�
SELECT bookname, price FROM book;

-- ��� ������ ������ȣ, �����̸�, ���ǻ� ���� �˻�
SELECT bookid, bookname, price, publisher 
FROM book;

-- ���� ���̺� �ִ� ��� ���ǻ� �˻�
SELECT DISTINCT publisher FROM book; -- DISTINCT �ߺ� ����

-- å��ȣ�� 5���� ����
SELECT *
FROM book
WHERE bookid = 5;   -- = ����

-- å��ȣ�� 5���� �ƴ� ����
SELECT *
FROM book
WHERE bookid <> 5;  -- <> �����ʴ�

-- ������ 20000�� �̸��� ���� �˻�
SELECT *
FROM book
WHERE price < 20000;

-- ���� ������ 10000�� �̻� 20000�� ������ ���� �˻�
-- BETWEEN ~ AND
SELECT *
FROM book
WHERE price BETWEEN 10000 AND 20000;

-- �� ������ ���
SELECT *
FROM book
WHERE price >= 10000 AND price <= 20000;

-- IN()
-- ���ǻ簡 '�½�����' Ȥ�� '���ѹ̵��'�� ���� �˻�
SELECT *
FROM book
WHERE publisher NOT IN('�½�����', '���ѹ̵��');

SELECT *
FROM book
WHERE publisher = '�½�����' OR publisher = '���ѹ̵��';

-- LIKE ������ : %��ȣ ���
-- �౸�� ���縦 ������ ���ǻ� �˻�
SELECT *
FROM book
WHERE bookname LIKE '�౸�� ����';

-- ���� �̸��� �౸�� ���Ե� ���ǻ� �˻�
-- �౸�� �����ϸ� '�౸%'�� ǥ��
SELECT bookname, publisher
FROM book
WHERE bookname LIKE '%�౸%';

-- �౸�� ���� ������ 20000�� �̻�
SELECT bookname, publisher, price
FROM book
WHERE bookname LIKE '%�౸%' AND price >= 20000;

-- ������ �̸������� ����
SELECT *
FROM book
ORDER BY bookname DESC;

-- ������ �������� �������� ������ ������ ���ǻ������ ��������
SELECT *
FROM book
ORDER BY price DESC, publisher ASC;