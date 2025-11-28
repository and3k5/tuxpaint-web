source $EMSDK/emsdk_env.sh && \
    cd glib && \
    meson setup _build && \
    meson compile -C _build && \
    cd .. && \
    cd pango && \
    meson setup _build && \
    meson compile -C _build && \
    cd .. && \
    cd fontconfig && \
    meson setup _build && \
    meson compile -C _build && \
    cd .. && \
    cd librsvg && \
    meson setup _build && \
    meson compile -C _build && \
    cd .. && \
    #cd SDL2_Pango && \
    #emconfigure ./configure && \
    #cd .. && \
    cd tuxpaint && \
    emcc src/tuxpaint.c \
        -I../glib/glib \
        -I../glib/gmodule \
        -I../glib \
        -I../glib/_build/glib \
        -I../glib/_build \
        -I../pango/_build/pango \
        -I../pango/_build \
        -I../fontconfig/_build/fontconfig \
        -I../fontconfig/_build \
        -I../librsvg/include \
        -I../pango \
        -I../SDL2_Pango/src \
        -s USE_SDL=2 \
        -s USE_SDL_IMAGE=2 \
        -s USE_SDL_TTF=2 \
        -s USE_SDL_GFX=2 \
        -s USE_LIBPNG=1 && \
    cd .. && \
    echo done!
