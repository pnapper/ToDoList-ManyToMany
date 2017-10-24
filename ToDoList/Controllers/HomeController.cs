using System.Collections.Generic;
using System;
using Microsoft.AspNetCore.Mvc;
using ToDoList.Models;

namespace TodoList.Controllers
{
  public class HomeController : Controller
  {
    [HttpGet("/")]
    public ActionResult Index()
    {
      return View();
    }

    [HttpGet("/category/add")]
    public ActionResult AddCategory()
    {
      return View();
    }

    [HttpPost("/category/list")]
    public ActionResult WriteCategories()
    {
      Category newCategory = new Category(Request.Form["category-name"]);
      newCategory.Save();
      List<Category> allCategories = Category.GetAll();

      return View("ViewCategories", allCategories);
    }

    [HttpGet("/category/list")]
    public ActionResult ReadCategories()
    {
      List<Category> allCategories = Category.GetAll();

      return View("ViewCategories", allCategories);
    }

    [HttpGet("/{name}/{id}/tasklist")]
    public ActionResult ViewTaskList(int id)
    {
      Console.WriteLine("hello we are in Get");

      Dictionary<string, object> model = new Dictionary<string, object>();
      Category selectedCategory = Category.Find(id); //Category is selected as an object
      List<Task> categoryTasks = selectedCategory.GetTasks(); //Tasks are displayed in a list

      model.Add("category", selectedCategory);
      model.Add("tasks", categoryTasks);

      //return the task list for selected category
      return View("CategoryDetail", model);
    }

    [HttpGet("/{name}/{id}/task/add")]
    public ActionResult AddTask(int id)
    {
      Category selectedCategory = Category.Find(id); //Category is selected as an object

      return View(selectedCategory);

    }

    [HttpPost("/{name}/{id}/tasklist")]
    public ActionResult AddTaskViewTaskList(int id)
    {
      Task newTask = new Task(Request.Form["task-name"], id, Request.Form["task-dueDate"]);
      newTask.Save();
      Dictionary<string, object> model = new Dictionary<string, object>();
      Category selectedCategory = Category.Find(id); //Category is selected as an object
      List<Task> categoryTasks = selectedCategory.GetTasks(); //Tasks are displayed in a list
      Console.WriteLine(id);

      model.Add("category", selectedCategory);
      model.Add("tasks", categoryTasks);
      Console.WriteLine(categoryTasks[0].GetDescription());

      //return the task list for selected category
      return View("CategoryDetail", model);
    }
  }
}
