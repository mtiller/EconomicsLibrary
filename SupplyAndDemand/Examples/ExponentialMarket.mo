within Economics.SupplyAndDemand.Examples;
model ExponentialMarket
  "Market where consumer and producer have exponential relationships"

  parameter Types.Price consumerBasePrice=12;
  parameter Types.PriceSensitivity consumerSensitivity=0.5;
  parameter Types.Price producerBasePrice=10;
  parameter Types.PriceSensitivity producerSensitivity=1;
  parameter Types.SalesVolume expected = (producerBasePrice-consumerBasePrice)/(-consumerSensitivity-producerSensitivity);
  Components.MarketAnalysis market
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end ExponentialMarket;
