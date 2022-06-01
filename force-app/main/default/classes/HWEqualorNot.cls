public class HWEqualorNot {
    public void compairStrings() {
        string myString1 = 'My favourite part is apex';
        string myString2 = 'MY FAVOURITE PART IS APEX';
        boolean result1 = myString1.containsIgnoreCase(myString2);
        system.debug(result1);

        Boolean result2 = myString1.equals(myString2);
        System.debug(result2);
    }
}
