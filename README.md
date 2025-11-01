## Description
Godot GDExtension C++ plugin example project
## Build Instructions
First enter the nix development shell with `nix develop`. Then choose a build type with the following build commands:
```
# Basic build (defaults to output directory being ./build and build type being debug)
scons

# More specific build types
# Linux Debug
scons out=build platform=linux target=template_debug

# Linux Release
scons out=build platform=linux target=template_release

# Windows Debug
scons out=build platform=windows target=template_debug

# Windows Release
scons out=build platform=windows target=template_release
```
## Dependencies
Nix 25.05 package manager or NixOS
