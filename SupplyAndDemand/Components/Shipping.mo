within Economics.SupplyAndDemand.Components;
model Shipping "Cost of shipping to another market"
   parameter Types.Price shipping_cost;
  Interfaces.Market local
    annotation (Placement(transformation(extent={{-10,90},{10,110}})));
  Interfaces.Market remote
    annotation (Placement(transformation(extent={{-10,-110},{10,-90}})));
equation
  if local.volume>0 then
    remote.price = local.price + shipping_cost;
  else
    local.price = remote.price + shipping_cost;
  end if;
  remote.volume + local.volume = 0;
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Polygon(
          points={{-80,20},{-72,-20},{-60,-40},{60,-40},{72,-20},{80,20},{-80,
              20}},
          lineColor={0,0,0},
          fillColor={215,215,215},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-100,-40},{100,-80}},
          lineColor={28,108,200},
          fillColor={85,170,255},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-80,20},{-72,-20},{-60,-40},{0,-40},{0,20},{-80,20}},
          lineColor={0,0,0},
          fillColor={175,175,175},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-60,50},{-40,20}},
          lineColor={0,0,0},
          fillColor={255,170,85},
          fillPattern=FillPattern.Forward),
        Rectangle(
          extent={{-40,50},{-20,20}},
          lineColor={0,0,0},
          fillColor={128,255,0},
          fillPattern=FillPattern.Forward),
        Rectangle(
          extent={{-20,50},{0,20}},
          lineColor={0,0,0},
          fillColor={95,95,95},
          fillPattern=FillPattern.Forward),
        Rectangle(
          extent={{0,50},{20,20}},
          lineColor={0,0,0},
          fillColor={170,85,255},
          fillPattern=FillPattern.Forward),
        Rectangle(
          extent={{20,50},{40,20}},
          lineColor={0,0,0},
          fillColor={85,255,170},
          fillPattern=FillPattern.Forward),
        Rectangle(
          extent={{40,50},{60,20}},
          lineColor={0,0,0},
          fillColor={215,215,215},
          fillPattern=FillPattern.Forward),
        Rectangle(
          extent={{-60,80},{-40,50}},
          lineColor={0,0,0},
          fillColor={255,170,170},
          fillPattern=FillPattern.Forward),
        Rectangle(
          extent={{-40,80},{-20,50}},
          lineColor={0,0,0},
          fillColor={175,175,175},
          fillPattern=FillPattern.Forward),
        Rectangle(
          extent={{-20,80},{0,50}},
          lineColor={0,0,0},
          fillColor={127,127,0},
          fillPattern=FillPattern.Forward),
        Rectangle(
          extent={{0,80},{20,50}},
          lineColor={0,0,0},
          fillColor={85,255,255},
          fillPattern=FillPattern.Forward),
        Rectangle(
          extent={{20,80},{40,50}},
          lineColor={0,0,0},
          fillColor={255,213,170},
          fillPattern=FillPattern.Forward),
        Rectangle(
          extent={{40,80},{60,50}},
          lineColor={0,0,0},
          fillColor={255,85,85},
          fillPattern=FillPattern.Forward)}),                    Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Shipping;
