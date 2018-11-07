within Economics.SupplyAndDemand.Examples;
model LinearMarket
  "Market where consumer and producer have linear relationships"

  Components.Consumer consumer(redeclare Curves.LinearCurve curve(basePrice=
          consumerBasePrice, sensitivity=consumerSensitivity))
    annotation (Placement(transformation(extent={{-50,-10},{-30,10}})));
  Components.Producer producer(redeclare Curves.LinearCurve curve(basePrice=
          producerBasePrice, sensitivity=producerSensitivity))
    annotation (Placement(transformation(extent={{30,-10},{50,10}})));
  parameter Types.Price consumerBasePrice=12;
  parameter Types.PriceSensitivity consumerSensitivity=-0.5;
  parameter Types.Price producerBasePrice=10;
  parameter Types.PriceSensitivity producerSensitivity=1;
  parameter Types.SalesVolume expected = (producerBasePrice-consumerBasePrice)/(consumerSensitivity-producerSensitivity);
  Components.MarketAnalysis market(minDeviation=-1, maxDeviation=2)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
equation
  connect(market.producers, producer.market)
    annotation (Line(points={{10,0},{30,0}}, color={0,0,0}));
  connect(market.consumers, consumer.market)
    annotation (Line(points={{-10,0},{-30,0}}, color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end LinearMarket;
