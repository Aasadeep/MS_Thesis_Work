trd_sep12 = zeros(321,141)
for i = 1:321
    for j = 1:141
        if confidence12(i,j)<=0.01
             disp(i);
             disp(j);
             disp(trd12(i,j));
                  trd_sep12(i,j)=trd12(i,j);
        end
    end
end
map = pcolor(lon,lat,trd_sep12.')
map.EdgeAlpha = 0
colorbar
xlabel('Longitude')
ylabel('Latitude')
legend('r-sf-sca-0.01')
saveas(map,'r_sf_sca_001.fig')