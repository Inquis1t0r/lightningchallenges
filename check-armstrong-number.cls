public static Boolean isArmstrongNumber(Integer num) {
    // Write your code here
    System.debug('Debug: Checking if number is Armstrong: ' + num);
        if (num < 0) {
            return false;
        }

        if (num == 0) {
            return true;
        }
        String numStr = String.valueOf(num);
        Integer digits = numStr.length();
        Integer sum = 0;

        for (Integer i = 0; i < digits; i++) {
            Integer digit = Integer.valueOf(numStr.substring(i, i + 1));
            sum += (Integer)Math.pow(digit, digits);
        }

    return sum == num;
}
