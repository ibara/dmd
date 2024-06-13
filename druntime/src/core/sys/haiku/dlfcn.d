/**
 * D header file for Haiku.
 *
 * Copyright: Copyright Brian Callahan 2024.
 * License:   $(HTTP www.boost.org/LICENSE_1_0.txt, Boost License 1.0).
 * Authors:   Brian Callahan
 */
module core.sys.haiku.dlfcn;

public import core.sys.posix.dlfcn;

version (Haiku):
extern (C):
nothrow:
@nogc:

/*
 * Special handle arguments for dlsym()/dlinfo().
 */
enum RTLD_NEXT    = cast(void*)-1;    /* Search subsequent objects. */
enum RTLD_DEFAULT = cast(void*)0;     /* Use default search algorithm. */
