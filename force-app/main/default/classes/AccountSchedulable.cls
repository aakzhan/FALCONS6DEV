public class AccountSchedulable implements Schedulable{
    //mandatory method 
    public void execute(SchedulableContext sc){
        AccountsBAtch ab = new AccountsBatch();
        database.executeBatch(new accountsBatch());
    }
}
