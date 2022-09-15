hold off
clear
l1 = 5; l2 = 4; l3 = 3; l4 = 3; l5 = 2; l6 = 2; l7 = 3; l8 = 1;
for t1=0:pi/9:2*pi
    for t2=0:pi/9:2*pi
        for t3=0:pi/9:2*pi
            for t4=0:pi/9:2*pi
                P = Rot_z(t1)*Trans(0,0,l1)*Trans(0,l2,0)*Rot_x(t2)*Trans(-l3,0,0)*Trans(0,l4,0)*Rot_z(t3)*Trans(0,l5,0)*Rot_x(t4)*Trans(-l6,0,0)*Trans(0,l7,0)*Trans(0,0,-l8)*[0;0;0;1];
                Px = P(1,1);
                Py = P(2,1);
                Pz = P(3,1);
                plot3(Px,Py,Pz,"*");
                hold on;
            end
        end
    end
end