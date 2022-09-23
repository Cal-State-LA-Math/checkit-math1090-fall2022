class Generator(BaseGenerator):
    def data(self):
        #scenario=randint(101,103)
        #scenario=103
        scenario=1101

        if scenario==1101:
            x=[["Cornell", 6277, 44966], ["Harvard", 2037, 39041], ["UPenn", 3661, 38918], ["Columbia", 2193, 36292], ["Brown", 2919, 32390], ["Yale", 1972, 31455], ["Princeton", 1894, 29303], ["Dartmouth", 2176, 20675]]
            a=randint(0,7)
            b=randint(0,7)
            while(a==b):
                b=randint(0,7)
            var_name1= x[a][0]
            var_big1= x[a][2]
            var_small1= x[a][1]
            percentage1=n(var_small1/var_big1*100)
            formatted_string="{:.2f}".format(percentage1)
            percentage_value1=float(formatted_string)
            var_name2= x[b][0]
            var_big2= x[b][2]
            var_small2= x[b][1]
            percentage2=n(var_small2/var_big2*100)
            formatted_string="{:.2f}".format(percentage2)
            percentage_value2=float(formatted_string)
            color=choice(["yellow", "blue"])
            action="were accepted by "
            if color=="blue":
                action="applied to "
            color_meaning="number of people that applied to that college"
            if color=="blue":
                color_meaning="number of people that were accepted to that college"
            if action=="were accepted by ":
                var_big2= x[b][1]
            hist_name=""
            hist_var=""
            hist_data=""
            hist_var2=""
            hist_low=""
            hist_high=""
            hist_shape=""
            statement_version = "A"

        if scenario==2101:
            x=[["All essential workers", 52, 48710000], ["Social workers", 78, 2320000], ["Health care", 77, 19090000], ["Critical retail", 53, 7570000], ["Medical supplies", 46, 520000], ["Food processing", 38, 2290000], ["Delivery, warehousing", 34, 2620000], ["Financial IT services", 28, 360000], ["Utility workers", 23, 2100000], ["Farmers", 23, 2100000], ["Hazardous materials", 19, 330000], ["Law enforcement", 17, 1940000], ["Transit, transportation", 15, 6140000], ["Defense", 14, 1030000], ["Resource extraction", 11, 380000]]
            a=randint(0,14)
            b=randint(0,14)
            while(a==b):
                b=randint(0,14)
            var_name1= x[a][0]
            var_big1= x[a][2]
            var_small1= x[a][1]
            percentage1=n(var_small1/var_big1*100)
            formatted_string="{:.2f}".format(percentage1)
            percentage_value1=float(formatted_string)
            var_name2= x[b][0]
            var_big2= x[b][2]
            var_small2= x[b][1]
            percentage2=n(var_small2*var_big2/100)
            formatted_string="{:.0f}".format(percentage2)
            percentage_value2=int(formatted_string)
            color=choice(["yellow", "blue"])
            action="were accepted by "
            if color=="blue":
                action="applied to "
            color_meaning="number of people that applied to that college"
            if color=="blue":
                color_meaning="number of people that were accepted to that college"
            if action=="were accepted by ":
                var_big2= x[b][1]
            hist_name=""
            hist_var=""
            hist_var2=""
            hist_data=""
            hist_low=""
            hist_high=""
            hist_shape=""
            statement_version = "B"

        if scenario==4101:
            x=[["<$35k", 21], ["$35k - 75k", 15], ["$75k - 100k", 13], [">$100k", 7]]
            a=randint(1,3)
            b=randint(0,3)
            while(a==b):
                b=randint(0,3)
            var_name1= x[a][0]
            var_big1=""
            var_small1= x[a][1]
            percentage1=""
            formatted_string=""
            percentage_value1=""
            var_name2= x[b][0]
            var_big2=""
            var_small2= x[b][1]
            percentage2=""
            formatted_string=""
            percentage_value2=""
            color=choice(["increases", "decreases"])
            action=choice(["histogram", "scatter plot", "time series", "single pie chart"])
            color_meaning="data is not numerical"
            if action=="time series":
                color_meaning="none of the variables are time"
            if action=="single pie chart":
                color_meaning="data is not a single level variable or it does not add up to 100%"
            hist_name="The percentage of people in that income group that smokes goes down."
            if color=="decreases":
                hist_name="The percentage of people in that income group that smokes goes up."
            hist_var=""
            hist_var2=""
            hist_data=""
            hist_low=""
            hist_high=""
            hist_shape=""
            statement_version = "D"

        if scenario==5101:
            x=[["Unitied Arab Emirates", 88, 9.7, 98], ["Italy", 73, 5.2, 78], ["Cuba", 80, 9.3, 90], ["France", 69, 7.4, 77], ["Chile", 83, 4.4, 87], ["China", 75, 10, 85], ["Brazil", 60, 16, 76], ["United Kingdom", 68, 6.8, 74], ["Vietnam", 44, 24, 69], ["United States", 58, 11, 69], ["Thailand", 56, 11, 67], ["Iran", 53, 14, 67], ["Mexico", 49, 8.9, 58], ["India", 30, 25, 55], ["Indonesia", 33, 16, 49], ["Russia", 37, 7, 44], ["Bangladesh", 20, 11, 32], ["South Africa", 23, 4.6, 28], ["Egypt", 13, 9.2, 23]]
            a=randint(0,18)
            b=randint(0,18)
            while(a==b):
                b=randint(0,18)
            var_name1= x[a][0]
            var_big1=""
            var_small1= x[a][1]
            percentage1=""
            formatted_string=""
            percentage_value1=choice(["40%", "50%", "60%", "70%"])
            var_name2= x[b][0]
            var_big2=""
            var_small2= x[b][1]
            percentage2=""
            formatted_string=""
            percentage_value2="15/28 = 53.57%"
            if percentage_value1=="60%":
                percentage_value2="19/28 = 67.86%"
            if percentage_value1=="50%":
                percentage_value2="21/28 = 75%"
            if percentage_value1=="40%":
                percentage_value2="23/28 = 82.14%"
            color=choice(["Thailand", "Germany", "Canada", "South Korea", "Egypt"])
            action=choice(["histogram", "scatter plot", "single pie chart"])
            color_meaning="data is not numerical"
            if action=="single pie chart":
                color_meaning="data is not a single level variable or it does not add up to 100%"
            hist_name="39,088,00"
            if color=="Germany":
                hist_name="56,576,000"
            if color=="Canada":
                hist_name="28,880,000"
            if color=="South Korea":
                hist_name="40,922,000"
            if color=="Egypt":
                hist_name="13,299,000"
            hist_var="69.8 million"
            if color=="Germany":
                hist_var="83.2 million"
            if color=="Canada":
                hist_var="38 million"
            if color=="South Korea":
                hist_var="51.8 million"
            if color=="Egypt":
                hist_var="102.3 million"
            hist_var2=""
            hist_data=""
            hist_low=""
            hist_high=""
            hist_shape=""
            statement_version = "E"

        if scenario==6101:
            x=[["Consumer/Retail", 13], ["Insurance/Financial", 12], ["Manufacturing/Agriculture", 12], ["Government and Intergovernmental organization", 11], ["Healthcare", 9], ["Education", 7], ["Professional services", 7], ["Critical Infrastructure/Telecom", 6], ["Media/Enterainment", 5], ["Real Estate", 5]]
            a=randint(0,9)
            b=randint(0,9)
            while(a==b):
                b=randint(0,9)
            var_name1= x[a][0]
            var_big1=""
            var_small1= x[a][1]
            percentage1=""
            formatted_string=""
            percentage_value1=choice([13, 11, 9, 6])
            var_name2= x[b][0]
            var_big2=""
            var_small2= x[b][1]
            percentage2=""
            formatted_string=""
            percentage_value2="Consumer/Retail"
            if percentage_value1==11:
                percentage_value2="Government and Intergovernmental organizations"
            if percentage_value1==9:
                percentage_value2="Healthcare"
            if percentage_value1==6:
                percentage_value2="Critical Infrastructure/Telecom"
            color=randint(1800, 2250)
            action=choice(["histogram", "scatter plot", "time series", "single pie chart"])
            color_meaning="No, data is not numerical"
            if action=="scatter plot":
                color_meaning="No, there is only one variable or the variable is not numerical"
            if action=="time series":
                color_meaning="No, none of the variables are time"
            if action=="single pie chart":
                color_meaning="Yes, if you knew the other 13% or added a category named 'Other'"
            hist_var=x[a][0]
            hist_var2=x[a][1]
            hist_name=round(((color*hist_var2)/100),0)
            hist_data=""
            hist_low=""
            hist_high=""
            hist_shape=""
            statement_version = "F"

        if scenario==1:
            x=[["Red", "Singapore", "90%"], ["Gold", "Japan", "86%"], ["Light purple", "France", "78%"], ["Green", "US", "73%"], ["Dark purple", "UK", "36%"], ["Teal", "Australia", "20%"]]
            a=randint(0,5)
            b=randint(0,5)
            while(a==b):
                b=randint(0,5)
            var_name1= x[a][0]
            var_big1= x[a][2]
            var_small1= x[a][1]
            percentage1=""
            formatted_string=""
            percentage_value1=""
            var_name2= x[b][0]
            var_big2= x[b][2]
            var_small2= x[b][1]
            percentage2=""
            formatted_string=""
            percentage_value2=""
            color=""
            action=choice(["histogram", "scatter plot", "single pie chart"])
            color_meaning="histograms only show one variable and this has two variables"
            if action=="scatter plot":
                color_meaning="scatter plot need two numerical variables"
            if action=="single pie chart":
                color_meaning="data is not a single level variable or it does not add up to 100%"
            hist_name="Line gragh"
            hist_var="time in months"
            hist_data=" of people wearing masks in"
            hist_var2="percentage of people who say they wear masks"
            hist_low="percentage"
            hist_high="The percentage"
            hist_shape="Line graph"
            statement_version = "C"

        return{
                "var_name1":var_name1,
                "var_big1":var_big1,
                "var_small1":var_small1,
                "percentage_value1":percentage_value1,
                "var_name2":var_name2,
                "var_big2":var_big2,
                "var_small2":var_small2,
                "percentage_value2":percentage_value2,
                "color":color,
                "color_meaning":color_meaning,
                "action":action,
                "hist_name":hist_name,
                "hist_var":hist_var,
                "hist_var2":hist_var2,
                "hist_low":hist_low,
                "hist_high":hist_high,
                "hist_shape":hist_shape,
                "hist_data":hist_data,
                "scenario": scenario,
                "statement_version":{statement_version:True}
            }
