x=read.csv('sshf_th_jjas.csv')
# mk.test(x$jjas)
sens.slope(x$jjas, conf.level=0.95)
innovtrend(x$jjas)
# title(' ,                                                                              | sshf_th_jjas')


