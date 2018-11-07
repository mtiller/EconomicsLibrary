within Economics;
package Types
  type PriceDifference = Real(quantity="Price", unit="currency");
  type Price = Real(min=0, quantity="Price", unit="currency");
  type SalesVolume = Real(quantity="Units", unit="sales");
  type PriceSensitivity = Real(quantity="Sensitivity", unit="currency/sales");
  type TaxRate = Real(quantity="Tax", unit="1", min=0, max=1);
end Types;
