public static List<String> getAccountsCreatedThisYear() {
    List<String> accountNames = new List<String>();

    for (Account acc : [
        SELECT Name
        FROM Account
        WHERE CreatedDate = THIS_YEAR
        ORDER BY Name
    ]) {
        accountNames.add(acc.Name);
    }

    return accountNames;
}
