public static Boolean checkAnagram(String str1, String str2) {
    // Write your code here
    System.debug('Debug: Checking if strings are anagrams: ' + str1 + ' and ' + str2);

    if(str1 == null || str2 == null || str1.length() != str2.length()){
        return false;
    }
    str1 = str1.replaceAll('\\s+', '').toLowerCase();
    str2 = str2.replaceAll('\\s+', '').toLowerCase();

    List<String> chars1 = str1.split('');
    List<String> chars2 = str2.split('');
    
    chars1.sort();
    chars2.sort();

    return chars1.equals(chars2);
}
