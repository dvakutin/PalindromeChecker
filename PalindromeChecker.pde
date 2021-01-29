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

public boolean palindrome(String word) //called by reverse
{
  String carry = fixer(word);
  String backwards = reverse(carry);
  if(backwards.equals(carry))
  {
    return true;
  }
  return false;
}

public String reverse(String str) //called by fixer
{
    String sNew = "";
    for(int i = str.length() - 1; i >= 0; i--)
  {
    sNew = sNew + str.substring(i, i + 1);
  }
  return sNew;
}

public String fixer(String frorev) //called by setup
{
  String answer = "";
  for(int i = 0; i <= frorev.length() - 1; i++)
  {
    if(Character.isLetter(frorev.charAt(i)) == true)
    {
      if(!frorev.substring(i, i + 1).equals(" "))
        {
          answer = answer + frorev.substring(i, i + 1);
        }
    }
  }
  answer = answer.toLowerCase();
  return answer;
}

