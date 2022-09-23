class Generator(BaseGenerator):
    def data(self):
        out=randint(0,4)
        sample=randint(1800, 2475)
        result_opt=[[randint(30, 45)], [randint(38, 53)], [randint(45, 60)], [randint(65, 80)], [randint(42, 57)]]
        outcome_opt=[["agreed that “political involvement rarely has any tangible results”."],["approve of President Biden’s overall job performance."], [" believe the Republican party cares more about the elite than serving the interests of young people."], ["are either “very” or “somewhat” comfortable with a close friend coming out as LGBTQ+."], ["ranked education as one of the two most important factors to American’s global strength in the future."]]
        result=result_opt[out][0]
        outcome=outcome_opt[out][0]
        return {
            "sample":sample,
            "result":result,
            "outcome":outcome,
        }

