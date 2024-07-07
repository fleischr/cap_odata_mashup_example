using northwind.carbon as carbonmaster from '../db/data-model';
using { northwind.Products as northwindproducts} from './external/northwind.csn';
using { northwind.Order_Details as northwindorders } from './external/northwind.csn';
service CatalogService {
    entity CO2eByProduct as projection on carbonmaster.CO2eByProduct;
    entity ProductsWithCO2e as select from northwindproducts as norp left join CO2eByProduct as co2p on norp.ProductID=co2p.ID {
        key ProductID, ProductName, SupplierID, CategoryID,
        QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder,
        ReorderLevel, Discontinued, Category, Supplier,
        CO2eAmount, CO2eUnit
    }
    
    //entity OrdersDetailsWithCO2e as select from northwindorders as nord left join ProductsWithCO2e on nord.ProductID=ProductsWithCO2e.ProductID{
    //    key OrderID, key nord.ProductID as ProductID, nord.UnitPrice as UnitPrice, Quantity, Discount, Order, CO2eAmount, CO2eUnit
    //}
}
