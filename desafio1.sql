SELECT COUNTRY_NAME AS País,
        IF(EXISTS
            (SELECT *
              FROM hr.regions AS r
              WHERE r.REGION_NAME = 'Europe'
                AND c.REGION_ID = r.REGION_ID ), 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries AS c;
