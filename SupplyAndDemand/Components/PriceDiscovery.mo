within Economics.SupplyAndDemand.Components;
model PriceDiscovery
  "Sweep through a range of volumes to uncover prices"
   parameter Types.SalesVolume from;
   parameter Types.SalesVolume to;
   parameter Modelica.SIunits.Time over=1;
   parameter Boolean supplySide = true;
  Interfaces.Market market
    annotation (Placement(transformation(extent={{-10,90},{10,110}})));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
protected
  Types.SalesVolume volume;
equation
  volume = (to-from)*(time/over)+from;
  market.volume = if supplySide then -volume else volume;
end PriceDiscovery;
