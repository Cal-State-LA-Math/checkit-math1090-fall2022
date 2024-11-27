class Generator(BaseGenerator):
    def data(self):
        T = RealDistribution('gaussian', 1)
        ND=RealDistribution('gaussian', 1)
        htt=1
        p0dec=65
        CL=choice([90, 95, 99])
        n=10000
        r=uniform(.66,.69)
        s=10000
        if htt==0:
            direction="is not equal to"
            ineqsymb="neq"
        if htt==1:
            direction="is greater than"
            ineqsymb="gt"
        if htt==2:
            direction="is less than"
            ineqsymb="lt"
        
        z = T.cum_distribution_function_inv(1-((100-CL)/200))
        alpha1=numerical_approx((100-CL)/100)
        alpha=float("{:.2f}".format(alpha1))
        p0=p0dec*.01
        pvalue=0
    
        while(pvalue<0.03 or pvalue>0.07):
            if htt==0:
                x=randint(20,s-20)
            if htt==1:
                x=randint(ceil(s*p0),s-20)
            if htt==2:
                x=randint(20,s)
            phat1=numerical_approx(x/s)
            phat=float("{:.4f}".format(phat1))
            SE_c=numerical_approx(sqrt(phat1*(1-phat1)/s))
            SE1=float("{:.4f}".format(SE_c))
            SE_h=numerical_approx(sqrt(p0*(1-p0)/s))
            zscore=(phat1-p0)/SE_h
            if htt==0:
                pvalue=(1-(T.cum_distribution_function(abs(zscore))))*2
            if htt==1:
                pvalue=1-T.cum_distribution_function(zscore)
            if htt==2:
                pvalue=T.cum_distribution_function(zscore)
            
        LB1=numerical_approx(phat1-z*SE_c)
        LB=float("{:.4f}".format(LB1))
        LB_p="{:.2%}".format(LB)
        UB1=numerical_approx(phat1+z*SE_c)
        UB=float("{:.4f}".format(UB1))
        UB_p="{:.2%}".format(UB)
        conclusion="fail to reject"
        if pvalue<alpha:
            conclusion="reject"
        context="the claim is NOT supported"
        if conclusion=="reject":
            context="the claim is supported"
        stand_dev = ".0048"
        phat_2=phat-.011
        SD = (phat - .65)/.0048
        SD_2 = (phat_2 - .65)/.0048
        prob = round(ND.cum_distribution_function(SD_2),4)
        
            
        return {
        "CL":CL,
        "p0dec":p0dec,
        "n":n,
        "s":s,
        "x":x,
        "alpha":alpha,
        "pvalue":round((pvalue),3),
        "p0dec":p0dec,
        "p0":p0,
        "phat1":phat1,
        "phat":phat,
        "SE_c":SE_c,
        "SE1":SE1,
        "htt":htt,
        "direction":direction,
        "ineqsymb":ineqsymb,
        "conclusion":conclusion,
        "context":context,
        "UB":UB,
        "LB":LB,
        "LB_p":LB_p,
        "UB_p":UB_p,
        "stand_dev":stand_dev,
        "SD":round(SD,2),
        "prob":prob,
        "phat_2":round(phat_2,4) *100,
    }
