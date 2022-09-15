hold off
clear
l1 = 5; l2 = 6; l3 = 2; l4 = 7; l5 = 5;
for t1=0:pi/18:2*pi
    for t2=0:pi/18:2*pi
        for t3=0:pi/18:2*pi
            P = Rot_z(t1)*Trans(0,0,l1)*Trans(l2,0,0)*Rot_z(t2)*Trans(0,0,l3)*Trans(l4,0,0)*Trans(0,0,-l5)*[0;0;0;1];
            Px = P(1,1);
            Py = P(2,1);
            Pz = P(3,1);
            plot3(Px,Py,Pz,"*");
            hold on;
        end
    end
end