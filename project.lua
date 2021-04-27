project "vrpn"
  kind "StaticLib"
  language "C++"
  staticruntime "On"
  warnings "Off"
  characterset "mbcs"
  cppdialect "c++latest"
  exceptionhandling "on"
  
  files 
  {
    "project.lua",
    "**.C",
    "**.h" 
  }
  
  excludes
  {
    "vrpn_Android.C",
    "atmellib/**",
    "client_src/**",
    "server_src/**",
    "quat/testapps/**",
    "util/gen_rpc/**",
    "vrpn_Qt_GUI_server/**",
    "vrpn_HIDAPI_Linux_Hack.C",
    "submodules/**",
  }
  
  includedirs
  {
    ".",
    "quat",
    "atmellib",
    "submodules/hidapi/hidapi",
	"submodules/hidapi/libusb",
  } 
	
  filter { "configurations:Debug" }
    optimize "Debug"
    symbols "On"
  
  filter { "configurations:Release" }
    optimize "Full"

  filter { "system:Windows" }
    compileas "c++"
	
  filter { "system:linux" }
    compileas "c"
