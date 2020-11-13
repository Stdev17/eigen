using LinearAlgebra
using IterativeSolvers
# using CUDA

# include("./utils/types.jl")
# using .Utils

dim = 819
light = 64

# CUDA.@profile begin
A = rand(dim, dim)
B = rand(light, light)
# end

function power_iteration(A, num_simulations::Int64)
    lambda, v = powm(A, tol=1e-3, maxiter=num_simulations)
    return v
end

# warm up
@time power_iteration(B, 1)

@time power_iteration(A, 16)