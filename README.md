# I passi della regina

By Davide Bucci

This project is the italian version of the text adventure game The Queen's Footsteps. It is written in the AWS language and it requires the AWS2C tool.

More information here:

https://github.com/DarwinNE/The-Queen-s-Footsteps

https://github.com/DarwinNE/aws2c

This game is distributed on Itch.io:

https://darwinne.itch.io/i-passi-della-regina

## Build and play

There is a build subdirectory for each computer system that is currently targeted by the game. The build is done using the make command on a Unix system.

This project should be a submodule of the AWS project, even if it can be used alone. When it is used as a submodule, once AWS is built it will refer to the AWS executable in the build directories (one for each computer systems) as ../../aws. If it is placed elsewhere, you will have to update the makefiles in the build directories.

The packaging of the executable is done by a script called produce.sh inside each build directory. There is a single common configuration file called config.sh that tells to the produce scripts where to find the packaging/disk access tools used to prepare the disk images, etc. for each computer. You will have to update it to refer to the commands of the tools installed in your system. 

## Compile and produce

This project expects a Unix-like operating system (Linux or macOS).

You will need different compilers and tools to build executable files for the
different platforms. In general, cc65 is the compiler of choice for all 6502
or 6502-like targets (all Commodore machines, the Apple 2), the z88dk for the Z80-based ones (Sinclair ZX Spectrum, RC2014, MSX, ...). Refer to the cc65 and z88dk documentation to install them on your machine.

In the `build` directory there is a directory for each target machine. The `makefile` allows to compile and run the executables. The packaging of the files (preparing a suitable disk or cassette image) is usually done by the `produce.sh` script inside each directory. All packaging scripts call an unique `config.sh` script in the `bin` directory that contains the path of all packaging and disk image tools. You will have to update the `config.sh` file to suit your install.

## License

This project is licensed under the GPL v3 license.