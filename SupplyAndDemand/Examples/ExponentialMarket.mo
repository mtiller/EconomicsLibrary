within Economics.SupplyAndDemand.Examples;
model ExponentialMarket
  "Market where consumer and producer have exponential relationships"
  parameter Types.SalesVolume A=12 "Demand if price were 0";
  parameter Real k1=-0.5 "Change in demand w.r.t. price";
  parameter Types.SalesVolume B=2 "How many would be produced if price were 0";
  parameter Real k2=1 "Change in supply w.r.t. price";
  Components.Consumer consumer(redeclare Curves.ExponentialCurve curve(
        baseDemand=A, sensitivity=k1))
    annotation (Placement(transformation(extent={{-50,-10},{-30,10}})));
  Components.Producer producer(redeclare Curves.ExponentialCurve curve(
        baseDemand=B, sensitivity=k2))
    annotation (Placement(transformation(extent={{30,-10},{50,10}})));
  Components.MarketAnalysis market(maxDeviation=1, minDeviation=-1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));

equation
  connect(market.producers, producer.market)
    annotation (Line(points={{10,0},{30,0}}, color={0,0,0}));
  connect(market.consumers, consumer.market)
    annotation (Line(points={{-10,0},{-30,0}}, color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end ExponentialMarket;
