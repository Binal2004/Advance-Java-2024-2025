package mybeans;
import javax.ejb.Stateless;

@Stateless
public class CCBean {
    public CCBean(){}
    public double r2Dollar(double r){return r/83.40;}
    public double d2Rupees(double d){return d*83.40;}
}
