//map

map<string,string> mapCntCurrency = new Map<String,string>();

mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('France', 'Euro');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('Turkey', 'Lira');
System.debug('Map of country vs currency: '+ mapCntCurrency);

string IndiaCurrency = mapCntCurrency.get('India');
string TurkeyCurrency = mapCntCurrency.get('Turkey');

System.debug('India currency = '+ IndiaCurrency);
System.debug('Turkey Currency = '+ TurkeyCurrency);

Set<String>countrySet = mapCntCurrency.keySet();
system.debug('currencies in map: '+ countrySet);

List<String>currencyList = mapCntCurrency.values();
System.debug('currencies in map: '+ currencyList);

//Set<string> countrySet = mapCntCurrency.keySet();
system.debug('countries in map: ' + countrySet);

for(string eachKey: countrySet){
    string eachCurrency = mapCntCurrency.get(eachKey);
    string printString = 'country is ' + eachKey + ', its currency is ' + eachCurrency;
    system.debug(printString);
}

