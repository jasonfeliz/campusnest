\copy colleges(college_name,city,state,created_at,updated_at,email_url) FROM 'data/colleges.csv' WITH (FORMAT csv, HEADER true);
