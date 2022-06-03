Account a = new Account();
a.Name = 'Mona';
a.Phone = '';
a.AnnualRevenue = 909090;

Account b = new Account();
b.Name = 'Lisa';
b.Phone = '11111';
b.site = '';

List<Account> ab = new List<Account>{a,b};
string accountJSON1 = JSON.serialize(ab);
System.debug(accountJSON1);

List<Account> listAccount = [SELECT id, name, phone, site, AnnualRevenue from Account LIMIT 5];
string accountJSON22 = JSON.serialize(listAccount);
System.debug(accountJSON22);