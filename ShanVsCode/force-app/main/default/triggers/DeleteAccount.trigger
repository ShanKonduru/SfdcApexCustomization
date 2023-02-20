trigger DeleteAccount on Account (before delete) {
	System.Debug('Inside DeleteAccount');
	createContactClass obj=new createContactClass(); // Creating instance of the class.
    if(trigger.isbefore && trigger.isdelete) // Using context variable.
    {
        obj.method1(Trigger.old); // Passing records to apex method.
    }
}