/**
  * D header file for Haiku image.h
  *
  * Copyright: Copyright © 2024, The D Language Foundation
  * License: <a href="http://www.boost.org/LICENSE_1_0.txt">Boost License 1.0</a>.
  * Authors: Brian Callahan
  */
module core.sys.haiku.image;

version (Haiku):
extern (C):
nothrow:
@nogc:

alias int image_id;
alias int status_t;

enum image_type
{
    B_APP_IMAGE = 1,
    B_LIBRARY_IMAGE,
    B_ADD_ON_IMAGE,
    B_SYSTEM_IMAGE
}

struct image_info
{
    image_id   id;
    image_type type;
    int        sequence;
    int        init_order;
    void function() init_routine;
    void function() term_routine;
    int        device;
    long       node;
    char[1024] name;
    void*      text;
    void*      data;
    int        text_size;
    int        data_size;
}

status_t _get_next_image_info(int, int*, image_info, size_t);
