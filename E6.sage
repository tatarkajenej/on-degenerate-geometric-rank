load("main.sage")

T6 = Tensor(E6) # (E6 is defined in data.sage)
for perm in [(0,1,2), (1,2,0), (2,0,1)]:
    E6_flattened = T6.flatten(*perm)
    rnd = RND(4, E6_flattened, verbose=False)
    print(perm, rnd.dimension(), rnd.dimension() == E6.base_ring().ngens())  # the tensor is given as a matrix of linear forms, hence the dimension of the space is number of variables
