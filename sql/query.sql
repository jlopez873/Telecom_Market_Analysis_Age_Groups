SELECT DISTINCT churn,
	   COUNT(churn) AS customers,
	   ROUND(AVG(timely_responses), 2) AS avg_timely_responses,
	   ROUND(AVG(timely_fixes), 2) AS avg_timely_fixes,
	   ROUND(AVG(timely_replacements), 2) AS avg_timely_replacements,
	   ROUND(AVG(reliability), 2) AS avg_reliability,
	   ROUND(AVG(options), 2) AS avg_options,
	   ROUND(AVG(respectful_response), 2) AS avg_respectful_response,
	   ROUND(AVG(courteous_exchange), 2) AS avg_courteous_exchange,
	   ROUND(AVG(evidence_of_active_listening), 2) AS avg_evidence_of_active_listening
FROM customer AS c
INNER JOIN survey_responses AS s
ON c.customer_id = s.customer_id
GROUP BY churn;