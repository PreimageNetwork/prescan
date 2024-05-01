#!/bin/sh
#
# Polkascan Explorer
#
# Copyright 2018-2022 Stichting Polkascan (Polkascan Foundation).
# This file is part of Polkascan.
#
# Polkascan is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Polkascan is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Polkascan. If not, see <http://www.gnu.org/licenses/>.
#
git submodule update --init --recursive
cp explorer-ui-config.json explorer-ui/src/assets/config.json
cp explorer-ui-privacy-policy.html explorer-ui/src/assets/privacy-policy.html

echo -e "Done\n"
echo -e "1. to build images:\n\n\tbash docker/build.sh\n"
echo -e "2. to push images to registry:\n\n\tbash docker/push.sh\n"
echo -e "3. to start:\n\n\tIMAGE_REPO=preimage-network docker compose up -d\n"
echo -e "4. to stop:\n\n\tIMAGE_REPO=preimage-network docker compose down -v\n"
