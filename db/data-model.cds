using { managed} from '@sap/cds/common';
namespace northwind.carbon;

entity CO2eByProduct : managed{
  key ID : Integer;
  CO2eAmount : Decimal(18,9);
  CO2eUnit : String;
}
