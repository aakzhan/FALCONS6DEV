public  class HWShowTheAge {
    public void calculateAge() {
        date birthdate = date.newInstance (2015,7,25);
        date todaysdate = date.today();

        integer ageInDays = birthdate.daysBetween(todaysDate);
        system.debug ('Age in days = '+ ageInDays); 

        integer ageInMonths = birthdate.monthsBetween(todaysDate);
        system.debug ('Age in months : '+ ageInMonths);

        integer ageInYears = AgeInMonths/12;
        system.debug('Age in years : '+ ageInYears);
   }

   public void ExpirationDays(){
       date endDate = date.newInstance(2030,12,12);
       date today = date.today();
       integer xDays = today.daysBetween(endDate);
       system.debug('Total number of days: '+ xDays);

   }
}
