// Put your code here
int score(String word){
  final chars = word.split('');
  int score = 0;
  final scoreMap = {'AEIOULNRST' 	:1,
'DG' :	2,
'BCMP' 	:3,
'FHVWY': 	4,
'K' 	:5,
'JX' :	8,
'QZ' :	10,};
  for(final char in chars){
    if(char == '' || char == ' ') continue;
    for(final key in scoreMap.keys)
      if(key.contains(char.toUpperCase())){
        score+=scoreMap[key]??0;
      }
  }
  return score;
}