
public class SaaS {

	private int hoursWorked;
	private int percentComplete;
	private String status;
	private String lane;
	private int workRemaining;
	private String estimatedCompletion;

	public void checkResources(){}
	public void checkRisk(){}
	public void checkCalendar(){}
	public void checkAnalytics(){}
	public void test(){}
		
	public int getHoursWorked() {
		return hoursWorked;
	}
	public void setHoursWorked(int hoursWorked) {
		this.hoursWorked = hoursWorked;
	}
	public void updateHoursWorked(int hoursWorked) {
		this.hoursWorked = this.hoursWorked + hoursWorked;
	}
	public int getPercentComplete() {
		return percentComplete;
	}
	public void setPercentComplete(int percentComplete) {
		this.percentComplete = percentComplete;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
		setLane(this.status);
	}
	public void goForward() {
		if (this.status == "New"){
			setStatus("Working");
		}
		else{
			setStatus("Finished");
		}
	}
	public String getLane() {
		return lane;
	}
	public void setLane(String status) {
		if (this.status == "New"){
			this.lane = "Requested";
		}
		else if (this.status == "Working"){
			this.lane = "In Progress";
		}
		else if (this.status == "Finished"){
			this.lane = "Done";
		}
	}
	public int getWorkRemaining() {
		return workRemaining;
	}
	public void setWorkRemaining(int workRemaining) {
		this.workRemaining = workRemaining;
	}
	public void updateWorkRemaining(int workRemaining) {
		setWorkRemaining(workRemaining);
		if(this.workRemaining==0)
			setEstimatedCompletion("0 Days");
		else if(this.workRemaining==30)
			setEstimatedCompletion("3 Days");
		else if(this.workRemaining==60)
			setEstimatedCompletion("6 Days");
		else if(this.workRemaining==80)
			setEstimatedCompletion("8 Days");
		else 
			setEstimatedCompletion("10 Days");
	}
	public String getEstimatedCompletion() {
		return estimatedCompletion;
	}
	public void setEstimatedCompletion(String estimatedCompletion) {
		this.estimatedCompletion = estimatedCompletion;
	}
	public void checkProjectBase() {
		System.out.print("Project Terminology: ");
	}
	public void checkProgress() {
		System.out.print("Progress Tracking: ");
	}
	public static void main(String[] args) {
		SaaS s = new SaaS();
		System.out.println("\n***Configuration for the SaaS Tenant you have selected***");
		System.out.println("\n--Mandatory Features--");
		s.checkActivity();
		s.checkProjectBase();
		s.checkProgress();	
		System.out.println("\n\n--Optional Features--");
		s.checkResources();
		s.checkRisk();
		s.checkCalendar();
		s.checkAnalytics();	
		System.out.println("\n***Test of selected Features***");
		s.test();
	}

}
