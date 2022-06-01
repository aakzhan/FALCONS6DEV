public class DmlDemoClass2 {
    public static void dmlMultipleRecordUpdate_right() {
        List<Account> listAcc = [select id,name,description from account order by CreatedDate limit 150 ];

        List<Account> updateAccounts = new List<Account>();

        for (account acc : listAcc) {
            acc.Name += 'vb';
            acc.Description = 'Update via bulk DML';
            updateAccounts.add(acc);
        }

        if (!updateAccounts.isEmpty()) {
            update updateAccounts;
        }
    }
}
