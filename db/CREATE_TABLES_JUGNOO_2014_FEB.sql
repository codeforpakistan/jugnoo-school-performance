-- CREATE TABLE schools
CREATE TABLE `schools` select si.emiscode, si.school_name from jugnoo.school_info si where si.emiscode is not null;
-- CREATE TABLE districts
CREATE TABLE `districts` select DISTINCT(si.dist_id), si.dist_nm from jugnoo.school_info si;
-- COMMIT CHANGES
commit;