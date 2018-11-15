within Economics.SupplyAndDemand.Components;
model Trade
  parameter Real tariff_AB = 0;
  parameter Real tariff_BA = 0;

  Interfaces.Market market_A
    annotation (Placement(transformation(extent={{-10,90},{10,110}})));
  Interfaces.Market market_B
    annotation (Placement(transformation(extent={{-10,-110},{10,-90}})));
  Modelica.Blocks.Interfaces.RealInput xrate "Exchange rate (value of currency in market A/value of currency in market B)"
    annotation (Placement(transformation(extent={{-140,-20},{-100,20}})));
equation
  if market_A.volume>0 then
    market_B.price = (1+tariff_AB)*market_A.price*xrate;
  else
    market_A.price = (1+tariff_BA)*market_B.price/xrate;
  end if;
  market_A.volume + market_B.volume = 0;
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Trade;
