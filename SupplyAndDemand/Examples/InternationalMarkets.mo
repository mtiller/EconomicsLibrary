within Economics.SupplyAndDemand.Examples;
model InternationalMarkets "Include geogrphically distributed markets"
  Components.ExponentialProducer foreign_producer(
    min_price=40,
    max_price=60,
    decay=0.01) annotation (Placement(transformation(extent={{30,50},{50,70}})));
  Components.ExponentialConsumer foreign_consumer(max_price=50, decay=0.001)
    annotation (Placement(transformation(extent={{-50,50},{-30,70}})));
  Components.ExponentialConsumer domestic_consumer(max_price=80, decay=0.003)
    annotation (Placement(transformation(extent={{-50,-70},{-30,-50}})));
  Components.ExponentialProducer domestic_producer(
    min_price=50,
    max_price=80,
    decay=0.02)
    annotation (Placement(transformation(extent={{30,-70},{50,-50}})));
equation
  connect(foreign_consumer.market, foreign_producer.market)
    annotation (Line(points={{-30,60},{0,60},{30,60}}, color={0,0,0}));
  connect(domestic_consumer.market, domestic_producer.market)
    annotation (Line(points={{-30,-60},{0,-60},{30,-60}}, color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end InternationalMarkets;
