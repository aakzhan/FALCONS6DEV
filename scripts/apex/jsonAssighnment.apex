list<Account> Acclist = [SELECT id, name from Account];
String accJSON = JSON.serialize(Acclist);
System.debug(accJSON);

JsonFormatter.RetrieveData();