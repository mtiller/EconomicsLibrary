within Economics.SupplyAndDemand.Components;
model SubstituteGoods "Consumers have a choice"

  Interfaces.Market consumer
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  Interfaces.Market producer_A
    annotation (Placement(transformation(extent={{90,30},{110,50}})));
  Interfaces.Market producer_B
    annotation (Placement(transformation(extent={{90,-50},{110,-30}})));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
protected
  Real p_A, p_B = 1-p_A;
equation
  // p_A = 1/(1-consumer.volume);
  p_A = if (time<0.25) then 1 else 1-4*(time-0.25)/3;
//   if (producer_A.price>producer_B.price) then
//     if (consumer.price>producer_A.price) then
//       p_A = 1;
//     elseif (consumer.price<producer_B.price) then
//       p_A = 0;
//     else
//       p_A = (consumer.price-producer_B.price)/(producer_A.price-producer_B.price);
//     end if;
//   else
//     if (consumer.price>producer_B.price) then
//       p_A = 0;
//     elseif (consumer.price<producer_A.price) then
//       p_A = 1;
//     else
//       p_A = 1-(consumer.price-producer_A.price)/(producer_B.price-producer_A.price);
//     end if;
//   end if;
  producer_A.volume + producer_B.volume + consumer.volume = 0 "Conservation of goods";
  // producer_A.volume*p_A + producer_B.volume*p_B +consumer.volume = 0 "Ratio of goods";
  consumer.price = p_A*producer_A.price + p_B*producer_B.price;
  consumer.price*consumer.volume + producer_A.price*producer_A.volume + producer_B.price*producer_B.volume = 0 "Conservation of revenue";
end SubstituteGoods;
