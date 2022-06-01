public class SoqlDemo {
    public  static void accountSoql_1() {
        List<Account> listAcc = [Select ID, name from Account where name like '%A%'];
        System.debug('account list =' + listAcc);
        System.debug(('# of accounts = '+ listAcc.size()));


        Account acc = [Select Id, name from Account order by createddate desc Limit 1];
        System.debug('latest account created is '+ acc);

    }

    public static void accountSOQL_2(){
        account acc = [Select id, name, phone, accountnumber from account order by createddate desc limit 1];
        System.debug('latest account created is '+ acc);
        //store name in variable
        string accName = acc.name;
        String accPhone = acc.phone;
        System.debug('accName = '+accName + ', phone is '+ accPhone);
        System.debug('account number is '+ acc);
        
    }

    public static void accountSoql_3(){
        List<Account>listAcc = [select id, name, phone, accountNumber from account order by createddate desc];
        System.debug('all accounts '+ listAcc);

        for (account eachAccount  : listAcc) {
            id accid = eachAccount.id;
            string accName = eachAccount.name;
        String accPhone = eachAccount.phone;
        System.debug('accName = '+accName );
        System.debug('phone : '+ accPhone);
        System.debug('account number is '+ eachAccount.AccountNumber);
        System.debug('_____');

        }
    }

    public static void accountSoql_Filter(){
        string accNameFilter = 'SoftInnovas';
        List<Account>listAcc = [select id, name from account where name =: accNameFilter ];
        System.debug(listAcc);
    }

    public static void accountSoql_Filter(string accNameFilter){
        List<Account>listAcc = [select id, name from account where name =: accNameFilter ];
        System.debug(listAcc);
    }
}
