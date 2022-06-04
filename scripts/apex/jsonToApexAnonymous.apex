string jsonAccountString = '{"Name": "JsonToAPex", "Type":"Prospect", "AnnualRevenue": 50, "statuses": "New,InProgress"}';
Object ob = JSON.deserialize(jsonAccountString, Account.class);
Account acc = (Account)ob;
insert acc;

string jsonStringAcc2 = '[{"Name": "JsonToApex4", "Type": "Prospect", "AnnualRevenue": 50}, {"Name": "JsonToApex2", "Type": "Prospect", "AnnualRevenue": 1000}]';
list<Account> lA = (List<Account>)JSON.deserialize(jsonStringAcc2, List<Account>.class);
insert lA;


object ob = json.deserialize(jsonAccountString, account.class); //jsonAccountString json string, account.class is the Sobjects' class
account acc = (account)ob; //(account) is type cast, meaning the apex object