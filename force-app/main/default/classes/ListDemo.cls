// public  class ListDemo {
//     public static void candidatesList() {
//         //1 createing empty list string collection
        
//         List<String> listCandidates = new List<String>();
//             listCandidates.add('Tina');//index 0
//             listCandidates.add('Lana');//1
//             listCandidates.add('Sofa');//2
//             listCandidates.add('Lora');//3
//             System.debug('candidates are '+ listCandidates);

//             string valueAt3 = listCandidates[3];
//             System.debug('value at index 3 is '+ valueAt3);
//     }

//     public static void randomIntegerList(){
        // List<Integer> listInteger = new List<Integer>();
        // listInteger.add(10);
        // listInteger.add(15);
        // listInteger.add(22);
        // listInteger.add(15);
        // listInteger.add(15);
        

//         // get index 3 value
//         //.get()
//         integer index3value = listInteger.get(3);
//         //[]
//         integer index3value2 = listInteger[3];
//         System.debug('List of random integers; '+ listInteger);
//         System.debug('value at index 3 is '+ index3value);
//     }
// }

public class ListDemo {
    public static String candidatesList(integer index) {
        list<string> listCandidates = new list<string>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');
        system.debug('candidates are ' + listCandidates);

        // string valueAt3 = listCandidates[3];
        // system.debug('value at index 3 ' + valueAt3);
        string returnString = '';
        if (index < listCandidates.size()) {
            returnString = listCandidates[index];
        } else {
            returnString = 'No such value found';
        }
        return returnString;
    }

    public static void randomIntegerList() {
        list<integer> listInteger = new list<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);

        //get index 3 value.
        integer index3value = listInteger.get(3);
        integer index3value2 = listInteger[3];
        
        system.debug('list of random integers ' + listInteger);
        system.debug('value at index 3 is ' + index3value2);
    }

    public static void allCats(){
        cat falconsCat = new cat('fluffykins', 'white');
        cat vitapCat = new cat('simba', 'brown');
        car lm = new car();

        List<cat>cats = new List<cat>();
        cats.add(falconsCat);
        cats.add(vitapCat);
        system.debug('all cats are '+ cats);

    }

        
    public static void iterationIntegerList(){
       
        for (integer eachInteger : listInteger) {
            System.debug(eachInteger);
        }
    }

}