within Economics.SupplyAndDemand.Examples;
model SupplyChain "Model of manufacturing supply chain"
  parameter Types.Price producerA_BasePrice=5;
  parameter Types.PriceSensitivity producerA_Sensitivity=0.5;
  parameter Types.Price producerB_BasePrice=5;
  parameter Types.PriceSensitivity producerB_Sensitivity=0.5;
  parameter Real c=20;
  Components.Producer producer_A(redeclare Curves.LinearCurve curve(basePrice=
          producerA_BasePrice, sensitivity=producerA_Sensitivity))
    "Producer of component A"
    annotation (Placement(transformation(extent={{70,10},{90,30}})));
  Components.Producer producer_B(redeclare Curves.LinearCurve curve(basePrice=
          producerB_BasePrice, sensitivity=producerB_Sensitivity))
    "Producer of component B"
    annotation (Placement(transformation(extent={{70,-30},{90,-10}})));
  parameter Real markup=0.2;
  Components.Consumer consumer(redeclare Curves.UniformlyElasticDemand curve(c=
          c))
    annotation (Placement(transformation(extent={{-50,-10},{-30,10}})));
  Components.Manufacturer manufacturer(markup=0)
    annotation (Placement(transformation(extent={{30,-10},{50,10}})));
  Components.MarketAnalysis market(maxDeviation=1, minDeviation=-1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
equation
  connect(manufacturer.supply_A, producer_A.market)
    annotation (Line(points={{40,10},{40,20},{70,20}}, color={0,0,0}));
  connect(manufacturer.supply_B, producer_B.market) annotation (Line(
        points={{40,-10},{40,-20},{70,-20}}, color={0,0,0}));
  connect(market.producers, manufacturer.production)
    annotation (Line(points={{10,0},{20,0},{30,0}}, color={0,0,0}));
  connect(consumer.market, market.consumers)
    annotation (Line(points={{-30,0},{-30,0},{-10,0}}, color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end SupplyChain;
