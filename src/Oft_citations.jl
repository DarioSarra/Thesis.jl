using Thesis

# search for "optimal foraging" or "optimal feeding"
oft_pubmed = CSV.read("/home/beatriz/Documents/Thesis/Miscellaneous/OFT_PubMed.csv", DataFrame)
oft_WOS = CSV.read("/home/beatriz/Documents/Thesis/Miscellaneous/OFT_WOS.csv", DataFrame)
chsh = CSV.read("/home/beatriz/Documents/Thesis/Miscellaneous/Charnov_Shoener.csv", DataFrame)

@df oft_pubmed scatter(:Year, :Count, xticks = 1910:10:2021,
    label = "OFT appearence in publications", legend = :topleft, markersize = 2.5)
    plot!([1966,1966],[60,1], arrow = true, label = "1966: MacArtur & Pianka; Emlen")
    plot!([1976,1976],[60,5], arrow = true, label = "1976: Charnov Marginal Value Theorem")
savefig(joinpath("/home/beatriz/Documents/Thesis/Figures","OFTappearencePubMed.pdf"))

@df oft_WOS scatter(:Year, :Count, xticks = 1910:10:2021,
    label = "OFT appearence in publications", legend = :topleft, markersize = 5,
    xlabel = "Year", ylabel = "Publication Count")
    plot!([1966,1966],[100,1], arrow = true, label = "1966: MacArtur & Pianka; Emlen", linewidth = 3)
    plot!([1976,1976],[100,10], arrow = true, label = "1976: Charnov Marginal Value Theorem", linewidth = 3)
savefig(joinpath("/home/beatriz/Documents/Thesis/Figures","OFTappearenceWOS.pdf"))


@df chsh plot(:Years, :Count_Ch, xticks = 1925:10:2020,
    label = "Charnov_1976", legend = :topleft, markersize = 2.5)
@df chsh plot!(:Years, :Count_Sh, label = "Shoener_1974")
