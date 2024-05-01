IMAGES="harvester explorer-api explorer-polling explorer-ui"
VERSION=latest
REPO=preimage-network
REGISTRY=us-central1-docker.pkg.dev/previous-421416

for img in $IMAGES; do
    docker tag $REPO/$img:$VERSION ${REGISTRY}/${REPO}/$img:$VERSION
    docker push ${REGISTRY}/${REPO}/$img:$VERSION
done
