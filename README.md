# Dev stuff

Some useful files for development.

# Useful tools

Gnu sed: `brew install gnu-sed`

# Swagger stuff

Replace `\n` with actual newlines: `gsed -i 's/\\n/\n/g' swagger.json`

Replace `\\\"` with `\"`: `gsed -i 's/\\\\\\"/\\"/g' swagger.json`
