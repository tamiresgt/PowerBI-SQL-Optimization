create view vwSales as
select
SalesKey,
CONVERT(varchar(10),DateKey,103) as 'DateKey',
StoreKey,
ProductKey,
CurrencyKey,
UnitCost,
UnitPrice,
SalesQuantity,
ReturnQuantity,
ReturnAmount,
DiscountAmount,
CONCAT(CONVERT(varchar(10),DateKey,103),CurrencyKey) as 'DateCurrencyKey'
from FactSales