Account acc1 = new account();

        acc1.Name = 'SI Test';
        acc1.Industry = 'Energy';
        acc1.Active__c = 'Yes';

        Account acc2 = new account();
        acc2.Name = 'UI Test';
        acc2.Industry = 'Energy';
        acc2.Active__c = 'No';

        Account acc12x = new account();
        Account acc12y = new account();

        List<Account> listAcc = new List<Account>{acc1, acc2, acc12x, acc12y};

        List<Database.SaveResult> results = Database.insert(listAcc, false);

        for( Database.SaveResult eachResult : results){
            if(eachResult.isSuccess()){
                system.debug('Account Succefully inserted , Account ID is: '+ eachResult.getId());

            }
            else {
                system.debug('Errors : '+ eachResult.getErrors());
            }
        }