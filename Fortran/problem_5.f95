program problem_5

implicit none

integer :: num
! real  dimension(20) :: sum_num

num = 1
DO WHILE (num > 0)
	! To note this is done so all are included, you don't need to do this.
	! It follows mathematically that if a number has a prime factor 2 for example
	! then MOD(num,2) is already statisfied. Using this you don't need to test all cases
	! I included all for completeness and ease to the viewer.
	IF ( MODULO(num,2) == 0 .and. MODULO(num,3) == 0 .and. MODULO(num,4) == 0 &
	& .and. MODULO(num,5) == 0 .and. MODULO(num,6) == 0 .and. MODULO(num,7) == 0 &
	& .and. MODULO(num,8) == 0 .and. MODULO(num,9) == 0 .and. MODULO(num,10) == 0 &
	& .and. MODULO(num,11) == 0 .and. MODULO(num,12) == 0 .and. MODULO(num,13) == 0 &
	& .and. MODULO(num,14) == 0 .and. MODULO(num,15) == 0 .and. MODULO(num, 16) == 0 &
	& .and. MODULO(num,17) == 0 .and. MODULO(num,18) == 0 .and. MODULO(num, 19) == 0 &
	& .and. MODULO(num,20) == 0) THEN
	print *, num
	EXIT
	ELSE
	num = num  + 1
	END IF
END DO
end program problem_5

! Answer is  232792560
! Time = 0.641 seconds.
