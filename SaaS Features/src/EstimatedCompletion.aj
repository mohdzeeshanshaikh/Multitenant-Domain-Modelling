
public aspect EstimatedCompletion {
	after(): call(void SaaS.checkProgress()){
		System.out.print( "Velocity, " ) ; 
	}
}
