package main.bureauEdit;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import main.search.DBConnection;

public class FieldsMaker {

	String[] names = { "Ehitus- ja planeerimisõigus", "Erastamine",
			"Inkassoteenused", "IT-õigus", "Keskkonnaõigus", "Kindlustusõigus",
			"Kinnisvaraõigus", "Kriminaal- ja väärteoõigus", "Lahutus",
			"Liiklusõigus", "Majandusõigus", "Maksuõigus",
			"Meditsiin ja ravimid", "Meedia- ja telekommunikatsiooniõigus",
			"Omandireform", "Pangandus- ja finantsõigus, kapitaliturud",
			"Perekonnaõigus", "Pärimisõigus",
			"Restruktueerimine, saneerimine ja maksujõuetus (pankrot)",
			"Sotsiaalhoolekandeõigus", "Transpordi-, kaubandus- ja mereõigus",
			"Tööõigus", "Välismaalasteõigus", "Ühinemised ja ülevõtmised" };

	int bureauId;
	final int NUMBER_OF_FIELDS = 24;

	public FieldsMaker(int bureauId) {
		this.bureauId = bureauId;
	}

	public ArrayList<Integer> getCheckedBoxes(){
		ArrayList<Integer> checkBoxes = new ArrayList<Integer>();
		
		DBConnection connect = new DBConnection();		
		Statement smt = null;
		ResultSet rst = null;		
		Connection curConnection = connect.getConnection();
		
		try {
			System.out.println("BürooId on " + bureauId);
			smt = curConnection.createStatement();
			rst = smt.executeQuery("SELECT fieldid FROM fieldbureaujunction WHERE bureauid='" + bureauId + "';");
			int i = 1;
			
			while (rst.next()){
				checkBoxes.add((Integer.parseInt(rst.getString(i))));				
			}
			
			smt.close();
			curConnection.close();
		}
		
		catch (SQLException e){
			e.printStackTrace();
		}		
		
		return checkBoxes;
	}
	
	public ArrayList<String> getCheckBoxCode(){
		ArrayList<String> codes = new ArrayList<String>();
		ArrayList<Integer> checkedBoxes = getCheckedBoxes();
		
		for (int i = 0; i<codes.size(); i++){
			System.out.println("Sellised numbrid: " + codes.get(i));
		}
		
		for (int i=1; i+1<names.length; i++){
			String row = "<input type=\"checkbox\" id=\"cbox" + i + "\" name=\"cbox" + i + "\" value=\"" + i + "\"";	
			if (checkedBoxes.contains(new Integer(i))){
				row = row.concat(" checked ");
			}
			row = row.concat(">" + names[i+1] + "<br>");
			codes.add(row);
			//Debugging
			System.out.println(row);			
			
		}
		
		String oldCBoxes = "<input type=\"hidden\" id=\"oldCBoxes\" name=\"oldCBoxes\" value=\"";
		for (int i=0; i<checkedBoxes.size(); i++){
			if (i!=checkedBoxes.size()-1)
					oldCBoxes = oldCBoxes.concat(checkedBoxes.get(i).toString() + ";");
			else {
					oldCBoxes = oldCBoxes.concat(checkedBoxes.get(i).toString());
			}
		}
		
		oldCBoxes = oldCBoxes.concat("\">");
		//System.out.println(oldCBoxes);
		codes.add(oldCBoxes);		
		return codes;
	}

}
