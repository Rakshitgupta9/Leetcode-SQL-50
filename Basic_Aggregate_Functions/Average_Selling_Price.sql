select p.product_id ,Coalesce(round(sum(p.price * u.units) / sum(u.units),2),0) as average_price from prices p left join unitssold u
on p.product_id = u.product_id and u.purchase_date between p.start_date and p.end_date
group by p.product_id;



--Rakshit Gupta
