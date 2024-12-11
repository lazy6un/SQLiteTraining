SELECT
	count(BillingCity)
FROM
	Invoice
WHERE
	BillingCity IN ("Brussels")