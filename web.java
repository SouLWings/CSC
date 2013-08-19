import tempConv.TempConvHome;
import tempConv.TempConv;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.rmi.PortableRemoteObject;
import java.text.DecimalFormat;
import javax.swing.JOptionPane;
public class TempConvClient 
{
	public static void main(String[] args) 
	{
		String output = "";
		String sDegree = "";
		double degree;
		DecimalFormat twoDigits = new DecimalFormat ("0.00");
		try 
		{
			Context initial = new InitialContext();
			Context myEnv = (Context)initial.lookup("java:comp/env");
			Object objref = myEnv.lookup("ejb/ClientConv");
			TempConvHome home = (TempConvHome)PortableRemoteObject.narrow(objref,TempConvHome.class);
			TempConv converter = home.create();
			sDegree = JOptionPane.showInputDialog("Enter centigrade degree");
			degree = Double.parseDouble( sDegree);
			output = sDegree + " centigrade degrees are " + twoDigits.format (converter.cToF(degree)) + " fahrenheit degrees " ;
			JOptionPane.showMessageDialog ( null, output,"results", JOptionPane.INFORMATION_MESSAGE);
			sDegree = JOptionPane.showInputDialog ( "Enter fahrenheit degree" );
			degree = Double.parseDouble( sDegree);
			output = sDegree + " fahrenheit degrees are " + twoDigits.format(converter.fToC(degree)) + " centigrade degrees" ;
			JOptionPane.showMessageDialog ( null, output, "results", JOptionPane.INFORMATION_MESSAGE);
			System.exit(0);
		}catch (Exception ex) {
			System.err.println("Caught an unexpected
			exception!");
			ex.printStackTrace();
		}
	}
}