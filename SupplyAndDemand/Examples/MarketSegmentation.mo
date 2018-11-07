within Economics.SupplyAndDemand.Examples;
model MarketSegmentation
  "A market with different consumer and producer segments"
  Components.MarketAnalysis market
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Components.ExponentialProducer high_end_producer(
    min_price=100,
    max_price=200,
    decay=0.01) annotation (Placement(transformation(extent={{30,10},{50,30}})));
  Components.ExponentialProducer low_end_producer(
    min_price=50,
    max_price=140,
    decay=0.02)
    annotation (Placement(transformation(extent={{30,-30},{50,-10}})));
  Components.ExponentialConsumer affluent_consumer(max_price=160, decay=0.01)
    annotation (Placement(transformation(extent={{-60,10},{-40,30}})));
  Components.ExponentialConsumer average_consumer(max_price=75, decay=0.02)
    annotation (Placement(transformation(extent={{-60,-30},{-40,-10}})));
equation
  connect(low_end_producer.market, market.producers)
    annotation (Line(points={{30,-20},{20,-20},{20,0},{10,0}}, color={0,0,0}));
  connect(high_end_producer.market, market.producers)
    annotation (Line(points={{30,20},{20,20},{20,0},{10,0}}, color={0,0,0}));
  connect(affluent_consumer.market, market.consumers) annotation (Line(points={
          {-40,20},{-28,20},{-28,0},{-10,0}}, color={0,0,0}));
  connect(average_consumer.market, market.consumers) annotation (Line(points={{
          -40,-20},{-28,-20},{-28,0},{-10,0}}, color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false), graphics={Text(
          extent={{-60,80},{80,60}},
          lineColor={0,0,0},
          fillPattern=FillPattern.VerticalCylinder,
          fillColor={175,175,175},
          textString="Not Correct")}));
end MarketSegmentation;
