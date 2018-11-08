within Economics.SupplyAndDemand.Components;
model SubstituteGoods "Consumers have a choice"
  parameter Real p_A = 0.5 "Preference for producer A [0=1]" annotation(Evaluate=true);

  Interfaces.Market consumer
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  Interfaces.Market producer_A
    annotation (Placement(transformation(extent={{90,50},{110,70}})));
  Interfaces.Market producer_B
    annotation (Placement(transformation(extent={{90,-70},{110,-50}})));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,0},
          fillColor={255,170,170},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{-40,80},{40,40}},
          lineColor={0,0,0},
          textString="$$$"),
        Text(
          extent={{-40,-40},{40,-80}},
          lineColor={0,0,0},
          textString="$$"),
        Text(
          extent={{-40,20},{40,-20}},
          lineColor={0,0,0},
          textString="?")}),                                     Diagram(
        coordinateSystem(preserveAspectRatio=false)));
protected
  parameter Real p_B = 1-p_A annotation(Evaluate=true);
  Types.SalesVolume v_A(min=0, start=1), v_B(min=0, start=1);
equation
  producer_A.volume = v_A;
  producer_B.volume = v_B;

  producer_A.volume + producer_B.volume + consumer.volume = 0 "Conservation of goods";
  consumer.price*(v_A+v_B) = producer_A.price*v_A + producer_B.price*v_B "Conservation of revenue";
  consumer.price = p_A*producer_A.price + p_B*producer_B.price;
end SubstituteGoods;
