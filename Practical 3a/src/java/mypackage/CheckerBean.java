package mypackage;

public class CheckerBean {
    private String name, age, hobbie, email, gender, error;
    public CheckerBean() 
    { 
        error=""; 
    }
    public void setName(String n){name=n;}
    public void setAge(String a){age=a;}
    public void setHobbie(String h){hobbie=h;} 
    public void setEmail(String e){email=e;}
    public void setGender(String g){gender=g;}
    public void setError(String e){error=e;} 
    
    public String getName() {return name;}
    public String getAge() {return age;}
    public String getHobbie() {return hobbie;}
    public String getEmail() {return email;}
    public String getGender() {return gender;}
    public String getError() {return error;}
    
    public boolean validate()
    {
        boolean res=true;
        if(name.trim().equals("") || (name==null))
        {
           error +="<br>Enter First Name";
           res=false;
        }
        if(age.length() > 2 || (age==null))
        {
            error+="<br> Age Invalid";
            res=false;
        }
        return res;
    }
}
