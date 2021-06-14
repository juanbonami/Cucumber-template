package pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class HomePage {
	
	private static final String url = "https://www.google.com/";
	
	@FindBy(name = "q")
	private WebElement google;
	
	public static String getUrl() {
		return url;
	}
	
	public void search(String query) {
		google.sendKeys(query);
		google.submit();
	}

}
