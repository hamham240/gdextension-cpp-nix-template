#!/usr/bin/env python
import os
import sys

# Env variable pointing to directory where the patched godot-cpp src lives
# Provided by Nix
godot_cpp_src_dir = os.getenv("GODOT_CPP_SRC")

# Required build argument for where to dump plugin lib 
output_dir = ARGUMENTS["out"]
    
env = SConscript(f"{godot_cpp_src_dir}/SConstruct", variant_dir=output_dir)

# For reference:
# - CCFLAGS are compilation flags shared between C and C++
# - CFLAGS are for C-specific compilation flags
# - CXXFLAGS are for C++-specific compilation flags
# - CPPFLAGS are for pre-processor flags
# - CPPDEFINES are for pre-processor defines
# - LINKFLAGS are for linking flags

# tweak this if you want to use different folders, or more folders, to store your source code in.
env.Append(CPPPATH=["src/"])
sources = Glob("src/*.cpp")

if env["platform"] == "macos":
    library = env.SharedLibrary(
        "{}/libgdexample.{}.{}.framework/libgdexample.{}.{}".format(
            output_dir, env["platform"], env["target"], env["platform"], env["target"]
        ),
        source=sources,
    )
elif env["platform"] == "ios":
    if env["ios_simulator"]:
        library = env.StaticLibrary(
            "{}/libgdexample.{}.{}.simulator.a".format(output_dir, env["platform"], env["target"]),
            source=sources,
        )
    else:
        library = env.StaticLibrary(
            "{}/libgdexample.{}.{}.a".format(output_dir, env["platform"], env["target"]),
            source=sources,
        )
else:
    library = env.SharedLibrary(
        "{}/libgdexample{}{}".format(output_dir, env["suffix"], env["SHLIBSUFFIX"]),
        source=sources,
    )

Default(library)
