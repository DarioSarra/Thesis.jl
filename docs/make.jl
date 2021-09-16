using Documenter, Thesis

makedocs(;
    modules=[Thesis],
    format=Documenter.HTML(),
    pages=[
        "Home" => "index.md",
    ],
    repo="https://github.com/DarioSarra/Thesis.jl/blob/{commit}{path}#L{line}",
    sitename="Thesis.jl",
    authors="DarioSarra",
    assets=String[],
)

deploydocs(;
    repo="github.com/DarioSarra/Thesis.jl",
)
