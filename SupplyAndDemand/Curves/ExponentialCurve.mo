within Economics.SupplyAndDemand.Curves;
block ExponentialCurve
  "An exponential relation between price and volume"
  parameter Types.SalesVolume baseDemand "Demand if price were 0";
  parameter Real sensitivity "Change in demand w.r.t. price";
  extends Interfaces.Curve;
equation
  volume = baseDemand*exp(sensitivity*price);
end ExponentialCurve;
