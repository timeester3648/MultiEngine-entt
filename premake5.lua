include "../../premake/common_premake_defines.lua"

project "entt"
	kind "None"
	language "C++"
	cppdialect "C++latest"
	cdialect "C17"
	targetname "%{prj.name}"
	inlining "Auto"

	files {
		"./src/**.h",
		"./src/**.hpp"
	}

	filter { "toolset:msc" }
		files { "./natvis/**.natvis" }