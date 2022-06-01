public  class HWHOST {
    public void task1() {
        string statement = 'Welcome to the Salesforce World,apex is host in this world';    
        boolean containsHost = statement.contains('HOST');
        system.debug('Has HOST? '+ containsHost);
    }
}
