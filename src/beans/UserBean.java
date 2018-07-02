package beans;

public class UserBean {


    private String username;
    private String password;
    private int role;
    private int id;

    public UserBean() {}

    public UserBean(String username,String password){
        this.username = username;
        this.password = password;
    }

    public int getRole() {
        return role;
    }

    public int getId() {
        return id;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public void setId(int id) {
        this.id = id;
    }




    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }

}
