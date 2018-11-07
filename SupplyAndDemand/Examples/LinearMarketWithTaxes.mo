within Economics.SupplyAndDemand.Examples;
model LinearMarketWithTaxes "Simple market with taxes"

  Components.Consumer consumer(redeclare Curves.LinearCurve curve(basePrice=
          consumerBasePrice, sensitivity=consumerSensitivity))
    annotation (Placement(transformation(extent={{-50,-10},{-30,10}})));
  Components.Producer producer(redeclare Curves.LinearCurve curve(basePrice=
          producerBasePrice, sensitivity=producerSensitivity))
    annotation (Placement(transformation(extent={{70,-10},{90,10}})));
  parameter Types.Price consumerBasePrice=12;
  parameter Types.PriceSensitivity consumerSensitivity=-0.5;
  parameter Types.Price producerBasePrice=10;
  parameter Types.PriceSensitivity producerSensitivity=1;
  parameter Types.SalesVolume expected = (producerBasePrice-consumerBasePrice)/(consumerSensitivity-producerSensitivity);
  Components.MarketAnalysis market(minDeviation=-1, maxDeviation=2)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Effects.Tax exciseTax(taxRate=0.06)
    annotation (Placement(transformation(extent={{30,-10},{50,10}})));
equation
  connect(market.consumers, consumer.market)
    annotation (Line(points={{-10,0},{-30,0}}, color={0,0,0}));
  connect(exciseTax.consumers, market.producers)
    annotation (Line(points={{30,0},{20,0},{10,0}}, color={0,0,0}));
  connect(exciseTax.producers, producer.market)
    annotation (Line(points={{50,0},{70,0},{70,0}}, color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end LinearMarketWithTaxes;
