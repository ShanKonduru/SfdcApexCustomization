public class createContactClass {
    public void method1(List<Account> accList){ // Getting the list of the account.
        for(Account acc:accList){
            if(acc.ParentId!=null){ // Checking if the account has a parent account associated to it.
                acc.addError('you cannot delete this account as it is associated with the parent account. Please remove relationship between accounts first to delete this account record.'); // Throw error if the condition is satisfied.
            }
        }
    }
}