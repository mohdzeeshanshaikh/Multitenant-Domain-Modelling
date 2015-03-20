
public aspect Sprint {
	after(): call(void SaaS.checkProjectBase()){
		System.out.println( "Sprint" ) ; 
	}
}
