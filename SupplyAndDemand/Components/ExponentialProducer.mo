within Economics.SupplyAndDemand.Components;
model ExponentialProducer "Exponential pricing curve"
  extends Interfaces.Consumer;
  parameter Types.Price min_price "Price at low demand";
  parameter Types.Price max_price "Price at peak demand";
  parameter Real decay "Exponential decay rate as a function of volume";
equation
  price = (min_price-max_price)*exp(-decay*volume)+max_price;
  annotation (Icon(graphics={Line(points={{-80,-40},{-60,0},{-40,20},{0,40},{80,
              60}}, color={255,0,0})}));
end ExponentialProducer;
