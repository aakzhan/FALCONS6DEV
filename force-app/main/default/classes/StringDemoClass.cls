public class StringDemoClass {
    public void stringMethod1() {
//method var
string sessionDescription = 'learning string methods in apex language.';

//1.length
integer lengthOfString = sessionDescription.length();
system.debug ('length of string is =  ' + lengthOfString);


//2 capitalize
string sessionDescriptionInCaps = sessionDescription.toUpperCase();
system.debug ('in caps = ' + sessionDescriptionInCaps);

//3 contains 'apex'
boolean containsApex = sessionDescription.contains('apex');
system.debug('has apex' + containsApex);

//3.b containsIgnoreCases 'APEX'
Boolean containsApex2 = sessionDescription.contains('APEX');
System.debug('has APEX?' + containsApex2);

//3.a contains salesforce
Boolean containsSalesforce = sessionDescription.contains('salesforce');
System.debug('has salesforce? '+ containsSalesforce);

//4
string apexx = 'apexx';
string ap = 'APEXX';
//equals check if two string are same or not
//if same returns true.
boolean apexCheck = apexx.equals(ap);
system.debug('apex check '+ apexCheck);
    }
}
