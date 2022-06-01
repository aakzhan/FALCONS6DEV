public  class Address {
    public void hoemAddress() {

        string name = 'Aka';
        integer totalNumberOfMembers = 4;
        string houseName = 'Firethorne';
        string houseNumber = '2518';
        string streetName = 'Graystone Crossing dr';
        string city = 'Katy';
        string state = 'TX';
        string stateIsoCode = 'US-TX';
        string country = 'USA';
        string countryIsoCode = 'US';
        string zipCode = '77494';
        boolean isYourCurrentHome = true;
        system.debug('My name is '+ name);
        system.debug('Total number of my family members - '+ totalNumberOfMembers);
        system.debug(houseName);
        system.debug('My Address: '+ houseNumber+' '+ streetName);
        system.debug(city+' '+ stateIsoCode+' '+state+' '+country);
        system.debug(countryIsoCode +' '+ zipCode);
        system.debug('My current address: '+ isYourCurrentHome);
    }
}
