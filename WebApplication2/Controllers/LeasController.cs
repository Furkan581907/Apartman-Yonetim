using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebApplication2.Models;

namespace WebApplication2.Controllers
{
    public class LeasController : Controller
    {
        private apartment_systemEntities db = new apartment_systemEntities();

        // GET: Leas
        public ActionResult Index()
        {
            return View(db.Leases.ToList());
        }

        // GET: Leas/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Leas leas = db.Leases.Find(id);
            if (leas == null)
            {
                return HttpNotFound();
            }
            return View(leas);
        }

        // GET: Leas/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Leas/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Lease_ID,Apartment_ID,Unit_ID,FirstName,LastName,Phone,Active,StartDate,FinishDate,Rent")] Leas leas)
        {
            if (ModelState.IsValid)
            {
                db.Leases.Add(leas);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(leas);
        }

        // GET: Leas/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Leas leas = db.Leases.Find(id);
            if (leas == null)
            {
                return HttpNotFound();
            }
            return View(leas);
        }

        // POST: Leas/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Lease_ID,Apartment_ID,Unit_ID,FirstName,LastName,Phone,Active,StartDate,FinishDate,Rent")] Leas leas)
        {
            if (ModelState.IsValid)
            {
                db.Entry(leas).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(leas);
        }

        // GET: Leas/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Leas leas = db.Leases.Find(id);
            if (leas == null)
            {
                return HttpNotFound();
            }
            return View(leas);
        }

        // POST: Leas/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Leas leas = db.Leases.Find(id);
            db.Leases.Remove(leas);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult KataGoreFiyat()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult KataGoreFiyat(int kat,decimal fiyat)
        {
            db.sp_KatinKirasiniArtir(kat, fiyat);
            return View(db.Leases.ToList());
        }
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
