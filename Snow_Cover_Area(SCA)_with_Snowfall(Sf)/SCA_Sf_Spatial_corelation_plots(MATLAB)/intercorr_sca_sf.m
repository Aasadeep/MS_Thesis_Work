file='adaptor.mars.internal-1612344041.933236-15471-21-a7b2ac41-ef67-4cb6-af1c-fd1f14f953ca.nc'
ncdisp(file);
sf = ncread(file,'sf');
snowc = ncread(file,'snowc');
trd12 = zeros(321,141);
confidence12 = zeros(321,141);
for i = 1:321
    for j = 1:141
check = sf(i,j,:);
check1 = check(:);
check2 = snowc(i,j,:);
check3 = check2(:);
[r,p] = corr(check1,check3,'type','pearson')
trd12(i,j) = r;
confidence12(i,j) = p;
    end
end
map = pcolor(lon,lat,trd12.')
map.EdgeAlpha = 0
colorbar
xlabel('Longitude')
ylabel('Latitude')
legend('r-sf-sca')
saveas(map,'r_sf_sca.fig')