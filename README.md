## Introduction ##
QDe is a lightweight Qt-based desktop for Linux.

## How to buid QDe ##

### 1. To build QDe you have to install first those Ubuntu packages ###
  * libqt4-dev
  * libasound2-dev
  * libphonon-dev
  * libxkbfile-dev
  * libxcomposite-dev
  * libxdamage-dev
  * (NOT NEEDED TO BUILD MASTER BRANCH) libxext-dev, libxrender-dev

### 2. Get the code ###
> git clone https://code.google.com/p/qde/
> cd qde/qde

### 3. Step to build and deploy to the system ###
> qmake && make && make install

### 4. How to test QDe ###
  * Install xephyr
> sudo apt-get install xserver-xephyr on Ubuntu

  * Install compositor manager (enable transparency and shadows)
> sudo apt-get install xcompmgr

  * launch QDe in a window
> Since QDe is not stable yet we suggest you to use inside a window to evaluate its stability.
> ./launch.sh

## QDe packages ##
  * Ubuntu - https://launchpad.net/~antonio-aloisio/+archive/qt-desktop-ppa
