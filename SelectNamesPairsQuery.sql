select Products.prod_name as 'Название продукта', Categories.cat_name as 'Название категории' from Products
left join Relations on Products.id = Relations.prod_id
left join Categories on Categories.id = Relations.cat_id;