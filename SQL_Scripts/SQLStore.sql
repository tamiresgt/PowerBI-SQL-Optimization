create view vwStore as
select
Store.StoreKey,
Store.StoreName,
Store.StoreType,
Store.[Status],
DimGeography.RegionCountryName as 'Country',
DimGeography.ContinentName as 'Continent'
from DimStore Store
LEFT JOIN DimGeography ON Store.GeographyKey = DimGeography.GeographyKey
