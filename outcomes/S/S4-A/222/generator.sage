class Generator(BaseGenerator):
    def data(self):
        graph_var=[["Asian", "black", "21.9", "in total"], ["Asian", "blue", "26.1", "men"], ["Asian", "teal", "18.8", "women"], ["Black", "black", "19", "in total"], ["Black", "blue", "20.1", "men"], ["Black", "teal", "17.7", "women"], ["Latino", "black", "15.4", "in total"], ["Latino", "blue", "16", "men"], ["Latino", "teal", "14.5", "women"], ["White", "black", "15.6", "in total"], ["White", "blue", "15.6", "men"], ["White", "teal", "14.3", "women"]]
        OC_2=randint(0,11)
        OC_3=randint(0,11)
        OC_4=randint(0,11)
        week_2=graph_var[OC_2][2]
        color_2=graph_var[OC_2][1]
        race_2=graph_var[OC_2][0]
        answer_2=graph_var[OC_2][3]

        return {
            "week_2":week_2,
            "color_2":color_2,
            "race_2":race_2,
            "answer_2":answer_2,
            
        }
