public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  ArrayList<String> l = new ArrayList<String>();
  println("there are " + lines.length + " lines");
  for(int i=0; i < lines.length; i++){
    String sim = new String(lines[i]);
    sim = onlyLetters(sim);
    sim = noCapitals(sim);
    sim = noSpaces(sim);
    l.add(sim);
  }
  for (int i=0; i < lines.length; i++) 
  {
    if(isPalindrome(l.get(i))==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean isPalindrome(String sWord){
  String a = new String(sWord);
  if(reverse(a).equals(a))
  return true;
  return false;
}
public String reverse(String sWord){
  String a = new String();
  String b = new String(sWord);
  for(int i = sWord.length()-1;i>=0;i--){
    a = a+b.charAt(i);
  }
  return a;
}
public String onlyLetters(String sString){
  String a = new String();
  for(int i=0; i<sString.length(); i++){
    if(Character.isLetter(sString.charAt(i))){
      a = a+sString.charAt(i);
    }
  }
  return a;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
public String noSpaces(String sWord){
  String a = new String();
  for(int i = 0; i<sWord.length(); i++){
    if(!sWord.substring(i,i+1).equals(" ")){
      a = a+sWord.substring(i,i+1);
    }
  }
  return a;
}