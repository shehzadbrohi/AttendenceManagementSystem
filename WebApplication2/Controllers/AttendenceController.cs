using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication2.Models;
namespace WebApplication2.Controllers
{
   
    public class AttendenceController : Controller
    {
        // GET: Attendence
        public ActionResult Index()
        {
            var db =new  StudentContainer();
            var batch = db.Batches.ToList();

            return View(batch);
        }
        public ActionResult Search(string drop)
        {

            var db = new StudentContainer();
            var students = db.Students.Where(b=> b.Batch.Name.ToLower().Contains(drop.ToLower()));
            return PartialView(students);
        }
    }
}