# omni-img
A docker image + devcontainer containing my ideal dev setup

## Development of devcontainer

```
v_img=v0.0

docker build -t thecharlesblake/omni-img:$v_img -t thecharlesblake/omni-img:latest .
docker push thecharlesblake/omni-img:$v_img
docker push thecharlesblake/omni-img:latest
```

## Users of devcontainer

```
echo '{
  "image": "thecharlesblake/omni-img:latest"
}' > .devcontainer.json

```