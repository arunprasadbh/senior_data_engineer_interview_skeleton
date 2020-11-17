SELECT
    lk_country.id AS country_bk,
    MD5(lk_country.id) AS country_hk,
    CURRENT_DATE() AS loaddate,
    'cpg' AS source
FROM
    {{ source('cpg', 'lk_country') }}