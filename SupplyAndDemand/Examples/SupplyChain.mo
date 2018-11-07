within Economics.SupplyAndDemand.Examples;
model SupplyChain "Model of manufacturing supply chain"
  parameter Types.Price producerA_BasePrice=5;
  parameter Types.PriceSensitivity producerA_Sensitivity=0.5;
  parameter Types.Price producerB_BasePrice=5;
  parameter Types.PriceSensitivity producerB_Sensitivity=0.5;
  parameter Real c=20;
  parameter Real markup=0.2;
  Components.Manufacturer manufacturer(markup=0)
    annotation (Placement(transformation(extent={{30,-10},{50,10}})));
  Components.MarketAnalysis market
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
equation
  connect(market.producers, manufacturer.production)
    annotation (Line(points={{10,0},{20,0},{30,0}}, color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end SupplyChain;
