clc
clearvars
set(0, 'DefaultAxesFontName', 'times');
set(0, 'DefaultTextFontName', 'times');
set(0, 'defaultTextInterpreter','latex');
set(0, 'defaultAxesTickLabelInterpreter','latex'); 
set(0, 'defaultLegendInterpreter','latex');

x_1 = [500000 1500000 2500000 3500000 4500000 5500000];
cl_max_1 = [1.22 1.49 1.59 1.70 1.75 1.77];
cl_max_2 = [1.26 1.43 1.51 1.57 1.60 1.61];
clcd_max_1 = [61.58 84.34 95.70 103.87 109.24 113.84];
clcd_max_2 = [104.08 124.91 135.94 142.30 147.49 150.81];

yyaxis left
plot(x_1,clcd_max_1,'k.-',x_1,clcd_max_2,'k-o')
xlabel('Re $[-]$', 'Interpreter', 'latex')
ylabel('$C_l/C_{d,{max}} [-]$', 'Interpreter', 'latex')

yyaxis right
plot(x_1,cl_max_1,'k-x',x_1,cl_max_2,'k-d')
title('$C_l/C_{d,{max}}$ y $C_{l,max}$ vs Re');
ylabel('cl_m_a_x')
ylabel('$C_{l,{max}} [-]$', 'Interpreter', 'latex')
grid on
legend('Re vs $C_l/C_d$ NACA0012','Re vs $C_l/C_d$ Clark Y','Re vs $C_l$ NACA0012','Re vs $C_l$ Clark Y','location','Southeast');
