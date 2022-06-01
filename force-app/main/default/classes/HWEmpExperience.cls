public class HWEmpExperience {
    public void calculateExperience() {
            Date dateOfJoin = date.newInstance(2020, 4, 10);
            date today = date.today();
            integer myExperience1 = dateOfJoin.daysBetween(today);
            System.debug('Total days of experience - '+ myExperience1+' '+'days');
            Integer myExperience2 = dateOfJoin.monthsBetween(today);
            System.debug('Total months of experience - '+ myExperience2+' '+ 'months');
           
    }
}
