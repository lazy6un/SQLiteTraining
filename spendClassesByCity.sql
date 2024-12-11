SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total,
	CASE
	WHEN total <2.00 THEN 'Baseline'
	WHEN total BETWEEN 2.00 AND 6.99 THEN 'Low Spend'
	WHEN total BETWEEN 7.00 AND 15.00 THEN 'Target Spend'
	ELSE 'Big Spender!'
	END AS PurchaseType

FROM
	Invoice
ORDER BY
	BillingCity