class Generator(BaseGenerator):
    def data(self):
        sample=randint(900, 1100)
        result=randint(58, 69)

        return {
            "sample":sample,
            "result":result,
        }
