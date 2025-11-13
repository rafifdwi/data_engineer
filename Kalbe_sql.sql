# 1. Berapa rata2 umur customer jika dilihat dari marital statusnya ?

select distinct "Marital Status" from customer;

select "Marital Status", avg("Age") from customer
group by "Marital Status";

# 2. Berapa rata2 umur customer jika dilihat dari gendernya ?

select distinct "Gender" from customer;

select case 
	when "Gender" = 0 then 'Female'
	when "Gender" = 1 then 'Male'
	end as "Gender", 
avg("Age") as "Rata2_Umur" from customer
group by "Gender";

# 3. Tentukan nama store dengan total quantity terbanyak

select distinct "StoreName" from store;

select * from transaction;

select "StoreName", sum("Qty") as "TotalTransaksi" from store
inner join transaction on store."StoreID" = transaction."StoreID"
group by "StoreName"
order by "TotalTransaksi" desc;
	
# 4. Tentukan nama produk terlaris dengan total amount terbanyak

select distinct "Product Name" from product;

select * from transaction;

select "Product Name", sum("TotalAmount") as "TotalBelanja" from product
inner join transaction on product."ProductID" = transaction."ProductID"
group by "Product Name"
order by "TotalBelanja" desc;