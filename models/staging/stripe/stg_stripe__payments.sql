with
    source as (select * from {{ source("stripe", "payments") }}),

    final as (
        select
            id as payment_id,
            orderid as order_id,
            paymentmethod as payment_method,
            status,
            -- amount is stored in cents, convert it to dollars
            created as created_at,
            amount / 100 as amount
        from source
    )

select *
from final
