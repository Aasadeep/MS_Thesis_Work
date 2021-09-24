file='adaptor.mars.internal-1612344041.933236-15471-21-a7b2ac41-ef67-4cb6-af1c-fd1f14f953ca.nc' % .NetCDF file - 3D Matrix - 321 X 141 X 479
ncdisp(file);
lat = ncread(file,'latitude')
lon = ncread(file,'longitude')
snowfall = ncread(file,'sf'); %read
trd2 = zeros(321,141); %zeroes matrix
confidence2 = zeros(321,141); %zeroes matrix
for i = 1:321 %longitude
    for j = 1:141 %latitude
mat1 = snowfall(i,j,:); % keeing lat lon constant , varying temporally
mat2 = mat1(:);
mat2(isnan(mat2))=[0];
t = 1:479;
ti = t.';
mat2(:,2)=ti;
[taub tau h sig Z] = ktaub(mat2, 0.1, 0)
%[taub tau h sig Z S sigma sen n senplot CIlower CIupper D Dall C3] = ktaub(mat2, 0.1, 0)%caculating pearson correlation
trd2(i,j) = Z; %correlation value
confidence2(i,j) = sig; %confidence value 
    end
end
trd_sep2 = zeros(321,141)
for i = 1:321
    for j = 1:141
        if confidence2(i,j)<=0.1
             disp(i);
             disp(j);
             disp(trd2(i,j));
                  trd_sep2(i,j)=trd2(i,j);
        end
    end
end
map = pcolor(lon,lat,trd_sep2.') %heat plot
map.EdgeAlpha = 0
colorbar
xlabel('Longitude')
ylabel('Latitude')
legend('z-sf, p<0.01')
saveas(map,'z_sf1_99.fig')
file4='Admin2.shp'    %shape file - Indian Boundary
s = shaperead(file4)
openfig('z_sf1_99.fig')
hold on
xticks(65:2:97)
s = shaperead(file4)
mapshow(s,'Facecolor','none')
savefig('z_sf1_95b.fig')
%map = pcolor(lon,lat,trd2.') %heat plot
%map.EdgeAlpha = 0
%colorbar
%xlabel('Longitude')
%ylabel('Latitude')
%legend('z-snowfall, p<0.05')
%saveas(map,'z_snowfall_95.fig')
%file4='Admin2.shp'    %shape file - Indian Boundary
%s = shaperead(file4)
%openfig('z_snowfall_95.fig')
%hold on
%xticks(65:2:97)
%s = shaperead(file4)
%mapshow(s,'Facecolor','none')
%savefig('z_snowfall_95b.fig')