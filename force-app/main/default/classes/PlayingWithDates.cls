public class PlayingWithDates {
    public void printDateOutput() {
Date todayDate = date.today();
system.debug(todayDate);
Date newDate = date.newInstance(2789, 11, 5);
system.debug(newDate);
Date pastDate = date.newInstance(1459, 3, 4);
system.debug(pastDate);
Integer dayInt = 7;
Integer monthInt = 3;
Integer yearInt = 2000;
Date DateExample =Date.newInstance(yearInt, monthInt, dayInt);
system.debug(DateExample);

    }
}
