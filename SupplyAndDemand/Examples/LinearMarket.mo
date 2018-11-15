within Economics.SupplyAndDemand.Examples;
model LinearMarket
  "Market where consumer and producer have linear relationships"

  Components.LinearConsumer consumer(max_price=consumerMaxPrice, alpha=
        consumerSensitivity)
    annotation (Placement(transformation(extent={{-50,-10},{-30,10}})));
  Components.LinearProducer producer(min_price=producerMinPrice, beta=
        producerSensitivity)
    annotation (Placement(transformation(extent={{30,-10},{50,10}})));
  parameter Types.Price consumerMaxPrice=12;
  parameter Types.PriceSensitivity consumerSensitivity=0.05;
  parameter Types.Price producerMinPrice=10;
  parameter Types.PriceSensitivity producerSensitivity=0.2;
  parameter Types.SalesVolume expected = (consumerMaxPrice-producerMinPrice)/(consumerSensitivity+producerSensitivity);
  Components.MarketAnalysis market
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
equation
  connect(market.producers, producer.market)
    annotation (Line(points={{10,0},{30,0}}, color={0,0,0}));
  connect(market.consumers, consumer.market)
    annotation (Line(points={{-10,0},{-30,0}}, color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end LinearMarket;
