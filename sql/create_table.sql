CREATE TABLE IF NOT EXISTS public.services (
	customer_id VARCHAR NOT NULL, 
	internet_service VARCHAR, 
	phone VARCHAR (3), 
	multiple VARCHAR (3), 
	online_security VARCHAR (3), 
	online_backup VARCHAR (3), 
	device_protection VARCHAR (3), 
	tech_support VARCHAR (3),
	CONSTRAINT services_pkey PRIMARY KEY (customer_id),
	CONSTRAINT services_fkey FOREIGN KEY (customer_id)
	REFERENCES customer (customer_id)
);

CREATE TABLE IF NOT EXISTS public.survey_responses (
	customer_id VARCHAR NOT NULL, 
	timely_responses INT, 
	timely_fixes INT, 
	timely_replacements INT, 
	reliability INT, 
	options INT, 
	respectful_response INT,
	courteous_exchange INT, 
	evidence_of_active_listening INT,
	CONSTRAINT survey_responses_pkey PRIMARY KEY (customer_id),
	CONSTRAINT survey_responses_fkey FOREIGN KEY (customer_id)
	REFERENCES customer (customer_id)
);


