within Economics.SupplyAndDemand.Components;
model MarketAnalysis
  "A component that performs a basic market analysis"
  import Modelica.Constants.pi;
  extends Interfaces.Curve;
  parameter Real minScale = 0.8;
  parameter Real maxScale = 0.8;
  Types.Price suppliedPrice;
  Types.SalesVolume suppliedVolume;
  Types.Price consumerPrice = consumers.price;
  Types.Price producerPrice = producers.price;
  Types.SalesVolume volume = producers.volume;
  Interfaces.Market consumers
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  Interfaces.Market producers
    annotation (Placement(transformation(extent={{90,-10},{110,10}})));
public
  Real v = sin(time*2*pi);
  Real deviation = max(v, 0)*maxScale + min(v, 0)*minScale;
equation
  when initial() then
    suppliedPrice = producers.price;
    suppliedVolume = producers.volume;
  end when;
  if initial() then
    consumers.volume + producers.volume = 0;
    consumers.price = producers.price;
  else
    consumers.volume = -(1+deviation)*suppliedVolume;
    producers.volume = (1+deviation)*suppliedVolume;
  end if;
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={Line(
            points={{-60,40},{60,-20}}, color={0,255,0}), Line(points={{-60,-40},
              {60,40}}, color={255,0,0})}),                      Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end MarketAnalysis;
