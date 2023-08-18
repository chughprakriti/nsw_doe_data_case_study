select master.School_code,master.School_name,multi_age.multi_age_composite_class
,attendance."2014" as attendance_2014,multi_age."2014" as multi_age_2014
,attendance."2015" as attendance_2015,multi_age."2015" as multi_age_2015
,attendance."2016" as attendance_2016,multi_age."2016" as multi_age_2016
,attendance."2017" as attendance_2017,multi_age."2017" as multi_age_2017
,attendance."2018" as attendance_2018,multi_age."2018" as multi_age_2018
,attendance."2019" as attendance_2019,multi_age."2019" as multi_age_2019
,attendance."2021" as attendance_2021,multi_age."2021" as multi_age_2021
,attendance."2022" as attendance_2022,multi_age."2022" as multi_age_2022
from public_school_nsw_master_dataset as master
join attendance_data_final_2022 as attendance
on master.School_code = attendance.school_code
join multi_age_composite_classes_final_2022_unpivot as multi_age
on attendance.school_code = multi_age."School code"
where multi_age.multi_age_composite_class = 'PCT_COMPOSITE_CLASSES'