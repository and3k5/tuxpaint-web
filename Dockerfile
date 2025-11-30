FROM archlinux:latest

RUN pacman --noconfirm -Sy
RUN pacman --noconfirm -S extra/meson core/gcc extra/clang extra/git extra/rust
RUN pacman --noconfirm -S core/openssl
RUN pacman --noconfirm -S core/pkgconf
RUN pacman --noconfirm -S extra/cargo-c
RUN pacman --noconfirm -S extra/cmake
RUN pacman --noconfirm -S extra/cairo
RUN pacman --noconfirm -S extra/harfbuzz
RUN git clone https://github.com/emscripten-core/emsdk /tools/emsdk
RUN /tools/emsdk/emsdk install latest
RUN /tools/emsdk/emsdk activate latest
RUN echo source /tools/emsdk/emsdk_env.sh > /root/.bashrc


# Running `cc --version` gave "[Errno 2] No such file or directory: 'cc'"
# Running `nvc --version` gave "[Errno 2] No such file or directory: 'nvc'"
# Running `pgcc --version` gave "[Errno 2] No such file or directory: 'pgcc'"
# Running `icc --version` gave "[Errno 2] No such file or directory: 'icc'"
# Running `icx --version` gave "[Errno 2] No such file or directory: 'icx'"