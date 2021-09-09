with orders as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from {{ source('jaffle_shop','orders') }}

)

select * from orders

--{{limit_dev_data(column_name='order_date',dev_days_data=4000)}}