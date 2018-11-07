within Economics.SupplyAndDemand.Components;
model LinearProducer
  "Production with a minimum price and linear price increase"
  extends Interfaces.Producer;
  parameter Types.Price min_price "Minimum price to produce";
  parameter Types.PriceSensitivity beta "Price increase as a function of volume";
equation
  price = min_price + beta*volume;
  annotation (Icon(graphics={Line(points={{-80,-20},{80,40}}, color={255,0,0})}));
end LinearProducer;
