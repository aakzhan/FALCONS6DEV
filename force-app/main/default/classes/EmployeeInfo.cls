public class EmployeeInfo {
    public static string showInfo(integer empNumber) {
        string empName = ' ';
        Map<Integer,String> employeeMap = new Map<Integer,String>();
        employeeMap.put(001, 'Luna');
        employeeMap.put(002, 'Sara');

        empName = employeeMap.get(empNumber);
        System.debug(empName);
        return empName;
        
    }
}
