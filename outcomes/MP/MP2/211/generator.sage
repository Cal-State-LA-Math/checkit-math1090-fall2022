class Generator(BaseGenerator):
    def data(self):
        name=[["Chris"], ["Sharona"], ["Carlos"], ["Silvia"], ["Lily"], ["Wagner"], ["Ciro"], ["Fendi"]]
        test=[["SAT", 1363], ["SAT", 1428], ["SAT", 1508], ["SAT", 1372], ["ACT", 28], ["ACT", 32], ["ACT", 27], ["ACT", 29]]
        a=randint(0,7)
        b=randint(0,7)
        while(a==b):
            b=randint(0,7)
        c=randint(0,7)
        while(a==c or b==c):
            c=randint(0,7)
        d=randint(0,7)
        while(a==d or b==d or c==d):
            d=randint(0,7)
        e=randint(0,7)
        while(a==e or b==e or c==e or d==e):
            e=randint(0,7)
        f=randint(0,7)
        while(a==f or b==f or c==f or d==f or e==f):
            f=randint(0,7)
        g=randint(0,7)
        while(a==g or b==g or c==g or d==g or e==g or f==g):
            g=randint(0,7)
        h=randint(0,7)
        while(a==h or b==h or c==h or d==h or e==h or f==h or g==h):
            h=randint(0,7)
        z=randint(0,7)
        y=randint(0,7)
        while(z==y):
            y=randint(0,7)
        x=randint(0,7)
        while(z==x or y==x):
            x=randint(0,7)
        w=randint(0,7)
        while(z==w or y==w or x==w):
            w=randint(0,7)
        v=randint(0,7)
        while(z==v or y==v or x==v or w==v):
            v=randint(0,7)
        u=randint(0,7)
        while(z==u or y==u or x==u or w==u or v==u):
            u=randint(0,7)
        t=randint(0,7)
        while(z==t or y==t or x==t or w==t or v==t or u==t):
            t=randint(0,7)
        s=randint(0,7)
        while(z==s or y==s or x==s or w==s or v==s or u==s or t==s):
            s=randint(0,7)
        name_a=name[a][0]
        name_b=name[b][0]
        name_c=name[c][0]
        name_d=name[d][0]
        name_e=name[e][0]
        name_f=name[f][0]
        name_g=name[g][0]
        name_h=name[h][0]
        test_z=test[z][0]
        score_z=test[z][1]
        test_y=test[y][0]
        score_y=test[y][1]
        test_x=test[x][0]
        score_x=test[x][1]
        test_w=test[w][0]
        score_w=test[w][1]
        test_v=test[v][0]
        score_v=test[v][1]
        test_u=test[u][0]
        score_u=test[u][1]
        test_t=test[t][0]
        score_t=test[t][1]
        test_s=test[s][0]
        score_s=test[s][1]
        var_1="Student"
        var_2="Test"
        var_3="Score"
        var_4="Scholarship"
        ship_a="Yes"
        if test_z=="SAT" and score_z < 1380.5 or test_z=="ACT" and score_z < 29.5:
            ship_a="No"
        ship_b="Yes"
        if test_y=="SAT" and score_y < 1380.5 or test_y=="ACT" and score_y < 29.5:
            ship_b="No"
        ship_c="Yes"
        if test_x=="SAT" and score_x < 1380.5 or test_x=="ACT" and score_x < 29.5:
            ship_c="No"
        ship_d="Yes"
        if test_w=="SAT" and score_w < 1380.5 or test_w=="ACT" and score_w < 29.5:
            ship_d="No"
        ship_e="Yes"
        if test_v=="SAT" and score_v < 1380.5 or test_v=="ACT" and score_v < 29.5:
            ship_e="No"
        ship_f="Yes"
        if test_u=="SAT" and score_u < 1380.5 or test_u=="ACT" and score_u < 29.5:
            ship_f="No"
        ship_g="Yes"
        if test_t=="SAT" and score_t < 1380.5 or test_t=="ACT" and score_t < 29.5:
            ship_g="No"
        ship_h="Yes"
        if test_s=="SAT" and score_s < 1380.5 or test_s=="ACT" and score_s < 29.5:
            ship_h="No"

        return {
            "name_a":name_a,
            "name_b":name_b,
            "name_c":name_c,
            "name_d":name_d,
            "name_e":name_e,
            "name_f":name_f,
            "name_g":name_g,
            "name_h":name_h,
            "test_z":test_z,
            "test_y":test_y,
            "test_x":test_x,
            "test_w":test_w,
            "test_v":test_v,
            "test_u":test_u,
            "test_t":test_t,
            "test_s":test_s,
            "score_z":score_z,
            "score_y":score_y,
            "score_x":score_x,
            "score_w":score_w,
            "score_v":score_v,
            "score_u":score_u,
            "score_t":score_t,
            "score_s":score_s,
            "var_1":var_1,
            "var_2":var_2,
            "var_3":var_3,
            "var_4":var_4,
            "ship_a":ship_a,
            "ship_b":ship_b,
            "ship_c":ship_c,
            "ship_d":ship_d,
            "ship_e":ship_e,
            "ship_f":ship_f,
            "ship_g":ship_g,
            "ship_h":ship_h,
            
            
            
            
            
            
            
            
            
            
            
        }
