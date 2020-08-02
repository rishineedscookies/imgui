project "ImGui"
    kind "StaticLib"
    language "C++"

    targetdir ("bin/" .. outputdir .. "/%(prj.name)")
    objdir ("bin-int/" .. outputdir .. "/%(prj.name)")

    files
    {
        "imcongfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imggui_demo.cpp"
    }

    filter "system:windows"
    systemversion "latest"
    cppdialect "C++17"
    staticruntime "On"

    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"