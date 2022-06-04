public class JsonFormatter {

    public List<Account> lstAccounts{get;set;}
    public List<Contact> lstContacts{get;set;}

    public static void RetrieveData() {

        JsonFormatter obj = new JsonFormatter();
        //create 2 var to fetch acc and cont
        List<Account> listAccount = [SELECT id, name from Account];
        List<Contact> listContact = [SELECT id, name from Contact];
        //pass these values to the object
        obj.lstAccounts = listAccount;
        obj.lstContacts = listContact;
        //convert the obj to string using JSON.sterilize
        string JSONlist = JSON.serialize(obj);
        System.debug(JSONlist); 
       
}
   


   
}
