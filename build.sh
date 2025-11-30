echo entering glib && \
    cd glib && \
    #echo run meson setup ... && \
    #meson setup _build && \
    #echo run meson compile && \
    #meson compile -C _build && \
    echo leave glib
    cd .. && \
    echo enter pango
    cd pango && \
    #echo run meson setup ... && \
    #meson setup _build && \
    #echo run meson compile && \
    #meson compile -C _build && \
    echo leave pango && \
    cd .. && \
    echo enter fontconfig && \
    cd fontconfig && \
    #echo run meson setup ... && \
    #meson setup _build && \
    #echo run meson compile && \
    #meson compile -C _build && \
    echo leave fontconfig && \
    cd .. && \
    echo enter librsvg && \
    cd librsvg && \
    #echo run meson setup ... && \
    #meson setup _build && \
    #echo run meson compile && \
    #meson compile -C _build && \
    echo leave librsvg && \
    cd .. && \
    #cd SDL2_Pango && \
    #emconfigure ./configure && \
    #cd .. && \
    echo enter tuxpaint && \
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
        -s USE_SDL_MIXER=2 \
        -s USE_SDL_TTF=2 \
        -s USE_SDL_GFX=2 \
        -s USE_LIBPNG=1 && \
    cd .. && \
    echo done!
