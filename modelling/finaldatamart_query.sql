create or replace table finaldatamart as
select master.*
,attendance.Year,Attendance,multi_age_composite_class
from public_school_nsw_master_dataset as master
join attendance_data_final_2022_unpivot as attendance
on master.School_code = attendance.school_code
join multi_age_composite_classes_final_2022_unpivot as multi_age
on attendance.school_code = multi_age.school_code
and attendance.Year = multi_age.Year