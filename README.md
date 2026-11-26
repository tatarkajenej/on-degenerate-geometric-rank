This is an implementation of a rank (un)liftability criterion accompanying the article "On degenerate geometric rank" (M. Doležálek, P. Pielasa, D. Wu, [arXiv:2607.18898](https://arxiv.org/abs/2607.18898)).

This work has been supported by European Union’s HORIZON–MSCA-2023-DN-JD programme under 
the Horizon Europe (HORIZON) Marie Skłodowska-Curie Actions, grant agreement 101120296 ([TENORS](https://github.com/tenors-network)).

# Running the code
All of the code uses [SageMath](https://www.sagemath.org). We have used version 10.9 to run it, though it probably works in other versions as well.

To run it, open an interactive Sage console and use `load("main.sage")`. This loads all of the defined functions and example tensors. The file [`howto.sage`](howto.sage) contains a brief showcase of the main functionality.

Note that the implementation of the rank (un)liftability criterion only works under some technical constraints: we work over the rational numbers, and we assume that the rank locus in question is irrational and is not entirely contained in a smaller rank locus, so as to contain smooth points of the corresponding secant variety. Lastly, an auxiliary function generating (random) rational points in the rank locus, which we call a "factory", is required -- by default we provide a basic factory to cover the following cases:

<ol type="A">
<li>the rank locus is the whole space;</li>
<li>the rank locus is a hypersurface whose equation is linear in one of the variables;</li>
<li>the rank locus is cut out by several coordinate subspaces (vanishing variables) and one equation of the type B.</li>
</ol>

Note that this is enough to cover the examples we refer to in the article. For anything else, the user needs to construct a suitable factory on their own.


# File structure

* [`main.sage`](main.sage) sets global parameters and loads `factories.sage`, `tensor.sage`, `rnd.sage`, `profile.sage` and `data.sage`
* [`factories.sage`](factories.sage) contains a basic implementation of "rational point factories" (see the discussion above) that covier our examples of interest.
* [`tensor.sage`](tensor.sage) implements a `Tensor` class useful for passing between different flattenings of the same tensor, which are themselves handled as matrices of linear forms.
* [`rnd.sage`](rnd.sage) implements the computation of the set of rank-neutral directions of a tensor; under our additional technical restrictions, this RND set will actually be a vector space. It is returned as a free module over the rationals (an abstract Sage object).
* [`profile.sage`](profile.sage) provides a `RankProfile` class useful for quickly printing out relevant data about a tensor: the dimensions and equations of their rank loci, and the resulting geometric rank.
* [`data.sage`](data.sage) defines all of the examples mentioned in the article: the $2\times 2$ matrix multiplication, the octonion structure tensor, the tensors of minimal border rank $m\leq 5$ and the invariant tensor in $S^2\mathbb C^3\otimes S^2\mathbb C^3\otimes S^2\mathbb C^3$.
* [`howto.sage`](howto.sage) is a brief showcase of how to use the implementation.
* [`octonions.sage`](octonions.sage) and [`E6.sage`](E6.sage) are dedicated scripts to run the verification of unliftability for two of the examples in the article.


# Examples from the article

The scripts to check the individual computational assertions in the paper are:

* The octonion structure tensor: [`octonions.sage`](octonions.sage)
* The invariant tensor in $S^2\mathbb C^3\otimes S^2\mathbb C^3\otimes S^2\mathbb C^3$: [`E6.sage`](E6.sage)

To run them, open the Sage console and use `load("<scriptname>.sage")`. (Each already loads `main.sage` on its own.)
