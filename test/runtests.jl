import ReTest: retest
import Clang

# Temporary hack to make @doc work in 1.11 for the documentation tests. See:
# https://github.com/JuliaLang/julia/issues/54664
using REPL

include("jllenvs.jl")
include("file.jl")
include("module.jl")

include("generators.jl")

retest(Clang, ClangTests; stats=true)
