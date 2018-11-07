within Economics;
package Types
  type PriceDifference = Real(quantity="Price");
  type Price = Real(min=0, quantity="Price");
  type SalesVolume = Real(quantity="Units");
  type PriceSensitivity = Real(quantity="Sensitivity");
  type TaxRate = Real(quantity="Tax", min=0, max=1);
end Types;
