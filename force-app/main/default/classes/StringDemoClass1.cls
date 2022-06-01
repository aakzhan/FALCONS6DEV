public  class StringDemoClass1 {
    public void stringMethod2() {
 
        string sessionDescription = 'this test string apex language';
        system.debug(sessionDescription);
        
        integer lengthOfString = sessionDescription.length();
        system.debug('the length of string is '+ lengthOfString);

        string sessionDescriptionToUpper = sessionDescription.toUpperCase();
        system.debug('in caps = ' + sessionDescriptionToUpper);

        boolean containsApex1 = sessionDescription.contains('apex');
        system.debug('Contain apex:' + containsApex1);
        boolean containsApex2 = sessionDescriptionToUpper.containsIgnoreCase('apex');
        system.debug ('contain apex:' + containsApex2);
        boolean containsApex3 =  sessionDescriptionToUpper.contains('apex');
        system.debug('contain apex: '+ containsApex3);
        boolean containsInSalesforce = sessionDescription.contains('salesforce');
        system.debug('contain salesforce: '+ containsInSalesforce);


        


    }

}
