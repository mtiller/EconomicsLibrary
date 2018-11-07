within Economics.SupplyAndDemand.Components;
model UniformlyElasticConsumer "Hyperbolic distribution of consumers"
  extends Interfaces.Consumer;
  parameter Real product_constant "The product of price and volume";
equation
  price*volume = product_constant;
  annotation (Icon(graphics={Line(points={{-60,60},{-54,20},{-30,-30},{20,-56},
              {80,-60}},
                     color={0,255,0})}));
end UniformlyElasticConsumer;
