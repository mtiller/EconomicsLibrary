within Economics.SupplyAndDemand.Components;
model Manufacturer "Combines two types of goods to form a third"
  parameter Real markup;
  Interfaces.Market production
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  Interfaces.Market supply_A
    annotation (Placement(transformation(extent={{-10,90},{10,110}})));
  Interfaces.Market supply_B
    annotation (Placement(transformation(extent={{-10,-110},{10,-90}})));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
equation
  supply_A.volume + production.volume = 0;
  supply_B.volume + production.volume = 0;
  production.price = (supply_A.price+supply_B.price)*(1+markup);
end Manufacturer;
