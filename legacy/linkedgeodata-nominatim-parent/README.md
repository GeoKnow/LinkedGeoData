The purpose of this nominatim module is to prepackage a specific tag of the nominatim git as a jar to speed up future builds.
While I considered creating debian package of nominatim (such as for use in the docker builds), nominatim has a lot of build dependencies so the process would be quite sophisticated:

* In principle, we would need to start docker container(s) in order to build nominatim(s) - plural, if we want to cover combinations of operating systems and nominatim versions,
* then copy relevent files out
* and bundle them as a debian package

So the more reasonable approach that is currently followed is:

* Bundle the git repo as jar in order to cache it as a whole and speed up the remaining process
* Have the docker containers build nominatim the way they need it - the docker build can now refer to the prepackaged nominatim jar

