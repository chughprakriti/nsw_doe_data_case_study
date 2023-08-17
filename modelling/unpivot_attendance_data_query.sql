create table main.attendance_data_final_2022_unpivot as
select * from
(
UNPIVOT 
(select school_code,school_name,
"2014",
"2015",
"2016",
"2017",
"2018",
"2019",
"2021",
"2022"
from attendance_data_final_2022
)
ON 
"2014",
"2015",
"2016",
"2017",
"2018",
"2019",
"2021",
"2022"
into
NAME Year
VALUE Attendance
)unpivot_tb