public class NumberRecords {
    public  static void listOfNumbers(integer num){
        List<Integer>listInteger = new List<Integer>{6, 8, 4, 12, 9, 56, 67};
        System.debug('Numbers in the list: '+ listInteger);
        System.debug('Number => '+ num);
        System.debug('Number exist in the list: '+ listInteger.contains(num));
    
    }
}
