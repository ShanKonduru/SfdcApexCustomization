trigger ShanAccountDuplicationTrigger on Account (before insert) {
    System.Debug('Inside ShanAccountDuplicationTrigger');

    for(Account account:Trigger.new){
        List<Account> newAccount = [select ID, Name from Account where name = :account.Name];
        if(newAccount.size() >0  ){
            System.Debug('Account Name Already exists!!!');
            account.Name.addError('Account Name Already exists!!!');
        }
        else {
            System.Debug('Unique account Name - so adding');
        }
    }
}