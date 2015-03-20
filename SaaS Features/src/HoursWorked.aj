
public aspect HoursWorked {
	after(): call(void SaaS.checkProgress()){
		System.out.print( "Hours Worked, " ) ; 
	}
}
