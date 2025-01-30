
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

  //Lister les tâches
  void listTasks(){
    print("Liste des tâches efféctuées :");
    if (taches.isEmpty) {
      print("Aucune tâche n'a été ajoutée");
    } else {
      for (var task in taches) {
        print(task);
      }
    }
  }

  //Marquer une tâche comme terminée
  void markTaskAsDone(String description) {
    Task? task = taches.firstWhere((task) => task.description == description, orElse: () => Task("", false));
    if (task.description.isEmpty) {
      print("La tâche n'existe pas");
    } else {
      task.isDone = true;
      print("Tâche marquée comme terminée : $description");
    }
  }

  
}