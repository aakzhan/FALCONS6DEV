public  class MapDemo {
    public static string retrieveMonth(integer m) {
        string monthName = ' ';
        //new map
        map<integer, string>monthmap = new map<integer, string>();
        monthmap.put(1, ' January');
        monthmap.put(2, ' February');
        monthmap.put(3, 'March');
        monthmap.put(4, 'April');

        monthmap.put(5, 'May');
        monthmap.put(6, 'June');
        monthmap.put(7, 'July');
        monthmap.put(8, 'August');

        monthmap.put(9, 'September');
        monthmap.put(10, 'OCtober');
        monthmap.put(11, 'November');
        monthmap.put(12, 'December');

        boolean keyExists = monthmap.containsKey(m);
        if (keyExists) {
            monthName = monthmap.get(m);
        } else {
            monthName = 'no such month exists. Please behave!';  
        }

        return monthName;

    }
}
