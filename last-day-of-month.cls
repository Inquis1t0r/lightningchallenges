public static Date getLastDayOfMonth(Date inputDate) {
    // Write your code here
    if(inputDate == null){
        return null;
    }
    System.debug('Input date: ' + inputDate);
    date resultDate = inputDate.addMonths(1).toStartOfMonth().addDays(-1);
    return resultDate;
}
