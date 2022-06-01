public class demoDmlClass {
    public demoDmlClass() {
        System.debug('Welcome to the world of SOQL. Please enter the key character to search.');
    }
    public void dmlInsert(String key) {
        String newSearchText = '%'+ key +'%';
        List<Account> listAcc = [select id, name from Account WHERE Name LIKE :newSearchText];
        List<Contact> insertContacts = new List<Contact>();
        String NameText = '';
        if (listAcc.isEmpty()) {
            System.debug('Your key does not exist');
        }
        else if (!listAcc.isEmpty()) {
            for (Account eachAcc : listAcc) {
                System.debug('Account ID'+ eachAcc.Id +'Account Name:' + eachAcc.Name);
                NameText= 'Copied from Account named: '+ eachAcc.Name;
                Contact newContacts = new Contact();
                newContacts.LastName = NameText;
                insertContacts.add(newContacts);
            }
            if (!insertContacts.isEmpty()) {
                insert insertContacts;
                System.debug('Inserted Contatcs');
                System.debug(insertContacts);
            }
        }
    }
}