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
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Polygon(
          points={{-54,42},{-70,42},{-76,34},{-88,32},{-94,16},{-100,0},{-86,0},
              {-82,-10},{-82,-28},{-76,-34},{-66,-40},{-56,-34},{-46,-36},{-32,
              -38},{-24,-28},{-26,-16},{-18,-12},{-12,-6},{-10,4},{-24,18},{-44,
              26},{-44,34},{-54,42}},
          lineColor={0,0,0},
          fillColor={255,213,170},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-4,44},{6,36},{6,28},{26,20},{40,6},{38,-4},{32,-10},{24,-14},
              {26,-26},{18,-36},{26,-46},{50,-54},{68,-46},{90,-30},{88,-8},{
              100,4},{96,20},{84,48},{86,58},{66,70},{32,72},{4,58},{-4,44}},
          lineColor={0,0,0},
          fillColor={255,213,170},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{60,24},{60,20},{-70,20},{-60,30},{-60,24},{60,24}},
          lineColor={0,0,0},
          fillColor={0,255,128},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-70,-20},{-70,-24},{48,-24},{48,-32},{60,-20},{-70,-20}},
          lineColor={0,0,0},
          fillColor={0,255,128},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{-10,10},{10,-10}},
          lineColor={0,0,0},
          fillColor={0,255,128},
          fillPattern=FillPattern.Solid,
          textString="$",
          textStyle={TextStyle.Bold})}),                         Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Trade;
