using CUDA
using Flux, Test
using Zygote
using Zygote: pullback
using Random, LinearAlgebra, Statistics

@assert CUDA.functional()
CUDA.allowscalar(false)

# include("../test_utils.jl")
include("test_utils.jl")

@testset "cuda" begin
  include("cuda.jl")
end
@testset "losses" begin
  include("losses.jl")
end
@testset "layers" begin
  include("layers.jl")
end
@testset "cudnn" begin
  include("cudnn.jl")
end
@testset "curnn" begin
  include("curnn.jl")
end
@testset "ctc" begin
  include("ctc.jl")
end
