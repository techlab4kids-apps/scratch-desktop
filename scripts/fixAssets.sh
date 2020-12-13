#!/bin/sh

resources=/media/fablab/dati/_sources/Scratch_3/src/scratch-desktop/static/assets
root=/media/fablab/dati/_sources/Scratch_3/src/scratch-desktop

destination="$root/dist/linux-unpacked/resources/app/static/assets"
destination2="$root/dist/linux-unpacked/resources/static/assets"

rm -r "$destination2"

mkdir -p "$destination2"

rsync -azhv --update --info=progress2 "$resources/" "$destination2"

rm -r "$destination"
ln -s "$destination2/" "$destination"

mv "$root/dist/linux-unpacked/scratch-desktop" "$root/dist/linux-unpacked/Scratch3-FLS.AppImage"
chmod +x "$root/dist/linux-unpacked/Scratch3-FLS.AppImage"
