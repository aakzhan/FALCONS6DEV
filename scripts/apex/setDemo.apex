
SetDemo.randomIntegerSet();
SetDemo.citySet();

list < integer > l1 = new list<integer>{10,15,21,99,66,44,77};
set<integer>set3 = setDemo.setFromList(l1);
system.debug('set 3 = '+ set3);


set<string>cities = new set < string > ();
   
        cities.add('Tokyo');
        cities.add('Lisabon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');
        system.debug('set of cities '+ cities);
        set<string>capsCities = SetDemo.capitalizeSet(cities);
        system.debug(capsCities);