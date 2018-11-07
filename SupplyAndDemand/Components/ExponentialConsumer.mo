within Economics.SupplyAndDemand.Components;
model ExponentialConsumer "Exponential distribution of consumers"
  extends Interfaces.Consumer;
  parameter Types.Price max_price "The largest amount any consumer is willing to pay for this good";
  parameter Real decay "Exponential decay rate as a function of volume";
equation
  price = max_price*exp(-decay*volume);
  annotation (Icon(graphics={Line(points={{-80,60},{-70,40},{-40,0},{10,-30},{
              80,-50}}, color={0,255,0})}));
end ExponentialConsumer;
