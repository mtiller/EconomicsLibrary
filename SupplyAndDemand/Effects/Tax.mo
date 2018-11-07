within Economics.SupplyAndDemand.Effects;
model Tax
  "Model an tax (increasing effective price to consumers)"
  parameter Types.TaxRate taxRate;
  output Types.Price taxRevenue;
  Interfaces.Market consumers
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  Interfaces.Market producers
    annotation (Placement(transformation(extent={{90,-10},{110,10}})));
equation
   consumers.price = producers.price*(1+taxRate);
   taxRevenue = producers.price*taxRate*producers.volume;
   consumers.volume+producers.volume = 0;
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Line(points={{80,0},{-80,0},{-60,10}}, color={0,0,0}),
        Ellipse(
          extent={{-16,-6},{40,-26}},
          lineColor={0,0,0},
          fillColor={213,174,119},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-16,-10},{40,-16}},
          fillColor={213,174,119},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Ellipse(
          extent={{-16,0},{40,-20}},
          lineColor={0,0,0},
          fillColor={213,174,119},
          fillPattern=FillPattern.Solid),
        Line(points={{-16,-10},{-16,-16}}, pattern=LinePattern.None),
        Line(points={{-16,-10},{-16,-16}}, color={0,0,0}),
        Line(points={{40,-10},{40,-16}}, color={0,0,0}),
        Ellipse(
          extent={{-42,4},{14,-16}},
          lineColor={0,0,0},
          fillColor={213,174,119},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-42,0},{14,-6}},
          fillColor={213,174,119},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Ellipse(
          extent={{-42,10},{14,-10}},
          lineColor={0,0,0},
          fillColor={213,174,119},
          fillPattern=FillPattern.Solid),
        Line(points={{-42,0},{-42,-6}}, pattern=LinePattern.None),
        Line(points={{-42,0},{-42,-6}}, color={0,0,0}),
        Line(points={{14,0},{14,-6}}, color={0,0,0}),
        Line(points={{-74,-20},{-74,-26}}, pattern=LinePattern.None),
        Ellipse(
          extent={{-26,12},{30,-8}},
          lineColor={0,0,0},
          fillColor={213,174,119},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-26,8},{30,2}},
          fillColor={213,174,119},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Ellipse(
          extent={{-26,18},{30,-2}},
          lineColor={0,0,0},
          fillColor={213,174,119},
          fillPattern=FillPattern.Solid),
        Line(points={{-26,8},{-26,2}}, pattern=LinePattern.None),
        Line(points={{-26,8},{-26,2}}, color={0,0,0}),
        Line(points={{30,8},{30,2}}, color={0,0,0}),
        Line(points={{-32,10},{-32,4}}, pattern=LinePattern.None),
        Ellipse(
          extent={{-18,20},{38,0}},
          lineColor={0,0,0},
          fillColor={213,174,119},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-18,16},{38,10}},
          fillColor={213,174,119},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Ellipse(
          extent={{-18,26},{38,6}},
          lineColor={0,0,0},
          fillColor={213,174,119},
          fillPattern=FillPattern.Solid),
        Line(points={{-18,16},{-18,10}}, pattern=LinePattern.None),
        Line(points={{-18,16},{-18,10}}, color={0,0,0}),
        Line(points={{38,16},{38,10}}, color={0,0,0}),
        Text(
          extent={{-80,80},{80,40}},
          lineColor={0,0,0},
          fillColor={213,174,119},
          fillPattern=FillPattern.Solid,
          textString="Tax Rate: %tax_rate"),
        Line(points={{-80,0},{-60,-10}}, color={0,0,0})}),       Diagram(
        coordinateSystem(preserveAspectRatio=false), graphics={Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,0},
          fillColor={255,170,170},
          fillPattern=FillPattern.Solid), Text(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,0},
          fillColor={255,170,170},
          fillPattern=FillPattern.Solid,
          textString="Excise
Tax
%taxRate")}));
end Tax;
