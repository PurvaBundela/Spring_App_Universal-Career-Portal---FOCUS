package neu.edu.pojo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class UpdateDate extends Date{

	Date date;
	SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("MM/dd/yyyy");
    
	public UpdateDate()
	{
		date= new Date();
	}
	
	@Override
	public String toString()
	{
		return DATE_FORMAT.format(this.date);
	}

}