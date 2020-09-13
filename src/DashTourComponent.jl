
module DashTourComponent
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "0.0.1"

include("jl__dashtour.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "dash_tour_component",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "dash_tour_component.min.js",
    external_url = "https://unpkg.com/dash_tour_component@0.0.1/dash_tour_component/dash_tour_component.min.js",
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "dash_tour_component.min.js.map",
    external_url = "https://unpkg.com/dash_tour_component@0.0.1/dash_tour_component/dash_tour_component.min.js.map",
    dynamic = true,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end
