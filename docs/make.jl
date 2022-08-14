using Documenter
using julia_analysis

makedocs(
    sitename = "julia_analysis",
    format = Documenter.HTML(),
    modules = [julia_analysis]
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
#=deploydocs(
    repo = "<repository url>"
)=#
