package data;
import java.io.*;
import CustomBuild.Aircraft;

/**
 *
 * @author Genntte Sanders
 */
public class AircraftFile {
    public static void add(Aircraft aircraft, String filePath) throws IOException {
        File file = new File(filePath);
        try (PrintWriter outWriter = new PrintWriter(new FileWriter(file, true))) {
            outWriter.println(aircraft.getAltitude() + "|" + aircraft.getAirspeed() +
                "|" + aircraft.getIdentification() + "|" + aircraft.getDestination()); 
        }
    }
}
