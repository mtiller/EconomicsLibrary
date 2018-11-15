within Economics.SupplyAndDemand.Examples;
model InternationalTrade
  extends InternationalMarkets;
  Components.Trade trade(tariff_AB=0.05)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Sources.Sine fluctuations(
    amplitude=0.1,
    freqHz=1,
    startTime=0.5,
    offset=1.2) "Fluctuation of currency exchange rates"
    annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
  Components.Shipping shipping(shipping_cost=1)
    annotation (Placement(transformation(extent={{-10,20},{10,40}})));
equation
  connect(trade.market_B, domestic_producer.market)
    annotation (Line(points={{0,-10},{0,-60},{30,-60}}, color={0,0,0}));
  connect(fluctuations.y, trade.xrate)
    annotation (Line(points={{-39,0},{-26,0},{-12,0}}, color={0,0,127}));
  connect(shipping.remote, trade.market_A)
    annotation (Line(points={{0,20},{0,15},{0,10}}, color={0,0,0}));
  connect(shipping.local, foreign_producer.market)
    annotation (Line(points={{0,40},{0,60},{30,60}}, color={0,0,0}));
end InternationalTrade;
