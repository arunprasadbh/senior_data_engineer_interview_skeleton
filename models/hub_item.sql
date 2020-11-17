SELECT
    item.id AS item_bk,
    MD5(item.id) AS item_hk,
    CURRENT_DATE() AS loaddate,
    'cpg' AS source
FROM
    {{ source('cpg', 'item') }}