load("main.sage")

rnd = RND(4, T_oct, verbose=False) # (T_oct is defined in data.sage)

print(rnd.dimension() == T_oct.base_ring().ngens())  # the tensor is given as a matrix of linear forms, hence the dimension of the space is number of variables
