#!/bin/sh
root=/media/fablab/dati/_sources/Scratch_3/src/scratch-desktop
source="$root/static/assets/"
destination="$root/dist/linux-unpacked/resources/app/static/assets"

rsync -azhv --stats --progress "$source" "$destination"

destination="$root/dist/linux-unpacked/resources/static"
#rm -r $destination
