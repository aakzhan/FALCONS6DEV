public class AccountQueueableExample implements Queueable {
    public List<Account> listAccount; //class variable 
    //paramettrized constructor
    public AccountQueueableExample(List<Account> accList){
        listAccount= accList;
    } 
    //mandatory method
    public void execute (QueueableContext qc){
        for (Account a : listAccount) {
            //Update the AccountName
            a.Name = a.Name + '-- SI';
        }
        update listAccount;
    }

}
