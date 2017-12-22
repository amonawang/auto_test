PKG="/Users/Shared/Jenkins/Home/workspace/my_pipeline_master-AMXCX5PJQ4L6Y72B7XKK2QU2UKY75TLVPYWQIET7GX4TQIWCGF6A"
IMAGE?=github.com/amonawang/auto_test

docker-build:
    docker run -i --rm -v `pwd`:$(PKG) --workdir=/src

build-image: docker-build
	docker build -t $(IMAGE) .

.PHONY: docker-build build-image
