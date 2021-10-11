clc
clearvars

set(0, 'DefaultAxesFontName', 'times');
set(0, 'DefaultTextFontName', 'times');
set(0, 'defaultTextInterpreter','latex');
set(0, 'defaultAxesTickLabelInterpreter','latex'); 
set(0, 'defaultLegendInterpreter','latex');

M = table2array(readtable('naca0012.txt'));
N = table2array(readtable('clarkyy.txt'));
alpha_1 = M(:,1);
cl_1 = M(:,2);
cd_1 = M(:,3);
clcd_1 = cl_1./cd_1;
alpha_2= N(:,1);
cl_2 = N(:,2);
cd_2 = N(:,3);
clcd_2 = cl_2./cd_2;

ax1 = nexttile;
plot(ax1,alpha_1,cl_1,'k--',alpha_2,cl_2,'k-o')
title('$C_l$ vs $\alpha$')
xlabel('\alpha [°]', 'Interpreter', 'tex')
ylabel('$C_l [-]$', 'Interpreter', 'latex')
legend('NACA0012','Clark Y','location','southeast')
grid on

ax2 = nexttile;
plot(ax2,cd_1,cl_1,'k--',cd_2,cl_2,'k-o')
title('$C_l$ vs $C_d$')
xlabel('$C_d [-]$', 'Interpreter', 'latex')
ylabel('$C_l [-]$', 'Interpreter', 'latex')
legend('NACA0012','Clark Y','location','southeast')
grid on

ax3 = nexttile;
plot(ax3,alpha_1,clcd_1,'k--',alpha_2,clcd_2,'k-o')
title('$C_l/C_d$ vs $\alpha$')
xlabel('\alpha [°]', 'Interpreter', 'tex')
ylabel('$C_l/C_d [-]$', 'Interpreter', 'latex')
legend('NACA0012','Clark Y','location','southeast')
grid on
