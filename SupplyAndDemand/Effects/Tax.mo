within Economics.SupplyAndDemand.Effects;
model Tax
  "Model an tax (increasing effective price to consumers)"
  parameter Types.TaxRate taxRate;
  output Types.Price taxRevenue;
  Interfaces.Market consumers
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  Interfaces.Market producers
    annotation (Placement(transformation(extent={{90,-10},{110,10}})));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
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
equation
   consumers.price = producers.price*(1+taxRate);
   taxRevenue = producers.price*taxRate*producers.volume;
   consumers.volume+producers.volume = 0;
end Tax;
