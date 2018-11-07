within Economics.SupplyAndDemand.Examples;
model LinearMarketWithTaxes "Market where producers are taxed"

  Components.LinearConsumer consumer(max_price=consumerBasePrice, alpha=
        consumerSensitivity)
    annotation (Placement(transformation(extent={{-50,-10},{-30,10}})));
  Components.LinearProducer producer(min_price=producerBasePrice, beta=
        producerSensitivity)
    annotation (Placement(transformation(extent={{70,-10},{90,10}})));
  parameter Types.Price consumerBasePrice=12;
  parameter Types.PriceSensitivity consumerSensitivity=0.5;
  parameter Types.Price producerBasePrice=10;
  parameter Types.PriceSensitivity producerSensitivity=1;
  parameter Types.SalesVolume expected = (producerBasePrice-consumerBasePrice)/(-consumerSensitivity-producerSensitivity);
  Components.MarketAnalysis market
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Effects.Tax tax(taxRate=0.06)
    annotation (Placement(transformation(extent={{30,-10},{50,10}})));
equation
  connect(market.consumers, consumer.market)
    annotation (Line(points={{-10,0},{-30,0}}, color={0,0,0}));
  connect(market.producers, tax.consumers)
    annotation (Line(points={{10,0},{20,0},{30,0}}, color={0,0,0}));
  connect(tax.producers, producer.market)
    annotation (Line(points={{50,0},{60,0},{70,0}}, color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end LinearMarketWithTaxes;
