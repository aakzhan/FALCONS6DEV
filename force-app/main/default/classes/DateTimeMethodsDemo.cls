public class DateTimeMethodsDemo {
    public void calculateAgeInMonths() {
           //calculate age in months
           //(hint we need two days - birthdate and todays date)
           //birthdate variable
           date birthDate = date.newInstance (2020,1,3);
           system.debug('My birthday: '+ birthDate);
           //todays date
           date todaydate = date.today();
           system.debug(todayDate);
           //calculate month difference in between two dates
           integer ageInMonths = birthDate.monthsBetween(todayDate);
           system.debug('months between : '+ageInMonths );
    }

    public void calculateAgeInDays(){
            date birthDate = date.newInstance (2020,1,3); 
            date todaydate = date.today();
            integer ageInDays = birthDate.daysBetween(todayDate);
            system.debug('my age in days is '+ageInDays);

    }

    public void printSubscriptionEndDate(){
            // 3.1 subs is done for 1000 days.

            date subscriptionStartDate = date.today();
            date subscriptionEndDate = subscriptionStartDate.addDays(1000);
            system.debug('subscription end date = '+ subscriptionEndDate);

            integer endDateYear = subscriptionEndDate.year();
            system.debug('subscription end date year is '+ endDateYear);

            Integer endDateMonth = subscriptionEndDate.month();
            System.debug('subscription end date month is '+ endDateMonth);
    }   
           
    public void printOfferEndDate() {
            //current date time
            Datetime dtNow = Datetime.now();
            // calculate datetime after 51 hours
            Datetime dtOfferEnd = dtNow.addHours(51);
            system.debug('Offer will end on: '+ dtOfferEnd);

            //print 'date' component of the offer end date
            date offerEndDate = dtOfferEnd.date();
            //date returns date in current user timezone
            system.debug('Offer end date is '+ offerEndDate);
    }
    
}
