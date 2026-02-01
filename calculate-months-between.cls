public static Integer monthsBetween(Date startDate, Date endDate) {
    // Write your code here
    if(startDate == null || endDate == null){
        return null;
    }
    System.debug('Debug: Start Date: ' + startDate + ', End Date: ' + endDate);
    Integer monthsBetween = startDate.monthsBetween(endDate);
    return monthsBetween;
}
