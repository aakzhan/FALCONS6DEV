@isTest
public class DmlDemoTest {

    @isTest
    public static void DmlDemoTest1() {
        //call the method directly because it is static
        DmlDemo.dmlInsertDemo_stndObj();

        List<Account>listAcc = [select id, name from Account];
        System.assertEquals(1, listAcc.size());
        System.assertEquals('SoftInnovas', listAcc[0].Name);
    }
    
    @isTest
    public static void DmlDemoTest2() {
        //creating and inserting 
        Account acc = new Account();
        acc.Name = 'SoftInnovas Inc.';
        insert acc;

        DmlDemo.dmlUpdateDemo_2();

        //we need to check if contact is being inserted in Acc account
        List<Contact> listCnt = [Select id,name from Contact];
        System.assertEquals(1, listCnt.size());
        System.assertEquals('Biden', listCnt[0].Name);


    }
}       
