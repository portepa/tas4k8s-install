CURRENT_DIR="$(dirname "$0")"
source $CURRENT_DIR/000-globals.sh

mkdir -p "tas-for-kubernetes" # required since image names of files include that path

for image in ${IMAGES[@]}; do
    docker save registry.pivotal.io/$image > $image.tar
done
