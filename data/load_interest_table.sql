\copy interests(interest_name,created_at,updated_at) FROM 'data/interests.csv' WITH (FORMAT csv, HEADER true);
