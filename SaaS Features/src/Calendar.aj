
public aspect Calendar {
	after(): call(void SaaS.checkCalendar()){
		System.out.println( "Calendar" ) ; 
	}
}
