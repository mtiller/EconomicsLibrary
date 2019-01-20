within Economics.SupplyAndDemand.Examples;
model ResourceCompetition
  extends SupplyChain;
  Components.ExponentialConsumer raw_consumer(decay=0.04, max_price=5)
    annotation (Placement(transformation(extent={{0,30},{20,50}})));
equation
  connect(raw_consumer.market, producer_A.market)
    annotation (Line(points={{20,40},{30,40},{30,20},{50,20}}, color={0,0,0}));
end ResourceCompetition;
