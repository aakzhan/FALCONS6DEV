List<Account> accs = [select id, name from Account];
AccountQueueableExample qa = new AccountQueueableExample(accs);
ID jobID = system.enqueueJob(qa);
System.debug('jobID is '+ jobID);