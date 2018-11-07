within Economics.SupplyAndDemand.Components;
model MarketAnalysis
  "A component that performs a basic market analysis"
  import Modelica.Constants.pi;
  parameter Types.PriceDifference maxDeviation;
  parameter Types.PriceDifference minDeviation = -maxDeviation;
  Types.Price suppliedPrice;
  Types.SalesVolume suppliedVolume;
  Types.Price consumerPrice;
  Types.Price producerPrice;
  Types.SalesVolume volume;
  Interfaces.Market consumers
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  Interfaces.Market producers
    annotation (Placement(transformation(extent={{90,-10},{110,10}})));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
public
  Types.Price deviation;
  Real v = sin(time*2*pi);
equation
  when initial() then
    suppliedPrice = producers.price;
    suppliedVolume = producers.volume;
  end when;
  deviation = max(v, 0)*maxDeviation - min(v, 0)*minDeviation;
  consumers.price - producers.price = deviation;
  consumers.volume + producers.volume = 0;
  volume = producers.volume;
  consumerPrice = consumers.price;
  producerPrice = producers.price;
end MarketAnalysis;
