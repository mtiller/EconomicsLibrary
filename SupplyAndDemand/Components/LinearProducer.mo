within Economics.SupplyAndDemand.Components;
model LinearProducer
  "Production with a minimum price and linear price increase"
  extends Interfaces.Producer;
  parameter Types.Price min_price "Minimum price to produce";
  parameter Types.PriceSensitivity beta "Price increase as a function of volume";
equation
  price = min_price + beta*volume;
end LinearProducer;
