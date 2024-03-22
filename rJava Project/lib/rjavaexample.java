import org.rosuda.JRI.Rengine;

public class rjavaexample {
    public static void main(String[] args) {
        // Start R engine
        Rengine re = new Rengine(new String[]{"--no-save"}, false, null);

        if (!re.waitForR()) {
            System.out.println("Cannot load R");
            return;
        }
               
        // Evaluate an R expression
        re.eval("x <- c(1, 2, 3, 4, 5)");
        re.eval("mean_x <- mean(x)");
        double mean = re.eval("mean_x").asDouble();
        System.out.println("Mean of x: " + mean);

        // Clean up
        re.end();
    }
}
