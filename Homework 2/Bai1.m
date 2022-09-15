hold off
clear
l1 = 5; l2 = 3; l3 = 6; l4 = 2; l5 = 2;
for t4=0:pi/18:2*pi
    for t5=0:pi/18:2*pi
        for t6=0:pi/18:2*pi
            P = Trans(0,0,l1)*Trans(l2,0,0)*Trans(0,l3,0)*Rot_y(t4)*Trans(0,l4,0)*Rot_z(t5)*Rot_x(t6)*Trans(0,l5,0)*[0;0;0;1];
            Px = P(1,1);
            Py = P(2,1);
            Pz = P(3,1);
            plot3(Px,Py,Pz,"*");
            hold on;
        end
    end
end