
public aspect Board {
	after(): call(void SaaS.checkProjectBase()){
		System.out.println( "Board" ) ; 
	}
}
