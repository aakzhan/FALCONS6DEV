public class SoqlR1Video {
    private static void fetchOppsAndAccount() {
        List<Opportunity> listOfOpps = [select id, Name, amount,stageName, accountId, account.name,    account.phone, Account.type, account.industry from opportunity where (stageName != 'closed Won' and stageName != 'Closed Lost')];
        System.debug('List of opps = '+ listOfOpps);

        for (opportunity opp : listOfOpps) {
            string printString = 'Opp name is '+ opp.Name;
            printString += ' , amount and stagename of opp is '+ opp.Amount +'&' + opp.StageName;
            if (opp.accountid != null) {
                printString += '. Account name of opp is '+ opp.account.Name + '('+opp.account.Phone+')';
                printString += ', account indutsry is '+ opp.account.Industry;
            }
           System.debug(printString);
        }
        }

    

    public static void generalMethod(){
        fetchOppsAndAccount();
    }
}
