k=0;
z=0;
file = 'adaptor.mars.internal-1612344041.933236-15471-21-a7b2ac41-ef67-4cb6-af1c-fd1f14f953ca.nc';
ncdisp(file)
sca = ncread(file,'snowc');
sca_wh1 = sca(120:136,57:72,1:479);
    for a=1:479
        n = sca_wh1(:,:,a);
        n(isnan(n))=[];
        k=k+1;
        p(k,1)=mean(n,'all');
    end
   % annual stacking - 39 years leaving last year out of 40
    for i=0:38
    b = mean(p((12.*i+1):(12+12.*i)));
    disp(b);
    annual1(i+1,1)=b;
    i=i+1;
    end
    % DJFM Stacking - 39 years leaving first year out of 40
    for j = 0:38
        x = 12 + 12.*j;
        c = mean(p([x,x+1,x+2,x+3]))
        disp(c);
        djfm1(j+1,1)=c;
    end
    %JJAS Stacking - All 40 Years
    for l = 0:39
        y = 6 + 12.*l;
        d = mean(p([y,y+1,y+2,y+3]))
        disp(d);
        jjas1(l+1,1)=d;
    end
    %----------------------------------------------------------%
    %----------------------------------------------------------%
sf = ncread(file,'sf');
sf_wh1 = sf(120:136,57:72,1:479);
    for a=1:479
        m = sf_wh1(:,:,a);
        m(isnan(m))=[];
        z=z+1;
        q(z,1)=mean(m,'all');
    end
   % annual stacking - 39 years leaving last year out of 40
    for i=0:38
    e = mean(q((12.*i+1):(12+12.*i)));
    disp(e);
    annual2(i+1,1)=e;
    i=i+1;
    end
    % DJFM Stacking - 39 years leaving first year out of 40
    for j = 0:38
        x = 12 + 12.*j;
        f = mean(q([x,x+1,x+2,x+3]))
        disp(f);
        djfm2(j+1,1)=f;
    end
    %JJAS Stacking - All 40 Years
    for l = 0:39
        y = 6 + 12.*l;
        g = mean(q([y,y+1,y+2,y+3]))
        disp(g);
        jjas2(l+1,1)=g;
    end
    
    
    % graphs - cftool 1979-2018
    %years1 = transpose(1979:2017); %annual
    %years2 = transpose(1980:2018); %djfm
    %years3 = transpose(1979:2018); %jjas
    %cftool - using for wh Snowfall
    cftool(annual2(:),annual1(:))
    cftool(djfm2(:),djfm1(:))
    cftool(jjas2(:),jjas1(:))
    
    %annual 
    [r1,p1] = corr(annual2,annual1,'type','pearson') %sequence doesnot matter
    [r2,p2] = corr(annual2,annual1,'type','spearman')
    
    %djfm
    [r3,p3] = corr(djfm2,djfm1,'type','pearson')
    [r4,p4] = corr(djfm2,djfm1,'type','spearman')
    
    %jjas
    [r5,p5] = corr(jjas2,jjas1,'type','pearson')
    [r6,p6] = corr(jjas2,jjas1,'type','spearman')
    
    %saving values in array/matrix
    sca_sf_wh_rp = [r1,r2,r3,r4,r5,r6;p1,p2,p3,p4,p5,p6].'
    csvwrite('sca_sf_wh_rp.csv',sca_sf_wh_rp)
    
  %  A = table(annual);
   % writetable(A,'sf_wh_annual.csv')
  %  B = table(djfm);
   % writetable(B,'sf_wh_djfm.csv')
   % C = table(jjas);
   % writetable(C,'sf_wh_jjas.csv')
    D = table(sca_sf_wh_rp)
    writetable(D,'sca_sf_wh_rp.csv')
        