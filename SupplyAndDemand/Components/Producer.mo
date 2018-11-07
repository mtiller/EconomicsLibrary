within Economics.SupplyAndDemand.Components;
model Producer "A producer of goods"
  replaceable Interfaces.Curve curve constrainedby Interfaces.Curve(price=market.price) annotation(choicesAllMatching=true);
  Types.SalesVolume production = curve.volume;
  Interfaces.Market market(volume(start=-10))
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
equation
  market.volume = -curve.volume;
end Producer;
