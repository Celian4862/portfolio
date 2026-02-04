IMAGE = portfolio
PORT = 5173

dev:
	docker build -t $(IMAGE) .
	docker run --rm -it -d -p $(PORT):$(PORT) $(IMAGE)

clean:
	docker image rm $(IMAGE)
