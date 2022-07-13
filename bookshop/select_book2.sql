-- SUM, COUNT, AVG
-- �ֹ� ���̺� �˻�
-- ���� �ֹ��� ������ �� �Ǹž�
SELECT SUM(saleprice) AS �Ѹ���    -- AS ��������
FROM orders;

-- '�迬��' ���� �ֹ��� ������ �� �Ǹž�
SELECT SUM(saleprice) AS �Ѹ���
FROM orders
WHERE custid = 2;

-- ���� �ֹ��� ������ �� �Ǹž�, ��հ�
SELECT SUM(saleprice) AS Total,
       AVG(saleprice) AS Average
FROM orders;

-- ���� ������ ���� �Ǹ� �Ǽ�
SELECT COUNT(*) AS ���ǸŰǼ�
FROM orders;

-- ������ �ֹ��� ������ �� ������ �Ǹž�
SELECT custid, COUNT(*) ��������, SUM(saleprice) �Ѿ�
FROM orders
GROUP BY custid; -- �׷����� ����� �Ҷ��� GROUP BY�� ����Ѵ�

-- ������ 8000�� �̻��� ������ ������ ���� ���Ͽ� ���� �ֹ� ������ �� ������ ���Ͻÿ�
-- �� 2�� �̻� ������ ���� ���Ͻÿ�
-- HAVING ���� GROUP BY ���� ��� ��Ÿ���� �׷��� �����ϴ� ������ �Ѵ�.
SELECT custid, COUNT(*)
FROM orders
WHERE saleprice >= 8000
GROUP BY custid
HAVING count(*) >= 2;

SELECT * FROM book;
SELECT * FROM customer;
SELECT * FROM orders;