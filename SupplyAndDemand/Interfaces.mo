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

  partial model Consumer "A consumer of goods"
    Types.SalesVolume volume;
    Types.Price price;
    Interfaces.Market market
      annotation (Placement(transformation(extent={{90,-10},{110,10}})));
  protected
    Real s(start=1) "Volume or price gap";
    Real price_gap = max(0,-s) "How much cost needs to come down for consumer to enter market";
  equation
    if (s<0) then
      // market.price = price;
      // volume = 1e-7*s;
      price = market.price + s;
      volume = 0;
    else
      market.price = price;
      volume = s;
    end if;
    market.volume = volume;
  end Consumer;

  model Producer "A producer of goods"
    Types.SalesVolume volume;
    Types.Price price;
    Interfaces.Market market(volume(start=-10))
      annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  protected
     Real s(start=-1);
     Types.Price price_gap = max(0,s) "Amount prices need to rise for producer to enter the market";
  equation
     if (s<0) then
       price = market.price;
       volume = -s;
     else
       price = market.price-s;
       volume = 0;
     end if;
    market.volume = -volume;
  end Producer;
end Interfaces;
