within Economics.SupplyAndDemand.Curves;
block LinearCurve "A linear relation between price and volume"
  parameter Types.Price basePrice;
  parameter Types.PriceSensitivity sensitivity=0;
  extends Interfaces.Curve;
equation
  price = basePrice + sensitivity*volume;
end LinearCurve;
