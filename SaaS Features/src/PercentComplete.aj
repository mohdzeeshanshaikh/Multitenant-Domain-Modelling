
public aspect PercentComplete {
	after(): call(void SaaS.checkProgress()){
		System.out.print( "Percent Complete, " ) ; 
	}
	before(SaaS s): target(s) && call(int SaaS.getPercentComplete()){
		s.setPercentComplete(s.getHoursWorked()*10);
	}
}
