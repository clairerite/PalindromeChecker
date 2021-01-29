public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word = word.toLowerCase();
  String noSpace = "";
  for(int i = 0; i < word.length(); i++) {
    if (word.charAt(i) != ' ') {
      noSpace += word.charAt(i);
    }
  }
  String LettersOnly = "";
  for (int i = 0; i < noSpace.length(); i++) {
    if (Character.isLetter(noSpace.charAt(i))) {
      LettersOnly += noSpace.charAt(i);
    }
  }
  String palindrome = reverse(LettersOnly);
  if (palindrome.equals(LettersOnly) == true) {
    return true;
  }
  return false;
}

public String onlyLetters(String sString){
  String answer = "";
  for(int i = 0; i < sString.length(); i++) {
    if(Character.isLetter(sString.charAt(i)) == true) {
      answer = answer + sString.charAt(i);
        }
    if (sString.length() == 0) {
      return sString;
    }
  }
  return answer;
}

public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length(); i > 0; i--) {
      sNew += str.substring(i-1, i);
    }
    return sNew;
}
