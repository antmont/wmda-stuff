-- SQL to create the split of field type (e.g. "F7") into
-- field_length containing the length as an integer and
-- emdis_type_id a foreign key into emdisfieldtype

update wmdadict_emdisfield
    SET field_length = to_number(right(field_type, char_length(field_type) - 1 ), '999');

UPDATE public.wmdadict_emdisfield
	SET emdis_type_id = CASE
    	WHEN left(field_type, 1) = 'A' THEN 1
        WHEN left(field_type, 1) = 'N' THEN 2
        WHEN left(field_type, 1) = 'R' THEN 3
		WHEN left(field_type, 1) = 'F' THEN 4
        WHEN left(field_type, 1) = 'D' THEN 5
        WHEN left(field_type, 1) = 'B' THEN 6
    END;
