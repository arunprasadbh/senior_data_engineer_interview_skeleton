SELECT
    MD5(CONCAT(links_country.item_id, links_country.lookup_id)) as item_country_hk,
    MD5(links_country.item_id) AS item_hk,
    MD5(links_country.lookup_id) AS country_hk,
    CURRENT_DATE() AS loaddate,
    'cpg' AS source
FROM {{ source('cpg', 'links_country') }}