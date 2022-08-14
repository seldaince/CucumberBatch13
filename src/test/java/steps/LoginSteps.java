package steps;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class LoginSteps {

    public static WebDriver driver;

    @Given("user is navigated to HRMS application")
    public void user_is_navigated_to_hrms_application() {
        WebDriverManager.chromedriver().setup();
        driver = new ChromeDriver();
    }

    @When("user enters valid admin username and password")
    public void user_enters_valid_admin_username_and_password() {

    }

    @When("user clicks on login button")
    public void user_clicks_on_login_button() {

    }

    @Then("admin user is successfully logged in")
    public void admin_user_is_successfully_logged_in() {


    }
    }

