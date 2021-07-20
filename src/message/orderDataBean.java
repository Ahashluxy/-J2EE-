package message;

public class orderDataBean {
	private String userid,foodname,tnumber,uprice,name,phone,address,date;
	//setter或者getter方法
	public void setUserid(String userid)
	{	this.userid=userid;		}
	public void setFoodname(String foodname)
	{	this.foodname=foodname;	}
	public void setTnumber(String tnumber)
	{	this.tnumber=tnumber;	}
	public void setUprice(String uprice)
	{	this.uprice=uprice;	}
	public void setName(String name)
	{	this.name=name;		}
	public void setPhone(String phone)
	{	this.phone=phone;		}
	public void setAddress(String address)
	{	this.address=address;		}
	public void setDate(String date)
	{	this.date=date;		}
	public String getUserid()
	{	return this.userid;	}
	public String getFoodname()
	{	return this.foodname;	}
	public String getTnumber()
	{	return this.tnumber;	}
	public String getUprice()
	{	return this.uprice;	}
	public String getName()
	{	return this.name;	}
	public String getPhone()
	{	return this.phone;	}
	public String getAddress()
	{	return this.address;	}
	public String getDate()
	{	return this.date;	}
}