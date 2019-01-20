within Economics.SupplyAndDemand.Examples;
model ExponentialMarketWithTaxes
  "Market where consumer and producer have exponential relationships"

  Components.MarketAnalysis market(minScale=1, maxScale=2.5)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Components.ExponentialConsumer consumer(max_price=12, decay=0.04)
    annotation (Placement(transformation(extent={{-50,-10},{-30,10}})));
  Components.ExponentialProducer producer(
    min_price=10,
    growth=0.06)
    annotation (Placement(transformation(extent={{70,-10},{90,10}})));
  Effects.Tax tax(taxRate=0.06)
    annotation (Placement(transformation(extent={{30,-10},{50,10}})));
equation
  connect(consumer.market, market.consumers)
    annotation (Line(points={{-30,0},{-20,0},{-10,0}}, color={0,0,0}));
  connect(tax.producers, producer.market)
    annotation (Line(points={{50,0},{60,0},{70,0}}, color={0,0,0}));
  connect(tax.consumers, market.producers)
    annotation (Line(points={{30,0},{20,0},{10,0}}, color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end ExponentialMarketWithTaxes;
