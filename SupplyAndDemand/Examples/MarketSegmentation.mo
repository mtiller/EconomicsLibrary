within Economics.SupplyAndDemand.Examples;
model MarketSegmentation
  "A market with different consumer and producer segments"
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
    annotation (Placement(transformation(extent={{-40,-10},{-20,10}})));
  Components.SubstituteGoods substituteGoods
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
equation
  connect(affluent_consumer.market, substituteGoods.consumer)
    annotation (Line(points={{-20,0},{-15,0},{-10,0}}, color={0,0,0}));
  connect(substituteGoods.producer_A, high_end_producer.market)
    annotation (Line(points={{10,4},{20,4},{20,20},{30,20}}, color={0,0,0}));
  connect(substituteGoods.producer_B, low_end_producer.market) annotation (Line(
        points={{10,-4},{20,-4},{20,-20},{30,-20}}, color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false), graphics={Text(
          extent={{-60,80},{80,60}},
          lineColor={0,0,0},
          fillPattern=FillPattern.VerticalCylinder,
          fillColor={175,175,175},
          textString="Not Correct")}));
end MarketSegmentation;
