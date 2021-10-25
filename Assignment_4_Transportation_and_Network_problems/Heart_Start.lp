/* Objective function */
min: 600 Pa + 625 Pb + 22 Xa1 + 14 Xa2 + 30 Xa3 + 16 Xb1 + 20 Xb2 + 24 Xb3;

/* Constraints */
Pa <= 100;
Pb <= 120;
Xa1 + Xb1 >= 80;
Xa2 + Xb2 >= 60;
Xa3 + Xb3 >= 70;
Xa1 + Xa2 + Xa3 - Pa <= 0;
Xb1 + Xb2 + Xb3 - Pb <= 0;