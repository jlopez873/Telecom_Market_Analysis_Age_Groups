COPY survey_responses (
	customer_id, 
	timely_responses, 
	timely_fixes, 
	timely_replacements, 
	reliability, 
	options, 
	respectful_response, 
	courteous_exchange, 
	evidence_of_active_listening
) 
FROM '/Users/javilopezcastillo/Downloads/churnfiles/Survey_Responses.csv' 
DELIMITER ',' 
CSV HEADER;