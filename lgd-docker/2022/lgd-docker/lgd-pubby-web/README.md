## lgd-pubby-web

This folder is currently not used because the docker image dld-present-pubby allows configuration - albeit limited one - via environment variables.
However, an extended lgd setup with auxiliary data sources (e.g. gadm, natural earth, interlink, etc would require multiple dataset definitions, and thus
a custom config.ttl file with custom placeholders.

Hence in the future a docker file is needed which supports specifying a custom config.ttl file with a simple envsubst of placeholders in it.


