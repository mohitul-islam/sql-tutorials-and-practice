use sql_store

select * from sql_store.orders

-- here 'as' copy of a table and remove PK and AI column (check in schemas)
create Table order_archived as select * from orders

