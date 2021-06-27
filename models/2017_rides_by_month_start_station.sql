SELECT 
    SUM(total_minutes) AS total_minutes
    , ROUND(SUM(total_minutes) / 60 ,2) AS total_hours
    , SUM(total_bike_hires) AS total_bike_hires
    , ROUND(SUM(total_minutes) / SUM(total_bike_hires), 2) AS average_duration_in_minutes
    , month
    , start_peak_travel
    , same_station_flag
    , start_station_id
    , start_station_name
    , start_station_bikes_count
    , start_station_docks_count
    , start_station_install_date
FROM {{ ref('2017_rides_by_month') }}
GROUP BY 5,6,7,8,9,10,11,12
ORDER BY total_bike_hires DESC