within Economics.SupplyAndDemand.Examples;
model MarketSegmentation
  "A market with different consumers and producer segments"

  Components.ExponentialProducer high_end_producer(
    min_price=100,
    growth=0.01) annotation (Placement(transformation(extent={{30,16},{50,36}})));
  Components.ExponentialProducer low_end_producer(
    min_price=50,
    growth=0.02)
    annotation (Placement(transformation(extent={{30,-36},{50,-16}})));
  Components.ExponentialConsumer average_consumer(decay=0.01, max_price=100)
    annotation (Placement(transformation(extent={{-60,-30},{-40,-10}})));
  Components.SubstituteGoods consumerSegment2(p_A=0.3)
    annotation (Placement(transformation(extent={{-20,-30},{0,-10}})));
  Components.SubstituteGoods customerSegment1(p_A=0.8)
    annotation (Placement(transformation(extent={{-20,10},{0,30}})));
  Components.ExponentialConsumer affluent_consumer(max_price=160, decay=0.01)
    annotation (Placement(transformation(extent={{-60,10},{-40,30}})));
equation
  connect(average_consumer.market, consumerSegment2.consumer)
    annotation (Line(points={{-40,-20},{-20,-20}}, color={0,0,0}));
  connect(consumerSegment2.producer_A, high_end_producer.market) annotation (
      Line(points={{0,-14},{20,-14},{20,26},{30,26}}, color={0,0,0}));
  connect(consumerSegment2.producer_B, low_end_producer.market)
    annotation (Line(points={{0,-26},{20,-26},{30,-26}}, color={0,0,0}));
  connect(affluent_consumer.market, customerSegment1.consumer)
    annotation (Line(points={{-40,20},{-30,20},{-20,20}}, color={0,0,0}));
  connect(customerSegment1.producer_A, high_end_producer.market)
    annotation (Line(points={{0,26},{15,26},{30,26}}, color={0,0,0}));
  connect(customerSegment1.producer_B, low_end_producer.market) annotation (
      Line(points={{0,14},{16,14},{16,-26},{30,-26}}, color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end MarketSegmentation;
