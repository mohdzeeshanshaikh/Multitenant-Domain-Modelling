
public aspect Resource {
	after(): call(void SaaS.checkResources()){
		System.out.println( "Resources" ) ; 
	}
}
