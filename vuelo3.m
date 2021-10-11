clc
clearvars
set(0, 'DefaultAxesFontName', 'times');
set(0, 'DefaultTextFontName', 'times');
set(0, 'defaultTextInterpreter','latex');
set(0, 'defaultAxesTickLabelInterpreter','latex'); 
set(0, 'defaultLegendInterpreter','latex');

M_1 = table2array(readtable('500 naca0012.txt'));
M_2 = table2array(readtable('1500 naca0012.txt'));
M_3 = table2array(readtable('2500 naca0012.txt'));
M_4 = table2array(readtable('3500 naca0012.txt'));
M_5 = table2array(readtable('4500 naca0012.txt'));
M_6 = table2array(readtable('5500 naca0012.txt'));
N_1 = table2array(readtable('500 clarky.txt'));
N_2 = table2array(readtable('1500 clarky.txt'));
N_3 = table2array(readtable('2500 clarky.txt'));
N_4 = table2array(readtable('3500 clarky.txt'));
N_5 = table2array(readtable('4500 clarky.txt'));
N_6 = table2array(readtable('5500 clarky.txt'));

alpha_1 = M_1(:,1);
cl_1 = M_1(:,2);
cd_1 = M_1(:,3);
clcd_1 = cl_1./cd_1;

alpha_2 = M_2(:,1);
cl_2 = M_2(:,2);
cd_2 = M_2(:,3);
clcd_2 = cl_2./cd_2;

alpha_3 = M_3(:,1);
cl_3 = M_3(:,2);
cd_3 = M_3(:,3);
clcd_3 = cl_3./cd_3;

alpha_4 = M_4(:,1);
cl_4 = M_4(:,2);
cd_4 = M_4(:,3);
clcd_4 = cl_4./cd_4;

alpha_5 = M_5(:,1);
cl_5 = M_5(:,2);
cd_5 = M_5(:,3);
clcd_5 = cl_5./cd_5;

alpha_6 = M_6(:,1);
cl_6 = M_6(:,2);
cd_6 = M_6(:,3);
clcd_6 = cl_6./cd_6;

%clarkyy

alpha_A = N_1(:,1);
cl_A = N_1(:,2);
cd_A = N_1(:,3);
clcd_A = cl_A./cd_A;

alpha_A2 = N_2(:,1);
cl_A2 = N_2(:,2);
cd_A2 = N_2(:,3);
clcd_A2 = cl_A2./cd_A2;

alpha_A3 = N_3(:,1);
cl_A3 = N_3(:,2);
cd_A3 = N_3(:,3);
clcd_A3 = cl_A3./cd_A3;

alpha_A4 = N_4(:,1);
cl_A4 = N_4(:,2);
cd_A4 = N_4(:,3);
clcd_A4 = cl_A4./cd_A4;

alpha_A5 = N_5(:,1);
cl_A5 = N_5(:,2);
cd_A5 = N_5(:,3);
clcd_A5 = cl_A5./cd_A5;

alpha_A6 = N_6(:,1);
cl_A6 = N_6(:,2);
cd_A6 = N_6(:,3);
clcd_A6 = cl_A6./cd_A6;
                        
figure(1)
ax1 = nexttile;
plot(ax1,alpha_1,cl_1,'k--',alpha_2,cl_2,'k.-',alpha_3,cl_3,'k-o',alpha_4,cl_4,'k-x',alpha_5,cl_5,'k-d',alpha_6,cl_6,'k-s')
title('NACA 0012 - $C_l$ vs $\alpha$')
xlabel('\alpha [°]', 'Interpreter', 'tex')
xticks(-5:2.5:20)
ylabel('$C_l [-]$', 'Interpreter', 'latex')
ylim([-1 2])
yticks(-1:0.5:2)
legend('Re=5e5','Re=1.5e6','Re=2.5e6','Re=3.5e6','Re=4.5e6','Re=5.5e6','location','southeast')
grid on

ax2 = nexttile;
plot(ax2,cd_1,cl_1,'k--',cd_2,cl_2,'k.-',cd_3,cl_3,'k-o',cd_4,cl_4,'k-x',cd_5,cl_5,'k-d',cd_6,cl_6,'k-s')
title('NACA 0012 - $C_l$ vs $C_d$')
xlabel('$C_d [-]$', 'Interpreter', 'latex')
xlim([0 0.2])
ylabel('$C_l [-]$', 'Interpreter', 'latex')
ylim([-1 2])
yticks(-1:0.5:2)
legend('Re=5e5','Re=1.5e6','Re=2.5e6','Re=3.5e6','Re=4.5e6','Re=5.5e6','location','southeast')
grid on

ax3 = nexttile;
plot(ax3,alpha_1,clcd_1,'k--',alpha_2,clcd_2,'k.-',alpha_3,clcd_3,'k-o',alpha_4,clcd_4,'k-x',alpha_5,clcd_5,'k-d',alpha_6,clcd_6,'k-s')
title('NACA 0012 - $C_l/C_d$ vs $\alpha$')
xlabel('\alpha [°]', 'Interpreter', 'tex')
xticks(-5:2.5:20)
ylabel('$C_l/C_d [-]$', 'Interpreter', 'latex')
ylim([-100 150])
legend('Re=5e5','Re=1.5e6','Re=2.5e6','Re=3.5e6','Re=4.5e6','Re=5.5e6','location','southeast')
grid on

figure(2);
ax4 = nexttile;
plot(ax4,alpha_A,cl_A,'k--',alpha_A2,cl_A2,'k.-',alpha_A3,cl_A3,'k-o',alpha_A4,cl_A4,'k-x',alpha_A5,cl_A5,'k-d',alpha_A6,cl_A6,'k-s')

title('Clark Y - $C_l$ vs $\alpha$')
xlabel('\alpha [°]', 'Interpreter', 'tex')
xticks(-5:2.5:20)
ylabel('$C_l [-]$', 'Interpreter', 'latex')
ylim([-1 2])
yticks(-1:0.5:2)
legend('Re=5e5','Re=1.5e6','Re=2.5e6','Re=3.5e6','Re=4.5e6','Re=5.5e6','location','southeast')
grid on

ax5 = nexttile;
plot(ax5,cd_A,cl_A,'k--',cd_A2,cl_A2,'k.-',cd_A3,cl_A3,'k-o',cd_A4,cl_A4,'k-x',cd_A5,cl_A5,'k-d',cd_A6,cl_A6,'k-s')
title('Clark Y - $C_l$ vs $C_d$')
xlabel('$C_d [-]$', 'Interpreter', 'latex')
xlim([0 0.2])
ylabel('$C_l [-]$', 'Interpreter', 'latex')
ylim([-1 2])
yticks(-1:0.5:2)
legend('Re=5e5','Re=1.5e6','Re=2.5e6','Re=3.5e6','Re=4.5e6','Re=5.5e6','location','southeast')
grid on

ax6 = nexttile;
plot(ax6,alpha_A,clcd_A,'k--',alpha_A2,clcd_A2,'k.-',alpha_A3,clcd_A3,'k-o',alpha_A4,clcd_A4,'k-x',alpha_A5,clcd_A5,'k-d',alpha_A6,clcd_A6,'k-s')
title('Clark Y - $C_l/C_d$ vs $\alpha$')
xlabel('\alpha [°]', 'Interpreter', 'tex')
xticks(-5:2.5:20)
ylabel('$C_l/C_d [-]$', 'Interpreter', 'latex')
ylim([-100 150])
legend('Re=5e5','Re=1.5e6','Re=2.5e6','Re=3.5e6','Re=4.5e6','Re=5.5e6','location','southeast')
grid on
