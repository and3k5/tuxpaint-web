# tuxpaint-web

My attempt to play around with emscripten and get tuxpaint to work in the browser

## Getting started

 - `git submodule update --init`

## Manual run

### Requirements
 - `git`
 - `cargo`
 - `meson` `>= 1.6.1`

### Initial steps
 - Install requirements if missing

## The easy way

```bash
docker compose -f build.yml up --build
```

## Steps (so far)
 - `cargo install cargo-c@^0.10.10+cago-0.86.0`
 - `source emsdk/emsdk_env.sh`
 - `./build.sh`

## Missing
 - Maybe add depencencies another way
 - Build script is not working. Cant build librsvg properly because cargo-cbuild isn't found. Happens despite using `cargo install cargo-c`.