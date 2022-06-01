@isTest
public class AccountQueueableExampleTest {
    @TestSetup
    static void makeData(){
        list<account>accounts = new list<account>();
        for (Integer i = 0; i < 100; i++) {
            account a = new account(name = 'Test Account'+ i, Phone = '987654321');
            // account a1 = new account();
            // a1.Name = 'Test account a1 '+ i;
            accounts.add(a);
        }
        insert accounts;
    }
   @IsTest
   static void methodName(){
       List<Account> accs = [select id, name from account];
       Test.startTest();
       AccountQueueableExample aq = new AccountQueueableExample(accs);
       System.enqueueJob(aq);
       Test.stopTest();
       //validate the job ran
       integer count = [select count() from account where name like '%SI%'];
        System.assertEquals(100, count);
   }
}
