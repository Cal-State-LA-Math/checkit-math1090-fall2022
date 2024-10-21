import random
class Generator(BaseGenerator):
    def data(self):
        name_1 = choice(["Carlos","Diego","Juan"])
        N_1=randint(17,22)
        Min_1=randint(5,9)
        Q1_1=randint(10,11)
        Med_1=randint(12,14)
        Q3_1=randint(16,22)
        Max_1=randint(40,45)
        Mean_1=random.uniform(16,17)
        Std_1=random.uniform(7,9)
        name_2 = choice(["Akira","Asako","Ling"])
        N_2=randint(17,22)
        Min_2=randint(22,26)
        Q1_2=Min_2 + 2
        Med_2=Q1_2 + 2
        Q3_2=Med_2 + 1
        Max_2=Q3_2 + 3
        Mean_2=random.uniform(Med_2 - 1,Med_2 +1)
        Std_2=random.uniform(2,3)
        name_3 = choice(["Destiny","Laila","Alexis"])
        N_3=randint(17,22)
        Min_3=randint(10,12)
        Q1_3=randint(19,21)
        Med_3=Q1_3 + 1
        Q3_3=Med_3 +2
        Max_3=Q3_3 +1
        Mean_3=random.uniform(Med_3 - 3,Med_3 - 1)
        Std_3=random.uniform(2,3)
        OC_1=randint(0,3)
        score_a=[["minimum", "more", "25", Q1_2], ["minimum", "more", "75", Q3_2], ["maximum", "less", "25", Q3_2], ["maximum", "less", "75", Q1_2]]
        score_b=[["minimum", "more", "25", Q1_2], ["minimum", "more", "75", Q3_2], ["maximum", "less", "25", Q3_2], ["maximum", "less", "75", Q1_2]]
        min_max=score_a[OC_1][0]
        dir_1=score_a[OC_1][1]
        percent_1=score_a[OC_1][2]
        answer_1=score_a[OC_1][3]
        OC_2=randint(0,1)
        time=[["one",Q1_3,"25"],["three",Q3_3,"75"]]
        quar_2=time[OC_2][0]
        time_2=time[OC_2][1]
        answer_2=time[OC_2][2]
        stat=choice(["mean","standard deviation"])

        return {
            "name_1":name_1,
            "N_1":N_1,
            "Min_1":Min_1,
            "Q1_1":Q1_1,
            "Med_1":Med_1,
            "Q3_1":Q3_1,
            "Max_1":Max_1,
            "Mean_1":round(Mean_1,1),
            "Std_1":round(Std_1,1),
            "name_2":name_2,
            "N_2":N_2,
            "Min_2":Min_2,
            "Q1_2":Q1_2,
            "Med_2":Med_2,
            "Q3_2":Q3_2,
            "Max_2":Max_2,
            "Mean_2":round(Mean_2,1),
            "Std_2":round(Std_2,1),
            "name_3":name_3,
            "N_3":N_3,
            "Min_3":Min_3,
            "Q1_3":Q1_3,
            "Med_3":Med_3,
            "Q3_3":Q3_3,
            "Max_3":Max_3,
            "Mean_3":round(Mean_3,1),
            "Std_3":round(Std_3,1),
            "min_max":min_max,
            "dir_1":dir_1,
            "percent_1":percent_1,
            "answer_1":answer_1,
            "quar_2":quar_2,
            "time_2":time_2,
            "answer_2":answer_2,
            "stat":stat,
        }
