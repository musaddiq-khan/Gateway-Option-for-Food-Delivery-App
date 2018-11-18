package food;

public class foodJava
{
public foodJava() {}
public int foodComp(String f)
{
	int fp=0;
	switch(f)
	{
		case "Kesar Badam Milkshake (300 ml)" : fp = 161;
												break;
		case "Nutty Chocolate Milkshake (300 ml)" :fp = 171;
												break;
		case "Red Velvet Milkshake (300 ml)" :fp = 181;
												break;
		case "Bubble Gum Milkshake (300 ml)" : fp = 165;
												break;
		case "Banana Caramel Milkshake (300 ml)" : fp = 190;
												break;
		case "Red Riding Hood" :fp = 120;
												break;
		case "Kitkat Oreo Milkshake (300 ml)" :fp = 110;
												break;
		case "Ferrero Rocher Milkshake (500 ml)":fp = 210;
												break;
			
	}
	
	return fp;


}

}

