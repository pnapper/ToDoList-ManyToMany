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
    public ActionResult CategoryDetail(int id)
    {
      Dictionary<string, object> model = new Dictionary<string, object>;
      Category selectedCategory = Category.Find(id); //Category is selected as an object
      List<Task> categoryTasks = selectedCategory.GetTasks(); //Tasks are displayed in a list

      model.Add("category", selectedCategory);
      model.Add("tasks", categoryTasks);

      return View(model);
      //return the task list for selected category
    }
  }
}
