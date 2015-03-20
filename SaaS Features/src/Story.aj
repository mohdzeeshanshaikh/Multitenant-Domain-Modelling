
public aspect Story {
	after(): call(void SaaS.checkActivity()){
		System.out.println( "Story" ) ; 
	}
	after(SaaS s): target(s) && call(void SaaS.test()){
		s.updateWorkRemaining(100);
		System.out.println("\nWork Remaining: " + s.getWorkRemaining() + " Hours");
		System.out.println("\nEstimated Completion: " + s.getEstimatedCompletion());
		s.updateWorkRemaining(60);
		System.out.println("\nWork Remaining: " + s.getWorkRemaining() + " Hours");
		System.out.println("\nEstimated Completion: " + s.getEstimatedCompletion());
		s.updateWorkRemaining(80);
		System.out.println("\nWork Remaining: " + s.getWorkRemaining() + " Hours");
		System.out.println("\nEstimated Completion: " + s.getEstimatedCompletion());
		s.updateWorkRemaining(30);
		System.out.println("\nWork Remaining: " + s.getWorkRemaining() + " Hours");
		System.out.println("\nEstimated Completion: " + s.getEstimatedCompletion());
		s.updateWorkRemaining(0);
		System.out.println("\nWork Remaining: " + s.getWorkRemaining() + " Hours");
		System.out.println("\nEstimated Completion: " + s.getEstimatedCompletion());
	}
}
