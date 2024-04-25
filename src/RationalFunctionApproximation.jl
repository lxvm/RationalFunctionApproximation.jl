module RationalFunctionApproximation

using LinearAlgebra, ComplexRegions
using PyFormattedStrings

export Barycentric, nodes, weights, degree, rewind,
    unit_interval, unit_circle, unit_disk, isclosed
include("types.jl")

export poles, residues, roots
include("methods.jl")

export aaa
include("aaa.jl")

export approximate, check
include("approximate.jl")

export minimax
include("lawson.jl")

include("operations.jl")

# These are overloaded by plotting extensions.
export convergenceplot, errorplot

"""
    convergenceplot(r)

Plot the convergence history of a `Barycentric` or `Approximation` rational function.

Markers show the maximum error on (the boundary of) the domain as a function of
the numerator/denominator degree. A red marker indicates that the approximation
has disallowed poles in its domain. A gold halo highlights the best
approximation.


!!! note "Only available when `using Makie`"
    This function is available as an extension to Makie.jl
"""
function convergenceplot end

"""
    errorplot(r; use_abs=false)

Plot the pointwise error of an `Approximation` on (the boundary of) its domain.
If the error is not real, then the real and imaginary parts are plotted
separately, unless `use_abs=true`.

!!! note "Only available when `using Makie`"
    This function is available as an extension to Makie.jl
"""
function errorplot end

end
