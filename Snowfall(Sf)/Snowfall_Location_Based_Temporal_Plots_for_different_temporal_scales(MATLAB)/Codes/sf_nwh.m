k=0;
file = 'adaptor.mars.internal-1612344041.933236-15471-21-a7b2ac41-ef67-4cb6-af1c-fd1f14f953ca.nc';
ncdisp(file)
sf = ncread(file,'sf');
sf_nwh1 = sf(89:110,24:45,1:479);
    for a=1:479
        n = sf_nwh1(:,:,a);
        n(isnan(n))=[];
        k=k+1;
        p(k,1)=mean(n,'all');
    end
   % annual stacking - 39 years leaving last year out of 40
    for i=0:38
    b = mean(p((12.*i+1):(12+12.*i)));
    disp(b);
    annual(i+1,1)=b;
    i=i+1;
    end
    % DJFM Stacking - 39 years leaving first year out of 40
    for j = 0:38
        x = 12 + 12.*j;
        c = mean(p([x,x+1,x+2,x+3]))
        disp(c);
        djfm(j+1,1)=c;
    end
    %JJAS Stacking - All 40 Years
    for l = 0:39
        y = 6 + 12.*l;
        d = mean(p([y,y+1,y+2,y+3]))
        disp(d);
        jjas(l+1,1)=d;
    end
    csvwrite('sf_nwh_annual.csv',annual)
    csvwrite('sf_nwh_djfm.csv',djfm)
    csvwrite('sf_nwh_jjas.csv',jjas)
    
    % graphs - cftool 1979-2018
    years1 = transpose(1979:2017); %annual
    years2 = transpose(1980:2018); %djfm
    years3 = transpose(1979:2018); %jjas
    %cftool - using for NWH Snowfall
    cftool(years1(:),annual(:))
    cftool(years2(:),djfm(:))
    cftool(years3(:),jjas(:))
    
    %annual 
    [r1,p1] = corr(years1,annual,'type','pearson') %sequence doesnot matter
    [r2,p2] = corr(years1,annual,'type','spearman')
    
    %djfm
    [r3,p3] = corr(years2,djfm,'type','pearson')
    [r4,p4] = corr(years2,djfm,'type','spearman')
    
    %jjas
    [r5,p5] = corr(years3,jjas,'type','pearson')
    [r6,p6] = corr(years3,jjas,'type','spearman')
    
    %saving values in array/matrix
    sf_nwh_rp = [r1,r2,r3,r4,r5,r6;p1,p2,p3,p4,p5,p6].'
    csvwrite('sf_nwh_rp.csv',sf_nwh_rp)
    
    A = table(annual);
    writetable(A,'sf_nwh_annual.csv')
    B = table(djfm);
    writetable(B,'sf_nwh_djfm.csv')
    C = table(jjas);
    writetable(C,'sf_nwh_jjas.csv')
    D = table(sf_nwh_rp)
    writetable(D,'sf_nwh_rp.csv')
        