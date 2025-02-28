class Generator(BaseGenerator):
    def data(self):
        
        n=randint(40, 80)
        age=choice(["4 to 9", "9 to 14 "])
        blinding=choice(["not know","know"])
        results=choice(["Self-selected running speed and expressed feelings of pleasure were significantly improved for participants using the pink mouth rinse", "Self-selected running speed and expressed feelings of pleasure were significantly improved for participants using the pink mouth rinse"])
        answer_4="Yes there was double blinding, the researchers evaluating the performance were blinded as were the subjects"
        if blinding=="know":
            answer_4="Yes, the subjects were blinded due to the placebo"
        hist_var=[[0, 59],[2, 132],[4, 55],[6, 21],[8, 4],[10, 3],[12, 0],[14, 11]]
        speed=[[59, "0 and 2"],[132, "2 and 4"],[55, "4 and 6"],[21, "6 and 8"],[4, "8 and 10"],[3, "10 and 12"],[11, "14 and 16"]]
        OC_1=randint(0,6)
        number_h=speed[OC_1][0]
        answer_h=speed[OC_1][1]
        OC_2=randint(0,3)
        speed_1=hist_var[OC_2][0]
        speed_2=hist_var[OC_2 + 3][0]
        answer_3a=hist_var[OC_2][1]
        answer_3b=hist_var[OC_2 + 1][1]
        answer_3c=hist_var[OC_2 + 2][1]
        answer_3=round(((answer_3a + answer_3b + answer_3c)/288),4)*100
        bar_var=[["dark","no improvement",.0208,"treatment"],["dark","mild improvement",.1042,"treatment"],["dark","moderate improvement",.1493,"treatment"],["dark","substantial improvement",.3889,"treatment"],["dark","very substantial improvement",.3368,"treatment"],["light","no improvement",.3785,"control"],["light","mild improvement",.3229,"control"],["light","moderate improvement",.2813,"control"],["light","substantial improvement",.0139,"control"],["light","very substantial improvement",.0035,"control"]]
        OC_3=randint(0,9)
        color=bar_var[OC_3][0]
        bar=bar_var[OC_3][1]
        group=bar_var[OC_3][3]
        percent=bar_var[OC_3][2] * 100
        OC_4=randint(0,4)
        if group=="treatment":
            OC_4=randint(5,9)
        group_2=bar_var[OC_4][3]
        bar_2=bar_var[OC_4][1]
        answer=bar_var[OC_4][2]
        answer_bar=answer * 288
        

        return {
            "n":n,
            "age":age,
            "blinding":blinding,
            "results":results,
            "answer_4":answer_4,
            "number_h":number_h,
            "answer_h":answer_h,
            "speed_1":speed_1,
            "speed_2":speed_2,
            "answer_3a":answer_3a,
            "answer_3b":answer_3b,
            "answer_3c":answer_3c,
            "answer_3":"{:.2f}".format(answer_3),
            "color":color,
            "bar":bar,
            "group":group,
            "percent":round(percent,2),
            "group_2":group_2,
            "bar_2":bar_2,
            "answer_bar":round(answer_bar,0),
        }
        
        
        
        
        
        
        
        
        