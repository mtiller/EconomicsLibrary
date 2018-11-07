within Economics.SupplyAndDemand.Curves;
block UniformlyElasticDemand
  "A uniformly elastic demand curve (rectangular hyperbola)"
   parameter Real c;
   extends Interfaces.Curve;
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
equation
  price = c/volume;
end UniformlyElasticDemand;
