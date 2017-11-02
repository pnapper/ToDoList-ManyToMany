using System.Collections.Generic;
using System;
using Microsoft.AspNetCore.Mvc;
using ToDoList.Models;

namespace TodoList.Controllers
{
  public class HomeController : Controller
  {
    // HOME AND MENU ROUTES
    [HttpGet("/")]
    public ActionResult Index()
    {
      return View();
    }
    [HttpGet("/tasks")]
    public ActionResult Tasks()
    {
      List<Task> allTasks = Task.GetAll();
      return View(allTasks);
    }
    [HttpGet("/categories")]
    public ActionResult Categories()
    {
      List<Category> allCategories = Category.GetAll();
      return View(allCategories);
    }

    //NEW TASK
    [HttpGet("/tasks/new")]
    public ActionResult TaskForm()
    {
      return View();
    }
    [HttpPost("/tasks/new")]
    public ActionResult TaskCreate()
    {
      Task newTask = new Task(Request.Form["task-description"], Request.Form["task-dueDate"]);
      newTask.Save();
      return View("Success");
    }

    //NEW CATEGORY
    [HttpGet("/categories/new")]
    public ActionResult CategoryForm()
    {
      return View();
    }
    [HttpPost("/categories/new")]
    public ActionResult CategoryCreate()
    {
      Category newCategory = new Category(Request.Form["category-name"]);
      newCategory.Save();
      return View("Success");
    }

    //ONE TASK
    [HttpGet("/tasks/{id}")]
    public ActionResult TaskDetail(int id)
    {
      Dictionary<string, object> model = new Dictionary<string, object>();
      Task selectedTask = Task.Find(id);
      List<Category> TaskCategories = selectedTask.GetCategories();
      List<Category> AllCategories = Category.GetAll();
      model.Add("task", selectedTask);
      model.Add("taskCategories", TaskCategories);
      model.Add("allCategories", AllCategories);
      return View( model);

    }

    //ONE CATEGORY
    [HttpGet("/categories/{id}")]
    public ActionResult CategoryDetail(int id)
    {
      Dictionary<string, object> model = new Dictionary<string, object>();
      Category SelectedCategory = Category.Find(id);
      List<Task> CategoryTasks = SelectedCategory.GetTasks();
      List<Task> AllTasks = Task.GetAll();
      model.Add("category", SelectedCategory);
      model.Add("categoryTasks", CategoryTasks);
      model.Add("allTasks", AllTasks);
      return View(model);
    }

    //ADD TASK TO CATEGORY
    [HttpPost("categories/{categoryId}/tasks/new")]
    public ActionResult CategoryAddTask(int categoryId)
    {
      Category category = Category.Find(categoryId);
      Task task = Task.Find(Int32.Parse(Request.Form["task-id"]));
      category.AddTask(task);
      return View("Success");
    }
    //ADD CATEGORY TO TASK
    [HttpPost("tasks/{taskId}/categories/new")]
    public ActionResult TaskAddCategory(int taskId)
    {
      Task task = Task.Find(taskId);
      Category category = Category.Find(Int32.Parse(Request.Form["category-id"]));
      task.AddCategory(category);
      return View("Success");
    }

    // [HttpGet("/")]
    // public ActionResult Index()
    // {
    //   List<Task> categoryTasks = Task.GetAll();
    //
    //   return View(categoryTasks);
    // }
    //
    // [HttpGet("/category/add")]
    // public ActionResult AddCategory()
    // {
    //   return View();
    // }
    //
    // [HttpPost("/category/list")]
    // public ActionResult WriteCategories()
    // {
    //   Category newCategory = new Category(Request.Form["category-name"]);
    //   newCategory.Save();
    //   List<Category> allCategories = Category.GetAll();
    //
    //   return View("ViewCategories", allCategories);
    // }
    //
    // [HttpGet("/category/list")]
    // public ActionResult ReadCategories()
    // {
    //   List<Category> allCategories = Category.GetAll();
    //
    //   return View("ViewCategories", allCategories);
    // }
    //
    // [HttpGet("/{name}/{id}/tasklist")]
    // public ActionResult ViewTaskList(int id)
    // {
    //   Console.WriteLine("hello we are in Get");
    //
    //   Dictionary<string, object> model = new Dictionary<string, object>();
    //   Category selectedCategory = Category.Find(id); //Category is selected as an object
    //   List<Task> categoryTasks = selectedCategory.GetTasks(); //Tasks are displayed in a list
    //
    //   model.Add("category", selectedCategory);
    //   model.Add("tasks", categoryTasks);
    //
    //   //return the task list for selected category
    //   return View("CategoryDetail", model);
    // }
    //
    // [HttpGet("/{name}/{id}/task/add")]
    // public ActionResult AddTask(int id)
    // {
    //   Category selectedCategory = Category.Find(id); //Category is selected as an object
    //
    //   return View(selectedCategory);
    //
    // }
    //
    // [HttpPost("/{name}/{id}/tasklist")]
    // public ActionResult AddTaskViewTaskList(int id)
    // {
    //   Task newTask = new Task(Request.Form["task-name"], Request.Form["task-dueDate"]);
    //   newTask.Save();
    //   Dictionary<string, object> model = new Dictionary<string, object>();
    //   Category selectedCategory = Category.Find(id); //Category is selected as an object
    //   List<Task> categoryTasks = selectedCategory.GetTasks(); //Tasks are displayed in a list
    //   // Console.WriteLine(id);
    //
    //   model.Add("category", selectedCategory);
    //   model.Add("tasks", categoryTasks);
    //   // Console.WriteLine(categoryTasks[0].GetDescription());
    //
    //   //return the task list for selected category
    //   return View("CategoryDetail", model);
    // }
    //
    // [HttpGet("/tasks/{id}/edit")]
    // public ActionResult TaskEdit(int id)
    // {
    //   Task thisTask = Task.Find(id);
    //   return View(thisTask);
    // }
    //
    // [HttpPost("/tasks/{id}/edit")]
    // public ActionResult TaskEditConfirm(int id)
    // {
    //   Task thisTask = Task.Find(id);
    //   thisTask.UpdateDescription(Request.Form["new-name"]);
    //   return RedirectToAction("Index");
    // }
  }
}
