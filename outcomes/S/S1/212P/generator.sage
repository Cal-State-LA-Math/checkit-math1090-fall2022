class Generator(BaseGenerator):
    def data(self):
        sample=randint(450, 600)
        result=randint(5, 17)

        return {
            "sample":sample,
            "result":result,
            }
