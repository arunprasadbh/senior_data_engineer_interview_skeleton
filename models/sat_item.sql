SELECT
    MD5(item.id) AS item_hk,
    publish_flag,
    CURRENT_DATE() AS loaddate,
    'cpg' AS source
FROM {{ source('cpg', 'item') }}