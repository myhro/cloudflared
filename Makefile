IMAGE := myhro/cloudflared
VERSION := $(shell ./version.sh)

build:
	docker build --build-arg VERSION=$(VERSION) -t $(IMAGE):$(VERSION) .

push:
	docker tag $(IMAGE):$(VERSION) $(IMAGE):latest
	docker push $(IMAGE):$(VERSION)
	docker push $(IMAGE):latest
