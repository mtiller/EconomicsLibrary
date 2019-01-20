within Economics.SupplyAndDemand.Components;
model ExponentialProducer "Exponential pricing curve"
  extends Interfaces.Producer;
  parameter Types.Price min_price "Price at low demand";
  parameter Real growth "Exponential growth rate as a function of volume";
equation
  price = min_price*exp(growth*volume);
  annotation (Icon(graphics={Line(points={{-80,-40},{-60,0},{-40,20},{0,40},{80,
              60}}, color={255,0,0})}));
end ExponentialProducer;
