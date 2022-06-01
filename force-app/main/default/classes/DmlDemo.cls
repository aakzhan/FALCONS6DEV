public  class DmlDemo {
    public static void dmlInsertDemo_stndObj(){
        //1. creating new instance of account sObject
        Account acc = new Account();
        //2. set field values
        acc.Name = 'SoftInnovas';
        acc.Site = 'www.softinnovas.com';
        acc.Description = 'Salesforce Bootcamp';

        // now comes DML
        insert acc;
        System.debug(acc);

    }

    public static void dmlInsertDemo_cstmObj(){
        //creating new instance
        salesforce_project__c sp = new salesforce_project__c();
        //set the filed
        sp.project_name__c = 'Teach DML to Falcons';
        sp.description__c = 'All 40% are great learners';
        //DML
        insert sp;
    }

    //UPDATE record right after INSERTING
    public static void dmlUpdateDemo_1(){
        Account acc = new account();
        acc.Name = '5';
        insert acc;
        system.debug('inserted '+ acc);
        acc.Name = 'Salesforce Inc. ';
        update acc;
        System.debug('updated '+ acc);
    }

    //UPDATE existing account
    public static void dmlUpdateDemo_3(){
        account acc = [select id, name  from account where name = 'SoftInnovas' order by CreatedDate desc limit 1];
        acc.Name = 'SoftInnovas Inc.';


        update acc;
        System.debug('updated acc '+ acc);
    }

    //
    public static void dmlUpdateDemo_2(){
        //1 soql to get ONE account
        Account acc = [Select id,name from account where name = 'SoftInnovas Inc.' limit 1];

        Contact cnt = new Contact();

        cnt.lastname = 'Biden';

        cnt.AccountId = acc.Id;

        insert cnt;
    }

    public static void dmlMultipleRecordInsert_right(){
        //create list of subject
        List<Account>listAcc = new  List<Account>();
        //create first instance
        account acc1 = new account();
        acc1.name = 'bulk acc 1';
       //add instance in list
       listAcc.add(acc1);

       account acc2 = new account();
       acc2.name = 'bulk acc 2';
       listAcc.add(acc2);

       account acc3 = new account();
       acc3.name = 'bulk acc 3';
       listAcc.add(acc3);

       insert listAcc;
    }

    public static void dmlMultipleRecordInsert2_right(){
        List<Account>listAcc = new  List<Account>();

        //create an account
        account acc = new account();
        acc.Name = 'SoftInnovas 29-April22 v0';
        acc.AccountNumber = 'ACSi-1';
        acc.Active__c = 'yes';
        listAcc.add(acc);

        for (integer i=1; i<150; i++) {
            account acc2 = new account();
            acc2.Name = 'SoftInnovas 29-April22 v0'+ i;
            acc2.AccountNumber = 'ACSi-1';
            acc2.Active__c = 'yes';
            listAcc.add(acc2);

        }
        System.debug('size of List '+ listAcc.size());
        
        if(!listAcc.isEmpty()){
            insert listAcc;
        }
    
    }
}
