
public privileged aspect Activity {
	
			// Declarations
			declare parents: SaaS implements IActivity;

			// checkActivity Introduction
			public void SaaS.checkActivity() {
				System.out.print("Type of Activity  Selected: ");
			}
}
