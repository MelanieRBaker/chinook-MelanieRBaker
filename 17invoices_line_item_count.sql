/*Provide a query that shows all Invoices but includes the # of invoice line items.*/

SELECT  i.invoiceId, count (il.InvoiceLineId)  as countInvoice
from Invoice i, InvoiceLine il
where il.InvoiceId = i.invoiceId 
group by i.InvoiceId
