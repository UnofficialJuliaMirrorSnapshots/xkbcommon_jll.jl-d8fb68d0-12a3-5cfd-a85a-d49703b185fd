# Autogenerated wrapper script for xkbcommon_jll for arm-linux-musleabihf
export libxkbcommon

using Xorg_xkeyboard_config_jll
using Xorg_libxcb_jll
using Wayland_jll
using Wayland_protocols_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libxkbcommon`
const libxkbcommon_splitpath = ["lib", "libxkbcommon.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libxkbcommon_path = ""

# libxkbcommon-specific global declaration
# This will be filled out by __init__()
libxkbcommon_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libxkbcommon = "libxkbcommon.so.0"


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    append!.(Ref(PATH_list), (Xorg_xkeyboard_config_jll.PATH_list, Xorg_libxcb_jll.PATH_list, Wayland_jll.PATH_list, Wayland_protocols_jll.PATH_list,))
    append!.(Ref(LIBPATH_list), (Xorg_xkeyboard_config_jll.LIBPATH_list, Xorg_libxcb_jll.LIBPATH_list, Wayland_jll.LIBPATH_list, Wayland_protocols_jll.LIBPATH_list,))

    global libxkbcommon_path = abspath(joinpath(artifact"xkbcommon", libxkbcommon_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libxkbcommon_handle = dlopen(libxkbcommon_path)
    push!(LIBPATH_list, dirname(libxkbcommon_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

