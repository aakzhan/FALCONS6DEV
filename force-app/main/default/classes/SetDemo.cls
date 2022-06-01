public class SetDemo {
    public static void citySet() {
        
        set < string > cities = new set < string > ();
        //add() method similar to list
        cities.add('Tokyo');
        cities.add('Lisabon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');

        System.debug('set of citiwa : '+ cities);
    }
    public static void randomIntegerSet(){
        set < integer > setInteger = new set < integer > ();
        setInteger.add(10);
        setInteger.add(15);
        setInteger.add(21);
        setInteger.add(15);
        setInteger.add(15);
        System.debug('set of random integers = '+ setInteger);
    }
    public static set<integer>setFromList(list < integer > intList){
        Set<integer> intSet = new Set<integer>();
        intSet.addAll(intList);
        return intSet;
    }
    public static set<string>capitalizeSet(set<string>setString){
        set<string>upperCaseSet = new set<string>();
        for (string eachString : setString){
            string tempStr = eachstring.toUpperCase();
            upperCaseSet.add(tempStr);
        }

        return upperCaseSet;
    }
    
}
