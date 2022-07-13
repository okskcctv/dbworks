-- ���� ����
-- ���� ���� �ֹ��� ���� �����͸� ��� �˻��Ͻÿ�
SELECT *
FROM customer, orders
WHERE customer.custid = orders.custid;

-- ���� �̸��� ���� �ֹ��� ������ �ǸŰ����� �˻��Ͻÿ�
SELECT customer.name, orders.saleprice
FROM customer, orders
WHERE customer.custid = orders.custid;

-- �Ȼ� ���� �ֹ������� �˻��Ͻÿ�
SELECT *
FROM customer, orders
WHERE customer.custid = orders.custid
AND customer.name = '�Ȼ�';

-- ������ �ֹ��� ��� ������ �� �Ǹž��� ���ϰ�, ������ �����Ͻÿ�
SELECT customer.name, SUM(saleprice)
FROM customer, orders
WHERE customer.custid = orders.custid
GROUP BY customer.name
ORDER BY customer.name;

-- ���̺� 3�� ��� ����
SELECT *
FROM customer, orders, book
WHERE customer.custid = orders.custid
    AND book.bookid = orders.bookid;

-- ���� �̸��� �ֹ��� ������ �̸��� �˻��Ͻÿ�
SELECT customer.name, book.bookname
FROM customer, orders, book
WHERE customer.custid = orders.custid
    AND book.bookid = orders.bookid
ORDER BY customer.name;

-- ������ 20000���� ������ �ֹ��� ���� �̸��� ������ �̸��� �˻��Ͻÿ�
SELECT customer.name, book.bookname
FROM customer, orders, book
WHERE customer.custid = orders.custid
    AND book.bookid = orders.bookid
    AND book.price = 20000;

-- �ܺ� ����
-- ���� ���̺��� ������ ���� ��ġ���� �ʴ� ���Ե� ��� �����͸� ����
-- ������ �������� ���� ���� �����Ͽ�
-- ���� �̸��� ���� �ֹ��� ������ �ǸŰ����� ���Ͻÿ�
SELECT customer.name, orders.saleprice
FROM customer LEFT OUTER JOIN orders
    ON customer.custid = orders.custid;