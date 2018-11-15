within Economics.SupplyAndDemand.Components;
model Shipping "Cost of shipping to another market"
   parameter Types.Price shipping_cost;
  Interfaces.Market local
    annotation (Placement(transformation(extent={{-10,90},{10,110}})));
  Interfaces.Market remote
    annotation (Placement(transformation(extent={{-10,-110},{10,-90}})));
equation
  if local.volume>0 then
    remote.price = local.price + shipping_cost;
  else
    local.price = remote.price + shipping_cost;
  end if;
  remote.volume + local.volume = 0;
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Shipping;
