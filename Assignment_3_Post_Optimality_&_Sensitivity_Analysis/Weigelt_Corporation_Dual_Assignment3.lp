/* Objective function */
min: +900 SalesLarge +1200 SalesMedium +750 SalesSmall +13000 sq.ft.Plant1 +12000 sq.ft.Plant2 +5000 sq.ft.Plant3 +750 ex.cap.Plant1 +900 ex.cap.Plant2 +450 ex.cap.Plant3;

/* Constraints */
Plant1Large: +1 SalesLarge +20 sq.ft.Plant1 +1 ex.cap.Plant1 +900 perc.cap.usagePlant1/2 +450 perc.cap.usagePlant1/3 >= 420;
Plant1Medium: +1 SalesMedium +15 sq.ft.Plant1 +1 ex.cap.Plant1 +900 perc.cap.usagePlant1/2 +450 perc.cap.usagePlant1/3 >= 360;
Plant1Small: +1 SalesSmall +12 sq.ft.Plant1 +1 ex.cap.Plant1 +900 perc.cap.usagePlant1/2 +450 perc.cap.usagePlant1/3 >= 300;
Plant2Large: +1 SalesLarge +20 sq.ft.Plant2 +1 ex.cap.Plant2 -750 perc.cap.usagePlant1/2 >= 420;
Plant2Medium: +1 SalesMedium +15 sq.ft.Plant2 +1 ex.cap.Plant2 -750 perc.cap.usagePlant1/2 >= 360;
Plant2Small: +1 SalesSmall +12 sq.ft.Plant2 +1 ex.cap.Plant2 -750 perc.cap.usagePlant1/2 >= 300;
Plant3Large: +1 SalesLarge +20 sq.ft.Plant3 +1 ex.cap.Plant3 -750 perc.cap.usagePlant1/3 >= 420;
Plant3Medium: +1 SalesMedium +15 sq.ft.Plant3 +1 ex.cap.Plant3 -750 perc.cap.usagePlant1/3 >= 360;
Plant3Small: +1 SalesSmall +12 sq.ft.Plant3 +1 ex.cap.Plant3 -750 perc.cap.usagePlant1/3 >= 300;

