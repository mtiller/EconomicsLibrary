within Economics.SupplyAndDemand.Components;
model LinearConsumer "Linear distribution of consumers"
  extends Interfaces.Consumer;
  parameter Types.Price max_price "The largest amount any consumer is willing to pay for this good";
  parameter Types.PriceSensitivity alpha "Rate of price drop as volume increases";
equation
  price = max_price - alpha*volume;
  annotation (Icon(graphics={Line(points={{-80,60},{80,-20}}, color={0,255,0})}));
end LinearConsumer;
