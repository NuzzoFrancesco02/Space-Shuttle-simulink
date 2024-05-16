t = out.tout;
r = out.x_ecef.Data';
Terra3d;
hold on;
X = r(1,:); Y = r(2,:); Z = r(3,:);
axis([min(r(1,:))*1.2 max(r(1,:))*1.2 min(r(2,:))*1.2 max(r(2,:))*1.2 min(r(1,:))*1.2 max(r(3,:))*1.2])
traj = plot3(nan,nan,nan,'Color',"#A2142F");
h = plot3(nan,nan,nan,'or','MarkerFaceColor',"#77AC30",'MarkerEdgeColor',"#77AC30",'MarkerSize',10);

for i = 1:size(r,2)
    set(traj,'XData',X(1:i),'YData',Y(1:i),'ZData',Z(1:i));
    set(h,'XData',X(i),'YData',Y(i),'ZData',Z(i));
    drawnow
end