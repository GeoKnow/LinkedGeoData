An issue with the install script might be, that Osmosis removes all indexes upon loading a dataset and only re-creates some of them when done.


For the deb archive:

The scripts should read configurations by default from the following locations:

~/.config/linkedgeodata/profiles.d/default
/etc/linkedgeodata/profiles.d/default


/etc/linkedgeodata/lgd.conf
profileBase[0]=~/.....
profileBase[1]=./

