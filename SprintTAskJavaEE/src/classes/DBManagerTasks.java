package classes;

import java.util.ArrayList;

public class DBManagerTasks {
    private static ArrayList<Tasks> tasks = new ArrayList<>();
    private static Long id = 4L;

    static {
        tasks.add(new Tasks(1L, "Web Appication", "Web app is important", "2024-02-13",true ));
        tasks.add(new Tasks(2L, "cisco", "cisco for working with networks", "2024-02-14",true ));
        tasks.add(new Tasks(3L, "JavaSE", "Java Basics", "2024-02-12",true ));
    }
    public static void addTask(Tasks task){
        task.setId(id++);
        task.setStatus(false);
        tasks.add(task);
    }
    public static Tasks getTask(Long id){
        for (Tasks tsk : tasks){
            if(tsk.getId()==id){
                return tsk;
            }
        }
        return null;
    }
    public static ArrayList getAllTasks(){
        return tasks;
    }
    public static void deleteTask(Long id){
        for (Tasks task : tasks){
            if(id==task.getId()){
                tasks.remove(task);
            }
        }
    }
}
