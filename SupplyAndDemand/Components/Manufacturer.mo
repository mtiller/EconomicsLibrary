within Economics.SupplyAndDemand.Components;
model Manufacturer "Combines two types of goods to form a third"
  parameter Real markup;
  Interfaces.Market production
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  Interfaces.Market supply_A
    annotation (Placement(transformation(extent={{-10,90},{10,110}})));
  Interfaces.Market supply_B
    annotation (Placement(transformation(extent={{-10,-110},{10,-90}})));
equation
  supply_A.volume + production.volume = 0;
  supply_B.volume + production.volume = 0;
  production.price = (supply_A.price+supply_B.price)*(1+markup);
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Line(points={{0,80},{0,10},{-80,10},{-60,20}}, color={0,0,0}),
        Line(points={{0,-80},{0,-10},{-80,-10},{-60,-20}}, color={0,0,0}),
        Rectangle(
          extent={{24,40},{32,-20}},
          lineColor={0,0,0},
          fillColor={175,175,175},
          fillPattern=FillPattern.VerticalCylinder),
        Ellipse(
          extent={{24,42},{32,36}},
          lineColor={0,0,0},
          fillPattern=FillPattern.VerticalCylinder,
          fillColor={175,175,175}),
        Polygon(
          points={{20,-20},{20,20},{40,10},{40,20},{60,10},{60,20},{80,10},{80,
              -20},{20,-20}},
          lineColor={0,0,0},
          fillColor={175,175,175},
          fillPattern=FillPattern.Solid)}),                      Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Manufacturer;
