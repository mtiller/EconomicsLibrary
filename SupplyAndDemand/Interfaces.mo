within Economics.SupplyAndDemand;
package Interfaces

  connector Market "Model for a market place"
    Types.Price price(min=0, start=10);
    flow Types.SalesVolume volume;
    annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
          Ellipse(
            extent={{-100,100},{100,-100}},
            lineColor={0,0,0},
            fillColor={170,213,255},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{-60,20},{-40,40},{60,40},{60,-20},{40,-40},{-60,20}},
            lineColor={0,0,0},
            fillColor={213,174,119},
            fillPattern=FillPattern.Solid),
          Rectangle(
            extent={{-60,20},{40,-40}},
            lineColor={0,0,0},
            fillColor={213,174,119},
            fillPattern=FillPattern.Solid),
          Line(points={{40,20},{60,40}}, color={0,0,0}),
          Rectangle(
            extent={{-54,12},{-30,-2}},
            lineColor={0,0,0},
            fillColor={175,175,175},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{-60,-52},{40,-52},{20,-72},{20,-60},{-60,-60},{-60,-52}},
            lineColor={0,0,0},
            fillColor={175,175,175},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{60,50},{-60,50},{-40,70},{-40,60},{60,60},{60,50}},
            lineColor={0,0,0},
            fillColor={175,175,175},
            fillPattern=FillPattern.Solid)}),                      Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end Market;

  partial model Participant "A participant in the market"

    Market market annotation (Placement(transformation(extent={{-10,-10},{10,
              10}}), iconTransformation(extent={{-10,-10},{10,10}})));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end Participant;

  partial block Curve
    "A model of a curve relating price and sales volume"
    // The presence of "input" and "output" here are simply to convey how
    // many equation we expect to find.  It doesn't imply order of evaluation.
    input Types.Price price;
    output Types.SalesVolume volume;
    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end Curve;
end Interfaces;
