hold off
clear
l1 = 5; l2 = 4; l3 = 2; l4 = 4; l5 = 4;
for t1=0:pi/18:2*pi
    for t2=0:pi/18:2*pi
        %for t3=0:pi/18:2*pi
            P = Rot_z(t1)*Trans(0,0,l1)*Trans(0,l2,0)*Rot_x(t2)*Trans(-l3,0,0)*Trans(0,l4,0)*Trans(0,0,l5)*[0;0;0;1];
            Px = P(1,1);
            Py = P(2,1);
            Pz = P(3,1);
            plot3(Px,Py,Pz,"*");
            hold on;
        %end
    end
end