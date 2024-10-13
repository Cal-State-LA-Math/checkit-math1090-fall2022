class Generator(BaseGenerator):
    def data(self):
        
        n=randint(40, 80)
        age=choice(["18 to 28 year old adults", "24 to 34 year old adults","30 to 40 year old adults"])
        blinding=choice(["were not aware which drink the participant was getting but the participants could see the color of the drink","were aware which drink the participant was getting and the participants could see the color of the drink"])
        results=choice(["Self-selected running speed and expressed feelings of pleasure were significantly improved for participants using the pink mouth rinse", "Self-selected running speed and expressed feelings of pleasure were significantly improved for participants using the pink mouth rinse"])
        answer_4="Yes there was single blinding, the researchers evaluating the performance were blinded"
        if blinding=="were aware which drink the participant was getting and the participants could see the color of the drink":
            answer_4="there was no blinding used"
        hist_var=[[2, 9],[4, 19],[6, 20],[8, 16],[10, 7],[12, 6],[14, 2]]
        speed=[[9, "2 and 4"],[19, "4 and 6"],[20, "6 and 8"],[16, "8 and 10"],[7, "10 and 12"],[6, "12 and 14"],[2, "14 and 16"]]
        OC_1=randint(0,6)
        number_h=speed[OC_1][0]
        answer_h=speed[OC_1][1]
        OC_2=randint(0,3)
        speed_1=hist_var[OC_2][0]
        speed_2=hist_var[OC_2 + 3][0]
        answer_3a=hist_var[OC_2][1]
        answer_3b=hist_var[OC_2 + 1][1]
        answer_3c=hist_var[OC_2 + 2][1]
        answer_3=round(((answer_3a + answer_3b + answer_3c)/79),4)*100
        bar_var=[["dark","1-Strongly Disagree",.0633,"treatment"],["dark","2-Disagree",.1013,"treatment"],["dark","3-Neutral",.2025,"treatment"],["dark","4-Agree",.3544,"treatment"],["dark","5-Strongly Agree",.2785,"treatment"],["light","1-Strongly Disagree",.0380,"control"],["light","2-Disagree",.2152,"control"],["light","3-Neutral",.4051,"control"],["light","4-Agree",.2278,"control"],["light","5-Strongly Agree",.1139,"control"]]
        OC_3=randint(0,8)
        color=bar_var[OC_3][0]
        bar=bar_var[OC_3][1]
        group=bar_var[OC_3][3]
        percent=bar_var[OC_3][2] * 100
        group_2="treatment"
        if group=="treatment":
            group_2="control"
        bar_2=bar_var[OC_3 + 1][1]
        answer=bar_var[OC_3 + 1][2]
        answer_bar=answer * 79
        

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
        
        
        
        
        
        
        
        
        