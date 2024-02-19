package Classes;

import java.sql.*;
import java.util.ArrayList;

public class DBManagerTasks {
    private static Connection connection;

    static {
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try {
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "ADMIN");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }




    private  static ArrayList<Tasks> tasks = new ArrayList<>();
    private  static  long id = 4L;
    static {
        tasks.add(new Tasks(1L,"Bekarys","important","2021-02-05",false));
        tasks.add(new Tasks(2L,"Arnur"," not important","2020-05-06",false));
        tasks.add(new Tasks(3L,"Yelzhas","important","2020-04-10",false));
    }

   public static void addTask(Tasks task){

       task.setId(id);
       task.setStatus(false);
       id++;
       tasks.add(task);
   }

    public  static  Tasks getTask(Long id){
       Tasks task = new Tasks();
        for (int i =0;i<tasks.size();i++){
            if(id == tasks.get(i).getId()){
                return  tasks.get(i);
            }
        }
        return  task;
    } // этот метод возвращает объект задачи по id

    public static   ArrayList getAllTasks(){
        return  tasks;
    } //этот метод возвращает список всех задач

    public  void deleteTask(Long id){
        for(Tasks task: tasks){
            if ( id == task.getId()){
                tasks.remove(task);
            }
        }
    }

    public  static  Users getUser(String email){
        Users users = null;
        try {
            PreparedStatement stmt = connection.prepareStatement("SELECT  * FROM  users WHERE email = ?");
            stmt.setString(1,email);
            ResultSet resultSet = stmt.executeQuery();
            if(resultSet.next()){
                users= new Users();
                users.setEmail(resultSet.getString("email"));
                users.setPassword(resultSet.getString("password"));
                users.setFullName(resultSet.getString("fullname"));
                users.setId(resultSet.getLong("id"));
            }

        } catch (SQLException e) {
            throw  new RuntimeException(e);
        }
        return  users;
    }
}
