!!------------------------ dmoprep_wrap.f90 --------------------------!!
!!------------------------ dmoprep_wrap.f90 --------------------------!!
!!------------------------ dmoprep_wrap.f90 --------------------------!!

!!!!!!!!!! DO NOT EDIT THIS FILE - it is machine generated !!!!!!!!!!

!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!

      module dmoprep_wrap_module
      use dmoprep_module
      implicit none
      public

      type :: dmoprep_wrap_struct
        type(dmoprep_struct),pointer :: obj
      end type dmoprep_wrap_struct

      end module dmoprep_wrap_module

!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!

      subroutine dmoprep_wrap_create (fpoint)  
      use dmoprep_wrap_module
      implicit none
      type(dmoprep_wrap_struct),intent(out)   :: fpoint
      type(dmoprep_struct)     ,pointer       :: obj           ! local

      nullify (obj)               ! needed for intel compiler.
      call dmoprep_create (obj)
      fpoint%obj => obj

      end subroutine dmoprep_wrap_create

!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!

      subroutine dmoprep_wrap_delete (fpoint)   
      use dmoprep_wrap_module
      implicit none
      type(dmoprep_wrap_struct),intent(inout) :: fpoint
      type(dmoprep_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call dmoprep_delete (obj)
      fpoint%obj => obj

      end subroutine dmoprep_wrap_delete

!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!

      subroutine dmoprep_wrap_update (fpoint)     
      use dmoprep_wrap_module
      implicit none
      type(dmoprep_wrap_struct),intent(inout) :: fpoint
      type(dmoprep_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call dmoprep_update (obj)

      end subroutine dmoprep_wrap_update

!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!

      subroutine dmoprep_wrap_wrapup (fpoint)      
      use dmoprep_wrap_module
      implicit none
      type(dmoprep_wrap_struct),intent(inout) :: fpoint
      type(dmoprep_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call dmoprep_wrapup (obj)

      end subroutine dmoprep_wrap_wrapup

!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!

      subroutine dmoprep_wrap_oneset (fpoint,ntr,  &
                                   hd,tr,lenhd,lentr,num)
      use dmoprep_wrap_module
      implicit none
      type(dmoprep_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd,lentr,num  ! argument
      integer               ,intent(inout) :: ntr              ! argument
      double precision      ,intent(inout) :: hd(lenhd,num)    ! argument
      real                  ,intent(inout) :: tr(lentr,num)    ! argument
      type(dmoprep_struct)     ,pointer       :: obj              ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
!!!!  call dmoprep (obj,ntr,hd,tr)                ! might be commented out.

      end subroutine dmoprep_wrap_oneset

!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!

      subroutine dmoprep_wrap_twosets (fpoint,ntr,                 &
                                    hd1,tr1,lenhd1,lentr1,num1, &
                                    hd2,tr2,lenhd2,lentr2,num2)
      use dmoprep_wrap_module
      implicit none
      type(dmoprep_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd1,lentr1,num1 ! argument
      integer               ,intent(in)    :: lenhd2,lentr2,num2 ! argument
      integer               ,intent(inout) :: ntr                ! argument
      double precision      ,intent(inout) :: hd1(lenhd1,num1)   ! argument
      real                  ,intent(inout) :: tr1(lentr1,num1)   ! argument
      double precision      ,intent(inout) :: hd2(lenhd2,num2)   ! argument
      real                  ,intent(inout) :: tr2(lentr2,num2)   ! argument
      type(dmoprep_struct)     ,pointer       :: obj                ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call dmoprep (obj,ntr,hd1,tr1,hd2,tr2)      ! might be commented out.

      end subroutine dmoprep_wrap_twosets

!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!