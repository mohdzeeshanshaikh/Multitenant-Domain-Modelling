
public aspect Analytics {
	after(): call(void SaaS.checkAnalytics()){
		System.out.println( "Analytics" ) ; 
	}
}
