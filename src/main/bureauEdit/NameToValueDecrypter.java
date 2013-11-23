package main.bureauEdit;

import java.util.HashMap;
import java.util.Map;

public class NameToValueDecrypter {
	
	String cityName;
	String regionName;
	String countyName;
	Map<String,Integer> cityMap = new HashMap<String,Integer>();
	Map<String,Integer> regionMap = new HashMap<String,Integer>();
	Map<String,Integer> countyMap = new HashMap<String,Integer>();
	public NameToValueDecrypter(String cityName, String regionName, String countyName) {
		this.cityName = cityName;
		this.regionName = regionName;
		this.countyName = countyName;
		populateRegionMap();
		populateCountyMap();
		populateCityMap();
	}

	private void populateRegionMap(){
		regionMap.put("Põhja-Eesti", new Integer(1));
		regionMap.put("Ida-Eesti", new Integer(2));
		regionMap.put("Lääne-Eesti", new Integer(3));
		regionMap.put("Lõuna-Eesti", new Integer(4));
	}
	
	private void populateCountyMap(){
		countyMap.put("Harjumaa", new Integer(1));
		countyMap.put("Järvamaa", new Integer(2));
		countyMap.put("Raplamaa", new Integer(3));
		countyMap.put("Ida-Virumaa", new Integer(4));
		countyMap.put("Jõgevamaa", new Integer(5));
		countyMap.put("Lääne-Virumaa", new Integer(6));
		countyMap.put("Hiiumaa", new Integer(7));
		countyMap.put("Läänemaa", new Integer(8));
		countyMap.put("Pärnumaa", new Integer(9));
		countyMap.put("Saaremaa", new Integer(10));
		countyMap.put("Põlvamaa", new Integer(11));
		countyMap.put("Tartumaa", new Integer(12));
		countyMap.put("Valgamaa", new Integer(13));
		countyMap.put("Viljandimaa", new Integer(14));
		countyMap.put("Võrumaa", new Integer(15));
	}

	private void populateCityMap(){
		cityMap.put("Tallinn", new Integer(1));
		cityMap.put("Paide", new Integer(2));
		cityMap.put("Rapla", new Integer(3));
		cityMap.put("Jõhvi", new Integer(4));
		cityMap.put("Jõgeva", new Integer(5));
		cityMap.put("Rakvere", new Integer(6));
		cityMap.put("Kärdla", new Integer(7));
		cityMap.put("Haapsalu", new Integer(8));
		cityMap.put("Pärnu", new Integer(9));
		cityMap.put("Kuressaare", new Integer(10));
		cityMap.put("Põlva", new Integer(11));
		cityMap.put("Tartu", new Integer(12));
		cityMap.put("Valga", new Integer(13));
		cityMap.put("Viljandi", new Integer(14));
		cityMap.put("Võru", new Integer(15));
	}
	
	public int getRegionValue(){
		return regionMap.get(regionName).intValue();
	}
	
	public int getCountyValue(){
		return countyMap.get(countyName).intValue();
	}
	
	public int getCityValue(){
		return cityMap.get(cityName).intValue();
	}
						
}
