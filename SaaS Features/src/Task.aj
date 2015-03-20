
public aspect Task {
	after(): call(void SaaS.checkActivity()){
		System.out.println( "Task" ) ; 
	}
	after(SaaS s): target(s) && call(void SaaS.test()){
		s.setHoursWorked(0);
		System.out.println("\nHours Worked: " + s.getHoursWorked());
		System.out.println("\nPercent Complete: " + s.getPercentComplete());
		s.updateHoursWorked(1);
		System.out.println("\nHours Worked: " + s.getHoursWorked());
		System.out.println("\nPercent Complete: " + s.getPercentComplete());
		s.updateHoursWorked(8);
		System.out.println("\nHours Worked: " + s.getHoursWorked());
		System.out.println("\nPercent Complete: " + s.getPercentComplete());
		s.updateHoursWorked(1);
		System.out.println("\nHours Worked: " + s.getHoursWorked());
		System.out.println("\nPercent Complete: " + s.getPercentComplete());
	}
}
