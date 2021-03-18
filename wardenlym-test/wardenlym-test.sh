# https://github.com/snowplayfire/kubemark-outside-gce/blob/master/kubemark-guide.md

# build kubemark binary
make WHAT='cmd/kubemark'

# build kubemark image
cp ./_output/bin/kubemark ./cluster/images/kubemark/
cd ./cluster/images/kubemark/
REGISTRY=wardenlym IMAGE_TAG=v1.19 make 