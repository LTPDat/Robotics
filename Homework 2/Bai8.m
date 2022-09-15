hold off
clear
l1 = 2; l2 = 5; l3 = 10; l4 = 15; l5 = 3; l6 = 7;
for t1=0:pi/9:2*pi
    for t2=0:pi/9:2*pi
        for t3=0:pi/9:2*pi
            for t4=0:pi/9:2*pi
                P = Rot_z(t1)*Trans(0,l1,0)*Trans(0,0,l2)*Rot_x(t2)*Trans(0,0,l3)*Rot_x(t3)*Trans(0,l4,0)*Rot_x(t4)*Trans(0,l5,0)*Trans(0,0,-l6)*[0;0;0;1];
                Px = P(1,1);
                Py = P(2,1);
                Pz = P(3,1);
                plot3(Px,Py,Pz,"*");
                hold on;
            end
        end
    end
end