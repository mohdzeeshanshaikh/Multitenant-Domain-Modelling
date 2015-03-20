
public aspect WorkRemaining {
	after(): call(void SaaS.checkProgress()){
		System.out.print( "Work Remaining, " ) ; 
	}
}
