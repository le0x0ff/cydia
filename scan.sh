rm "Packages"

rm "Packages.bz2"
./dpkg-scanpackages debs /dev/null > Packages
bzip2 -c9 Packages > Packages.bz2

rm "Packages.gz"
./dpkg-scanpackages debs /dev/null > Packages
gzip -c9 Packages > Packages.gz

./dpkg-scanpackages debs /dev/null > Packages
