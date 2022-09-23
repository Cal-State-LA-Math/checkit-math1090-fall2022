class Generator(BaseGenerator):
    def data(self):
        ND=RealDistribution('gaussian', 1)
        zscore_1=round(uniform(-2.85, 2.85),2)
        zscore_2=round(uniform(-1.88, 2.03),2)
        zscore_3=round(uniform(-1.75, -.05),2)
        zscore_4=round(uniform(.03, 1.79),2)
        
        mean_1=500.9
        SD_1=10.6
        mean_2=150
        SD_2=10
        ind_1=choice(["MCAT", "LSAT"])
        dep_1=round((zscore_1*SD_1+mean_1),0)
        if ind_1=="LSAT":
            dep_1=round((zscore_1*SD_2+mean_2),0)
        answer_1=round(((dep_1-mean_1)/SD_1),2)
        if ind_1=="LSAT":
            answer_1=round(((dep_1-mean_2)/SD_2),2)
        ind_2=choice(["MCAT", "LSAT"])
        dep_2=round((zscore_2*SD_1+mean_1),0)
        if ind_2=="LSAT":
            dep_2=round((zscore_2*SD_2+mean_2),0)
        answer_2=round(ND.cum_distribution_function((dep_2 - mean_1)/SD_1),4)
        if ind_2=="LSAT":
            answer_2=round(ND.cum_distribution_function((dep_2 - mean_2)/SD_2),4)
        ind_3="LSAT"
        if ind_2=="LSAT":
            ind_3="MCAT"
        percent_1=randint(33, 71)
        answer_3z=ND.cum_distribution_function_inv(percent_1/100)
        answer_3=round((answer_3z*SD_2 + mean_2),0)
        if ind_2=="LSAT":
            answer_3=round((answer_3z*SD_1 + mean_1),0)
        ind_4="LSAT"
        if ind_1=="LSAT":
            ind_4="MCAT"
        dep_3=round((zscore_3*SD_2+mean_2),0)
        if ind_1=="LSAT":
            dep_3=round((zscore_3*SD_1+mean_1),0)
        dep_4=round((zscore_4*SD_2+mean_2),0)
        if ind_1=="LSAT":
            dep_4=round((zscore_4*SD_1+mean_1),0)
        answer_4=round(ND.cum_distribution_function((dep_4 - mean_2)/SD_2),4) - round(ND.cum_distribution_function((dep_3 - mean_2)/SD_2),4)
        if ind_1=="LSAT":
            answer_4=round(ND.cum_distribution_function((dep_4 - mean_1)/SD_1),4) - round(ND.cum_distribution_function((dep_3 - mean_1)/SD_1),4)
        percent_2=randint(5, 10)
        dep_5=ND.cum_distribution_function_inv((100-percent_2)/100)
        answer_5a=round((dep_5*SD_1+mean_1),0)
        answer_5b=round((dep_5*SD_2+mean_2),0)
        
        return {
            "ind_1":ind_1,
            "dep_1":dep_1,
            "answer_1":"{:.2f}".format(answer_1),
            "ind_2":ind_2,
            "dep_2":dep_2,
            "answer_2":"{:.4f}".format(answer_2),
            "ind_3":ind_3,
            "percent_1":percent_1,
            "percent_2":percent_2,
            "answer_3":answer_3,
            "ind_4":ind_4,
            "dep_3":dep_3,
            "dep_4":dep_4,
            "answer_4":"{:.4f}".format(answer_4),
            "percent_2":percent_2,
            "answer_5a":answer_5a,
            "answer_5b":answer_5b,
            }
