public class AccountInfo {
    public static void showAccounts() {
        List<Account> accountWithOpp = new List<Account>();
        accountWithOpp=[Select id, name ,( select name from opportunities where closeDate>today )from Account];
        for (account eachAcc : accountWithOpp) {
            System.debug('Account name '+ eachAcc.name +'account id:'+ eachAcc.Id);

            List<Opportunity>eachAccOpp = eachAcc.Opportunities;
            for (Opportunity opp: eachAccOpp){
                System.debug('Opp name '+ opp.name);
            }
            System.debug('-----');
            }
        }
    }

