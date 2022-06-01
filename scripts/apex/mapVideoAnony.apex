// map<string,string> zipCode = new map<string,string>();
// zipCode.put('333333', 'ttttt');
// zipCode.put('337543333', 'llll');
// zipCode.put('3324643333', 'tttmmtt');
// zipCode.put('3333456433', 'tttyjgyjftt');
// zipCode.put('33q33333', 'ttssfgttt');

// system.debug(zipcode);

// Map<String,Integer> zip1 = new Map<String,Integer>();
// zip1.put('one', 1);

// System.debug(zip1);


Map<String,Integer>itemquantityMap = new Map<String,Integer>();
itemquantityMap.put('Apple', 5);
itemquantityMap.put('Orange', 6);
itemquantityMap.put('Football', 1);
itemquantityMap.put('LED', 12);

Integer sizeMap = itemquantityMap.size();
System.debug('items to shop '+ sizeMap);

string getQuantityOf = 'Apple';
integer quantityIs = itemquantityMap.get(getQuantityOf);
System.debug( getQuantityOf + ' quantity is '+ quantityIs);

string getQuantityOf_2 = 'LED';
integer quantityIs_2 = itemquantityMap.get(getQuantityOf_2);
System.debug( getQuantityOf_2 + ' quantity is '+ quantityIs_2);

string getQuantityOf_3= 'Apples';
Boolean containsQ3 = itemquantityMap.containsKey(getQuantityOf_3);
if (containsQ3){
    integer quantityIs_3 = itemquantityMap.get(getQuantityOf_3);
    System.debug( getQuantityOf_3 + ' quantity is '+ quantityIs_3);

}else {
    System.debug(getQuantityOf_3 + ' not in syllables' );
}
