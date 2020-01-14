char[] vowels = new char[]{'a','e','i','o','u'};
public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	for (int i=0; i<sWord.length(); i++) {
		for (char vowel : vowels) {
			if (sWord.charAt(i)=='u')
				if (sWord.charAt(i-1)=='q')
					return i+1;
			if (sWord.charAt(i) == vowel)
				return i;
		}
	}
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if (findFirstVowel(sWord)==0)
	{
		return sWord+"way";
	}
	else
	{
		return (sWord.substring(findFirstVowel(sWord))+sWord.substring(0,findFirstVowel(sWord))+"ay");
	}
}
