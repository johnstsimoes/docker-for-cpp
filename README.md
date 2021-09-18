# Dockerfile: docker-for-cpp

Docker container for CircleCI C++ CI/CD with GoogleTest and other libraries.

## Useful commands:

### Local debugging and testing

```
docker build -t johnstsimoes/cpp-ready .
docker run -it johnstsimoes/cpp-ready bash
docker cp libstein <NAME>:/libstein
docker system prune
```

### Cross-compile builds (for Intel and ARM) and publishing

```
docker buildx create --name johnstbuilder
docker buildx ls
docker buildx use johnstbuilder
docker buildx inspect --bootstrap
docker login
docker buildx build --platform linux/arm64,linux/amd64 -t johnstsimoes/cpp-ready --push .
```
