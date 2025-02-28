import random
class Generator(BaseGenerator):
    def data(self):
        name_1 = choice(["California","New York","Texas"])
        N_1=randint(175,195)
        Min_1=randint(5000,5999)
        Q1_1=randint(18000,19000)
        Med_1=randint(25000,26000)
        Q3_1=randint(42000,43000)
        Max_1=randint(66000,67000)
        Mean_1=randint(30500, 31500)
        Std_1=randint(16500,17000)
        name_2 = choice(["Washington","Georgia","Iowa"])
        N_2=randint(45,55)
        Min_2=randint(4500,5500)
        Q1_2=randint(10500, 11500)
        Med_2=randint(21500,22500)
        Q3_2=randint(30000,31000)
        Max_2=randint(57500,58500)
        Mean_2=randint(23500,24500)
        Std_2=randint(16500,16800)
        name_3 = choice(["Oregon","Colorado","Idaho"])
        N_3=randint(30,40)
        Min_3=randint(7500,8500)
        Q1_3=randint(19500,20500)
        Med_3=randint(25000,26000)
        Q3_3=randint(39500,40500)
        Max_3=randint(61000,62000)
        Mean_3=randint(30500,31500)
        Std_3=randint(15000,15500)
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
            "Mean_1":Mean_1,
            "Std_1":Std_1,
            "name_2":name_2,
            "N_2":N_2,
            "Min_2":Min_2,
            "Q1_2":Q1_2,
            "Med_2":Med_2,
            "Q3_2":Q3_2,
            "Max_2":Max_2,
            "Mean_2":Mean_2,
            "Std_2":Std_2,
            "name_3":name_3,
            "N_3":N_3,
            "Min_3":Min_3,
            "Q1_3":Q1_3,
            "Med_3":Med_3,
            "Q3_3":Q3_3,
            "Max_3":Max_3,
            "Mean_3":Mean_3,
            "Std_3":Std_3,
            "min_max":min_max,
            "dir_1":dir_1,
            "percent_1":percent_1,
            "answer_1":answer_1,
            "quar_2":quar_2,
            "time_2":time_2,
            "answer_2":answer_2,
            "stat":stat,
        }
