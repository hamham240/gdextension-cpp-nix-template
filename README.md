## Build Instructions
First enter the nix development shell with `nix develop`. Then choose a build type with the following build commands:
Linux Debug `scons out=build platform=linux target=template_debug`
Linux Release `scons out=build platform=linux target=template_release`

Windows Debug `scons out=build platform=windows target=template_debug`
Windows Release `scons out=build platform=windows target=template_release`
