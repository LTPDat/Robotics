hold off
clear
l1 = 10; l2 = 3; l3 = 2; l4 = 6; l5 = 5; l6 = 5; l7 = 4; 
for t1=0:pi/18:2*pi
    for t2=0:pi/18:2*pi
        for t3=0:pi/18:2*pi
            P = Trans(0,0,l1)*Rot_z(t1)*Trans(0,0,l2)*Trans(0,0,l3)*Trans(0,l4,0)*Rot_z(t2)*Trans(0,l5,0)*Trans(0,0,-l6)*Rot_z(t3)*Trans(0,0,-l7)*[0;0;0;1];
            Px = P(1,1);
            Py = P(2,1);
            Pz = P(3,1);
            plot3(Px,Py,Pz,"*");
            hold on;
        end
    end
end