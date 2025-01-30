
int calculate() {
  return 6 * 7;
}

// la classe Task pour représenter une tâche
class Task {
  String description;
  bool isDone;

  Task(this.description, this.isDone);

  @override
  String toString() {
    String etat = isDone ? "faite" : "non faite";

    return "$description ($etat)";
}
}


// la classe ToDoList pour gérer toutes les méthodes de notre application
class ToDoList {
  
  List<Task> taches = [];

  //Ajouter une tâche
    void addTask(String description) {
    taches.add(Task(description, false));
    print("Tâche ajoutée : $description");
  }

}