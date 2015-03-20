
public aspect Card {
	after(): call(void SaaS.checkActivity()){
		System.out.println( "Cards" ) ; 
	}
	after(SaaS s): target(s) && call(void SaaS.test()){
		s.setStatus("New");
		System.out.println("\nCurrent Status: " + s.getStatus());
		System.out.println("\nLane: " + s.getLane());
		s.goForward();
		System.out.println("\nUpdated Status: " + s.getStatus());
		System.out.println("\nLane: " + s.getLane());
		s.goForward();
		System.out.println("\nUpdated Status: " + s.getStatus());
		System.out.println("\nLane: " + s.getLane());
	}
}
