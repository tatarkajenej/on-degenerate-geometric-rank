load("main.sage")

# Print out the rank loci and geometric rank of T_{2,7}:
print(RankProfile(T2_7))

print("\n\n")
# Verify that the tensor E6 is 4-unliftable in all flattenings:
E6_tensor = Tensor(E6)  # create a Tensor object from the matrix of linears forms E6 defined in data.sage; the Tensor is then used to pass between flattenings
for permutation in [(0,1,2), (1,2,0), (2,0,1)]:
    flattening = E6_tensor.flatten(*permutation)    # the flattening is again a matrix of linear forms
    rnd = RND(4, flattening, verbose=False) # create the rank-neutral directions space
    print(rnd.dimension() == E6.base_ring().ngens())  # the tensor is given as a matrix of linear forms, hence the dimension of the space is number of variables
