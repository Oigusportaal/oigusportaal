package main.bureauActivation;

public class ActivationTest {
	static String to = "suivalli@gmail.com";
	
	public static void main (String [] args){
		// sendEmail();
		String hash = getRandomHash();
		sendEmail(hash);
	}
	
	private static void sendEmail(String hash){
		SendEmail send = new SendEmail(to, hash, "activation");
		send.sendMail();
	}
	
	private static String getRandomHash(){
		RandomHashFactory hash = new RandomHashFactory(10);
		return hash.nextString();
	}

}
