with customers as (

    select * from `dbtproject-412012`.`Ecommerce_Analysis`.`stg_customers`

),

orders as (

    select * from `dbtproject-412012`.`Ecommerce_Analysis`.`stg_orders`

),

customer_orders as (

    select
        customer_id,
        MIN(DATE(order_date)) AS first_order_date,
        MAX(DATE(order_date)) AS most_recent_order_date,
        count(order_id) as number_of_orders,



    from orders

    group by 1

),


final as (

    select
        customers.customer_id,
        customers.customer_city,
        customers.customer_state,
        customer_orders.first_order_date,
        customer_orders.most_recent_order_date,
        coalesce(customer_orders.number_of_orders, 0) as number_of_orders,
        orders.price,
        orders.quantity,
        orders.freight_value as cost_of_shipping,
        orders.price * orders.quantity as Revenue 

        




    from customers

    left join customer_orders using (customer_id)
    left join orders on customers.customer_id = orders.customer_id




)

select * from final