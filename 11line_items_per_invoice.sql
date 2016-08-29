/* Looking at the InvoiceLine table, 
provide a query that COUNTs the number 
of line items for each Invoice*/

SELECT i.InvoiceId, count (i.InvoiceLineId) as LineItemsInInvoice
FROM InvoiceLine as i
GROUP BY i.InvoiceId
Order by LineItemsInInvoice desc