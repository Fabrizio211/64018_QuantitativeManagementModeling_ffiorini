/* Objective function */
max: +420 Plant1Large +360 Plant1Medium +300 Plant1Small +420 Plant2Large +360 Plant2Medium +300 Plant2Small +420 Plant3Large +360 Plant3Medium +300 Plant3Small;

/* Constraints */
SalesLarge: +Plant1Large + Plant2Large + Plant3Large <= 900;
SalesMedium: +Plant1Medium + Plant2Medium + Plant3Medium <= 1200;
SalesSmall: +Plant1Small + Plant2Small + Plant3Small <= 750;
sq.ft.Plant1: +20 Plant1Large +15 Plant1Medium +12 Plant1Small <= 13000;
sq.ft.Plant2: +20 Plant2Large +15 Plant2Medium +12 Plant2Small <= 12000;
sq.ft.Plant3: +20 Plant3Large +15 Plant3Medium +12 Plant3Small <= 5000;
ex.cap.Plant1: +Plant3Large + Plant3Medium + Plant3Small <= 750;
ex.cap.Plant2: +Plant3Large + Plant3Medium + Plant3Small <= 900;
ex.cap.Plant3: +Plant3Large + Plant3Medium + Plant3Small <= 450;
perc.cap.usagePlant1/2: +900 Plant1Large +900 Plant1Medium +900 Plant1Small -750 Plant2Large -750 Plant2Medium -750 Plant2Small = 0;
perc.cap.usagePlant2/3: +450 Plant2Large +450 Plant2Medium +450 Plant2Small -900 Plant3Large -900 Plant3Medium -900 Plant3Small = 0;
