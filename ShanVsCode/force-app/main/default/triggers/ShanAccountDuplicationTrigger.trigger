trigger ShanAccountDuplicationTrigger on Account (before insert) {
    for(Account account:Trigger.new){
        List<Account> newAccount = [Select ID, Name from Account where name = :account.Name];
        if(newAccount.size() >0  ){
            account.Name.addError('Account Name Already exists!!!');
        }
    }
}