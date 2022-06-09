By default, all files in this folder are git-ignored except for this README.md.

This folder is mounted as a volume to several containers in order to allow for sharing files -
especially datasets.
A file `foo.bar` in this folder can be referenced with the URL `file:///share/foo.bar`

