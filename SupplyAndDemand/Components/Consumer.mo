within Economics.SupplyAndDemand.Components;
model Consumer "A consumer of goods"
  replaceable Interfaces.Curve curve constrainedby Interfaces.Curve(price=market.price) annotation(choicesAllMatching=true);
  Types.SalesVolume consumption = curve.volume;
  Interfaces.Market market
    annotation (Placement(transformation(extent={{90,-10},{110,10}})));
equation
  market.volume = curve.volume;
end Consumer;
