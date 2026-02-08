public static String compressString(String str) {
	// Write your code here to compress the string
	if(str == '' || str == null){
		return str;
	}
	System.debug('Compressing string: ' + str);

	Map<String, Integer> letterCountMap = new Map<String, Integer>();
	  for (Integer i = 0; i < str.length(); i++) {
					String currentChar = str.substring(i, i + 1);
					
							if (letterCountMap.containsKey(currentChar)) {
									letterCountMap.put(currentChar, letterCountMap.get(currentChar) + 1);
							} else {
									letterCountMap.put(currentChar, 1);
							}
        }
        List<String> sortedKeys = new List<String>(letterCountMap.keySet());
        sortedKeys.sort();
        
        String result = '';
        for (String letter : sortedKeys) {
            result += letter + letterCountMap.get(letter);
        }
        if(result.length() >= str.length()){
					return str;
				}
        return result;
}
