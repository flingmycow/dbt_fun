SELECT *
FROM {{ ref('2017_rides_by_month')}}
WHERE end_station_install_date >= '2017-01-01'