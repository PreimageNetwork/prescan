PLATFORMS="linux/amd64"
IMAGES="harvester explorer-api explorer-polling explorer-ui"
REPO=preimage-network

docker buildx build --platform $PLATFORMS -t $REPO/harvester:latest harvester
docker buildx build --platform $PLATFORMS -t $REPO/explorer-polling:latest -f explorer-api/docker/polling/Dockerfile explorer-api
docker buildx build --platform $PLATFORMS -t $REPO/explorer-api:latest -f explorer-api/docker/api/Dockerfile explorer-api
docker buildx build --platform $PLATFORMS -t $REPO/explorer-ui:latest explorer-ui
