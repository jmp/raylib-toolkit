# Toolkit

This is a utility repository containing tools needed for building games
in C using [raylib](https://www.raylib.com/) on Windows. It is meant only
for my own purposes and is not expected to be useful for anyone else.

## How to use

Clone the repository and run `activate.cmd`.
This will download the required tools (if needed), and
adds the appropriate directories to `PATH`.

Then you can use whatever tools are included.

## Included tools

| Name      | Version     |
| ----------|-------------|
| 7-Zip     | [19.00][1]  |
| CMake     | [3.10.2][2] |
| MinGW     | [8.1.0][5]  |

[1]: https://7-zip.org/a/7z1900-extra.7z
[2]: https://cmake.org/files/v3.10/cmake-3.10.2-win32-x86.zip
[5]: https://downloads.sourceforge.net/project/mingw-w64/Toolchains%20targetting%20Win64/Personal%20Builds/mingw-builds/8.1.0/threads-posix/seh/x86_64-8.1.0-release-posix-seh-rt_v6-rev0.7z

## Licenses

All included tools are distributed under their respective licenses:

* 7-Zip is distributed under the GNU Lesser General Public License, version 2.1 or later; see `tools/7zip/License.txt`.
* CMake is distributed under a 3-clause BSD License; see `tools/cmake/doc/cmake/Copyright.txt`.
* MinGW is distributed under several different licenses; see `tools/mingw/licenses/`.
