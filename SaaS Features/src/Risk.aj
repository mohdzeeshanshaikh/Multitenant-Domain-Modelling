
public aspect Risk {
	after(): call(void SaaS.checkRisk()){
		System.out.println( "Risk" ) ; 
	}
}
