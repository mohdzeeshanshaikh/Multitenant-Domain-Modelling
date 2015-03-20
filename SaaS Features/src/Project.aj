
public aspect Project {
	after(): call(void SaaS.checkProjectBase()){
		System.out.println( "Project" ) ; 
	}
}
