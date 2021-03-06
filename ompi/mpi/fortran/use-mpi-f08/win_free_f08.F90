! -*- f90 -*-
!
! Copyright (c) 2010-2012 Cisco Systems, Inc.  All rights reserved.
! Copyright (c) 2009-2012 Los Alamos National Security, LLC.
!               All Rights reserved.
! Copyright (c) 2018      Research Organization for Information Science
!                         and Technology (RIST).  All rights reserved.
! $COPYRIGHT$

subroutine MPI_Win_free_f08(win,ierror)
   use :: mpi_f08_types, only : MPI_Win
   use :: ompi_mpifh_bindings, only : ompi_win_free_f
   implicit none
   TYPE(MPI_Win), INTENT(INOUT) :: win
   INTEGER, OPTIONAL, INTENT(OUT) :: ierror
   integer :: c_ierror

   call ompi_win_free_f(win%MPI_VAL,c_ierror)
   if (present(ierror)) ierror = c_ierror

end subroutine MPI_Win_free_f08
