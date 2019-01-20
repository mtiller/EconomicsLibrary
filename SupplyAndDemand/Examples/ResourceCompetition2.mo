within Economics.SupplyAndDemand.Examples;
model ResourceCompetition2
  "Model of manufacturing supply chain with resource competition"

  Components.Manufacturer manufacturer(markup=0)
    annotation (Placement(transformation(extent={{30,-10},{50,10}})));
  Components.MarketAnalysis market
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Components.ExponentialConsumer consumer(max_price=12, decay=0.04)
    annotation (Placement(transformation(extent={{-50,-10},{-30,10}})));
  Components.ExponentialProducer producer_A(
    growth=0.06,
    min_price=4)
    annotation (Placement(transformation(extent={{50,10},{70,30}})));
  Components.ExponentialProducer producer_B(
    growth=0.06,
    min_price=6)
    annotation (Placement(transformation(extent={{50,-30},{70,-10}})));
  Components.ExponentialConsumer raw_consumer(decay=0.04, max_price=5)
    annotation (Placement(transformation(extent={{0,30},{20,50}})));
equation
  connect(market.producers, manufacturer.production)
    annotation (Line(points={{10,0},{20,0},{30,0}}, color={0,0,0}));
  connect(consumer.market, market.consumers)
    annotation (Line(points={{-30,0},{-20,0},{-10,0}}, color={0,0,0}));
  connect(producer_A.market, manufacturer.supply_A)
    annotation (Line(points={{50,20},{40,20},{40,10}}, color={0,0,0}));
  connect(producer_B.market, manufacturer.supply_B)
    annotation (Line(points={{50,-20},{40,-20},{40,-10}}, color={0,0,0}));
  connect(raw_consumer.market, producer_A.market)
    annotation (Line(points={{20,40},{30,40},{30,20},{50,20}}, color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end ResourceCompetition2;
