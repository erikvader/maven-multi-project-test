.PHONY: all
all:
	mvn clean verify

.PHONY: cli-only
cli-only:
	mvn --projects cli --also-make clean verify

.PHONY: setversion
setversion:
	mvn versions:set -DnewVersion=1.0.0 versions:commit
