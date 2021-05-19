SC="/opt/Synology Chat"

echo "copying patch to $SC"

sudo cp -r ubuntuPatch "$SC"

cd "$SC"

echo "creating symlinks"

sudo ln "ubuntuPatch/libharfbuzz.so.0.10702.0" libharfbuzz.so.0
sudo ln "ubuntuPatch/libpango-1.0.so.0.4000.14" libpango-1.0.so.0
sudo ln "ubuntuPatch/libpangocairo-1.0.so.0.4000.14" libpangocairo-1.0.so.0
sudo ln "ubuntuPatch/libpangoft2-1.0.so.0.4000.14" libpangoft2-1.0.so.0

echo "done! going back to home!!!!!!!"

cd

