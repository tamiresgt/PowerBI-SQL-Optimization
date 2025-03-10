create view vwExchange as
SELECT 
FactExchangeRate.ExchangeRateKey,
CONVERT(varchar(10),FactExchangeRate.DateKey,103) as 'DateKey',
FactExchangeRate.AverageRate,
DimCurrency.CurrencyName,
CONCAT(CONVERT(varchar(10),FactExchangeRate.DateKey,103),FactExchangeRate.CurrencyKey) as 'DateCurrencyKey'
from FactExchangeRate
LEFT JOIN DimCurrency ON FactExchangeRate.CurrencyKey=DimCurrency.CurrencyKey
