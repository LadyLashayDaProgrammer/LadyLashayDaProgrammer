package data;
import CustomBuild.Automobile;
import java.io.*;

/**
 *
 * @author Gennette Sanders
 */
public class AutomobileFile {
    public static void add(Automobile automobile, String filePathAutomobile) throws IOException {
        File file = new File(filePathAutomobile);
        try (PrintWriter outWriter = new PrintWriter(new FileWriter(file, true))) {
            outWriter.println(automobile.getModel()+ "|" + automobile.getYear() +
                "|" + automobile.getDoors() + "|" + automobile.getColor()); 
        }
    }
}
