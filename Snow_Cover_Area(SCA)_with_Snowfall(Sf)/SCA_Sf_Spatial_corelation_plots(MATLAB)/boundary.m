file4='Admin2.shp'
%s = shaperead(file4)
a=1:5
    a=1;
openfig('r_t2m_sca.fig')
hold on
xticks(65:2:97)
s = shaperead(file4)
mapshow(s,'Facecolor','none')
savefig('r_t2m_scab.fig')
    a=2;
openfig('p_t2m_sca.fig')
hold on
xticks(65:2:97)
s = shaperead(file4)
mapshow(s,'Facecolor','none')
savefig('p_t2m_scab.fig')
    a=3;
openfig('r_t2m_sca_001.fig')
hold on
xticks(65:2:97)
mapshow(s,'Facecolor','none')
savefig('r_t2m_sca_001b.fig')
    a=4;
openfig('r_t2m_sca_005.fig')
hold on
xticks(65:2:97)
mapshow(s,'Facecolor','none')
savefig('r_t2m_sca_005b.fig')
    a=5;
openfig('r_t2m_sca_90.fig')
hold on
xticks(65:2:97)
mapshow(s,'Facecolor','none')
savefig('r_t2m_sca_90b.fig')
close all
