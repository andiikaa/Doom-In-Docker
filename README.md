# Containerized Doom

Note: in contrast to the [original repo](https://github.com/CallumHoughton18/Doom-In-Docker) this implementation needs the env `BASE_PATH` to be set, resulting in the app served at `host:port/$BASE_PATH`.

Run with
```bash
docker compose up --build
```

Doom should now be playable on http://127.0.0.1:8080/doom

## Using prebuild container

Prebuild image can be found at [andiikaa/doom](https://hub.docker.com/repository/docker/andiikaa/doom/tags).

Run with
```bash
docker run -p 8080:8080 -e BASE_PATH=/doom docker.io/andiikaa/doom:0.0.1 
```