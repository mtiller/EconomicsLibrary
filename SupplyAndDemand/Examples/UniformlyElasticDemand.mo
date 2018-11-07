within Economics.SupplyAndDemand.Examples;
model UniformlyElasticDemand "A model that features uniformly elastic demand"
  Components.LinearProducer producer(min_price=8, beta=5)
    annotation (Placement(transformation(extent={{30,-10},{50,10}})));
  Components.MarketAnalysis market(minScale=0.3, maxScale=0.3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Components.UniformlyElasticConsumer consumer(product_constant=4)
    annotation (Placement(transformation(extent={{-50,-10},{-30,10}})));
equation
  connect(consumer.market, market.consumers)
    annotation (Line(points={{-30,0},{-20,0},{-10,0}}, color={0,0,0}));
  connect(market.producers, producer.market)
    annotation (Line(points={{10,0},{20,0},{30,0}}, color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end UniformlyElasticDemand;
