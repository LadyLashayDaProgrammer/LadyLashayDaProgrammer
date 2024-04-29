package CustomBuild;

/**
 *
 * @author Gennette
 */
public class Aircraft {
    private String altitude;  
    private String airspeed;   
    private String identification;
    private String destination;  
    
    public Aircraft() {
        altitude = "";
        airspeed = "";
        identification = "";
        destination = "";
    }
    
    public Aircraft(String altitude, String airspeed,
        String identification, String destination) {
        this.altitude = altitude;
        this.airspeed = airspeed;
        this.identification = identification;
        this.destination = destination;
        
    }
    
    public void setAltitude(String altitude) {
        this.altitude = altitude;
    }
    
    public String getAltitude() {
        return altitude;
    }
    
    public void setAirspeed(String airspeed) {
        this.airspeed = airspeed;
    }
    
    public String getAirspeed() {
        return airspeed;
    }
    
    public void setIdentification(String identification) {
        this.identification = identification;
    }
    
    public String getIdentification() {
        return identification;
    }
    
    public void setdestination(String destination) {
        this.destination = destination;
    }
    
    public String getDestination() {
        return destination;
    }
}   

