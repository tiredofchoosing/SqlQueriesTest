select Products.prod_name as '�������� ��������', Categories.cat_name as '�������� ���������' from Products
left join Relations on Products.id = Relations.prod_id
left join Categories on Categories.id = Relations.cat_id;