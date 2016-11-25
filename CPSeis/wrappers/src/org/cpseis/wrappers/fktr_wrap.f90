!!------------------------ fktr_wrap.f90 --------------------------!!
!!------------------------ fktr_wrap.f90 --------------------------!!
!!------------------------ fktr_wrap.f90 --------------------------!!

!!!!!!!!!! DO NOT EDIT THIS FILE - it is machine generated !!!!!!!!!!

!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!

      module fktr_wrap_module
      use fktr_module
      implicit none
      public

      type :: fktr_wrap_struct
        type(fktr_struct),pointer :: obj
      end type fktr_wrap_struct

      end module fktr_wrap_module

!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!

      subroutine fktr_wrap_create (fpoint)  
      use fktr_wrap_module
      implicit none
      type(fktr_wrap_struct),intent(out)   :: fpoint
      type(fktr_struct)     ,pointer       :: obj           ! local

      nullify (obj)               ! needed for intel compiler.
      call fktr_create (obj)
      fpoint%obj => obj

      end subroutine fktr_wrap_create

!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!

      subroutine fktr_wrap_delete (fpoint)   
      use fktr_wrap_module
      implicit none
      type(fktr_wrap_struct),intent(inout) :: fpoint
      type(fktr_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call fktr_delete (obj)
      fpoint%obj => obj

      end subroutine fktr_wrap_delete

!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!

      subroutine fktr_wrap_update (fpoint)     
      use fktr_wrap_module
      implicit none
      type(fktr_wrap_struct),intent(inout) :: fpoint
      type(fktr_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call fktr_update (obj)

      end subroutine fktr_wrap_update

!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!

      subroutine fktr_wrap_wrapup (fpoint)      
      use fktr_wrap_module
      implicit none
      type(fktr_wrap_struct),intent(inout) :: fpoint
      type(fktr_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call fktr_wrapup (obj)

      end subroutine fktr_wrap_wrapup

!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!

      subroutine fktr_wrap_oneset (fpoint,ntr,  &
                                   hd,tr,lenhd,lentr,num)
      use fktr_wrap_module
      implicit none
      type(fktr_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd,lentr,num  ! argument
      integer               ,intent(inout) :: ntr              ! argument
      double precision      ,intent(inout) :: hd(lenhd,num)    ! argument
      real                  ,intent(inout) :: tr(lentr,num)    ! argument
      type(fktr_struct)     ,pointer       :: obj              ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
!!!!  call fktr (obj,ntr,hd,tr)                ! might be commented out.

      end subroutine fktr_wrap_oneset

!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!

      subroutine fktr_wrap_twosets (fpoint,ntr,                 &
                                    hd1,tr1,lenhd1,lentr1,num1, &
                                    hd2,tr2,lenhd2,lentr2,num2)
      use fktr_wrap_module
      implicit none
      type(fktr_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd1,lentr1,num1 ! argument
      integer               ,intent(in)    :: lenhd2,lentr2,num2 ! argument
      integer               ,intent(inout) :: ntr                ! argument
      double precision      ,intent(inout) :: hd1(lenhd1,num1)   ! argument
      real                  ,intent(inout) :: tr1(lentr1,num1)   ! argument
      double precision      ,intent(inout) :: hd2(lenhd2,num2)   ! argument
      real                  ,intent(inout) :: tr2(lentr2,num2)   ! argument
      type(fktr_struct)     ,pointer       :: obj                ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call fktr (obj,ntr,hd1,tr1,hd2,tr2)      ! might be commented out.

      end subroutine fktr_wrap_twosets

!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!