DateTimeMethodsDemo2 dtm = new DateTimeMethodsDemo2();
boolean lpCheck1 = dtm.leapYearCheck(date.today());
system.debug('Leap year check 1 '+lpCheck1);
date dt1 = date.newInstance(2020, 01, 01);
boolean lpCheck2 = dtm.leapYearCheck(dt1);
system.debug('Leap year check 2'+ lpCheck2);