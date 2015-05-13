#!/bin/bash

# Copyright (c) 2015, Chritopher Bayliss, christopher.j.bayliss@gmail.com
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of the <organization> nor the
#       names of its contributors may be used to endorse or promote products
#       derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

# Clean the previous build
lb clean

# Configure
lb config

# Configure packages
echo xfce4 vim lightdm-gtk-greeter iceweasel inkscape gimp vlc catfish \
galculator xfce4-whiskermenu-plugin libreoffice-writer libreoffice-calc \
libreoffice-impress libreoffice-math libreoffice-gtk libreoffice-help-en-us \
libreoffice-base-core libreoffice-common libreoffice-core libreoffice-draw \ 
> config/package-lists/desktop.list.chroot

# Reconfigure as per the instuction I found.
# FIXME: Why do this? I don't know, but it is what the instuctions I found said
#        to do. I need to futher read up on why.
lb config

# Custom additional repositories
#echo "#Additional repositories" > config/archives/custom.list.chroot

# Finally, build!
lb build

