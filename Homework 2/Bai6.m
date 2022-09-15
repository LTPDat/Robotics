hold off
clear
l1 = 5; l2 = 2; l3 = 3; l4 = 7; l5 = 5; l6 = 3;
for t1=0:pi/9:2*pi
    for t2=0:pi/9:2*pi
        for t3=0:pi/9:2*pi
            for t4=0:pi/9:2*pi
                P = Rot_z(t1)*Trans(0,0,l1)*Trans(0,-l2,0)*Trans(0,0,l3)*Rot_x(t2)*Trans(0,l4,0)*Rot_x(t3)*Trans(0,l5,0)*Rot_x(t4)*Trans(0,-l6,0)*[0;0;0;1];
                Px = P(1,1);
                Py = P(2,1);
                Pz = P(3,1);
                plot3(Px,Py,Pz,"*");
                hold on;
            end
        end
    end
end