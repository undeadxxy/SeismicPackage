//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisSlice.hh"

//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//

#if NEED_UNDERSCORE
#define slice_wrap_create             slice_wrap_create_
#define slice_wrap_delete             slice_wrap_delete_
#define slice_wrap_update             slice_wrap_update_
#define slice_wrap_wrapup             slice_wrap_wrapup_
#define slice_wrap_oneset             slice_wrap_oneset_
#define slice_wrap_twosets            slice_wrap_twosets_
#elif NEED_CAPITALS
#define slice_wrap_create             SLICE_WRAP_CREATE
#define slice_wrap_delete             SLICE_WRAP_DELETE
#define slice_wrap_update             SLICE_WRAP_UPDATE
#define slice_wrap_wrapup             SLICE_WRAP_WRAPUP
#define slice_wrap_oneset             SLICE_WRAP_ONESET
#define slice_wrap_twosets            SLICE_WRAP_TWOSETS
#endif

//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//

extern "C"
    {
    CpseisBase::ModuleCreate   slice_wrap_create;
    CpseisBase::ModuleDestroy  slice_wrap_delete;
    CpseisBase::ModuleUpdate   slice_wrap_update;
    CpseisBase::ModuleWrapup   slice_wrap_wrapup;
    CpseisBase::ModuleOneset   slice_wrap_oneset;
    CpseisBase::ModuleTwosets  slice_wrap_twosets;
    }

//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//

CpseisSlice::CpseisSlice() : CpseisBase ("SLICE",
                                       slice_wrap_create,
                                       slice_wrap_delete,
                                       slice_wrap_update,
                                       slice_wrap_wrapup,
                                       slice_wrap_oneset,
                                       slice_wrap_twosets) {}

//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//