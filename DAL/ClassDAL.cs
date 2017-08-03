using System.Drawing;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Configuration;
using System.Security.Cryptography;
using System.IO;
using BEL;
using System.Net;
using System.Net.Mail;

namespace DAL
{
    public class addDAL
    {
        SqlConnection cnn;
        SqlCommand com;
        SqlDataReader dr;

        public string StoreUserInformation(addBEL objBEL)
        {
            cnn = new SqlConnection((WebConfigurationManager.ConnectionStrings["SaaSBasedCollegeManagement"]).ToString());
            cnn.Open();
            int i = 0, k = 0, j=0,l=0;
            SqlCommand com = new SqlCommand("select * from Course where Name='" + objBEL.course + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                k = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            com = new SqlCommand("select * from Branch where Name='" + objBEL.branch + "' AND CourseID='" + k + "' AND ClientId='" + HttpContext.Current.Session["Client"] + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                j = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            com = new SqlCommand("select * from StudyingYear where Name='" + objBEL.year + "' AND Course='" + objBEL.course + "' AND ClientId='" + HttpContext.Current.Session["Client"] + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                l = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            com = new SqlCommand("select * from Student where CourseID='" + k + "' and Branch='" + j + "' and Year='" + l + "' and SName='" + objBEL.name + "' AND ClientId='" + HttpContext.Current.Session["Client"] + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                i = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();

            ClassDAL obj = new ClassDAL();
            com = new SqlCommand("insert into HostelAdmissionTable values ('" + obj.GetLastId("HostelAdmissionTable") + "','" + i + "','" + HttpContext.Current.Session["Client"] + "','" + objBEL.feespaid + "','" + objBEL.localg + "','" + objBEL.vechowned + "','" + objBEL.totalfees + "','" + objBEL.lgname + "','" + objBEL.lgno + "','" + objBEL.lgocc + "','" + objBEL.lgemail + "','" + objBEL.lgaddr + "','" + objBEL.vechno + "')", cnn);

            if (com.ExecuteNonQuery() > 0)
                return "User Stored Successfully";
            else
                return "User can not be stored";
        }
    }
    public class admissionFessDAL
    {
        SqlConnection cnn;
        SqlCommand com;
        SqlDataReader dr;
        int id;

        public admissionFessDAL()
        {
            cnn = new SqlConnection(WebConfigurationManager.ConnectionStrings["SaaSBasedCollegeManagement"].ConnectionString);
            cnn.Open();
        }

        public string ExamFees(examfeesBEL objBEL1)
        {
            int i = 0, k = 0;
            SqlCommand com = new SqlCommand("select * from Course where Name='" + objBEL1.course + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                k = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            com = new SqlCommand("select * from Student where CourseID='" + k + "' and Branch='" + objBEL1.branch + "' and Year='" + objBEL1.year + "' and SName='" + objBEL1.name + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                i = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            int j = 0;
            com = new SqlCommand("select * from ExamType where Name='" + objBEL1.examtype + "' and CourseId='" + k + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                j = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            id = GetLastId("ExamFees");
            com = new SqlCommand("insert into ExamFees values('" + GetLastId("ExamFees") + "','" + i + "','" + HttpContext.Current.Session["Client"] + "','" + k + "','" + j + "','" + objBEL1.image + "','" + objBEL1.examname + "','" + objBEL1.feespaid + "','" + objBEL1.dopayment + "','" + objBEL1.cash + "','" + objBEL1.dd + "','" + objBEL1.checkno + "','" + objBEL1.totalfees + "')", cnn);
            if (com.ExecuteNonQuery() > 0)
                return "Data Stored Successfully";
            else
                return "Data cannot be Stored";
        }

        public string AddAdmissionFees(admissionFeesBEL objBEL1)
        {
            int i = 0, k = 0;
            SqlCommand com = new SqlCommand("select * from Course where Name='" + objBEL1.course + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                k = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            com = new SqlCommand("select * from Student where CourseID='" + k + "' and Branch='" + objBEL1.branch + "' and Year='" + objBEL1.year + "' and SName='" + objBEL1.name + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                i = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            id = GetLastId("AdmissionFees");
            com = new SqlCommand("insert into AdmissionFees values('" + id + "','" + i + "','" + HttpContext.Current.Session["Client"] + "','" + HttpContext.Current.Session["UserID"] + "','" + objBEL1.Image + "','" + objBEL1.feespaid + "','" + objBEL1.dateofpayment + "','" + objBEL1.cash + "','" + objBEL1.DD + "','" + objBEL1.Chequeno + "','" + objBEL1.totalfees + "')", cnn);
            if (com.ExecuteNonQuery() > 0)
                return "Data Stored Successfully";
            else
                return "Data cannot be Stored";
        }

        public int GetLastId(string table)
        {
            com = new SqlCommand("select * from " + table + "", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                id = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            return id + 1;
        }
    }
    public class AttendDAL
    {
        SqlConnection cnn;
        SqlCommand com, com1;
        SqlDataReader dr, dr1;
        int id = 0;

        public AttendDAL()
        {
            cnn = new SqlConnection(WebConfigurationManager.ConnectionStrings["SaaSBasedCollegeManagement"].ConnectionString);
            cnn.Open();
        }

        public string AddAttend(AttendBEL objBEL)
        {
            int i = 0, k = 0;
            com = new SqlCommand("select * from Course where Name='" + objBEL.course + "'", cnn);
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                k = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            com = new SqlCommand("select * from Student where CourseID='" + k + "' and Branch='" + objBEL.branch + "' and Year='" + objBEL.year + "' and RollNumber='" + objBEL.rollno + "'", cnn);
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                i = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            int s = getsubid(objBEL.subject, k);
            com = new SqlCommand("insert into StudentsAttendence values('" + GetNextId("StudentsAttendence") + "','" + objBEL.rollno + "','" + HttpContext.Current.Session["Client"] + "','" + objBEL.date + "','" + s + "','" + objBEL.ispresent + "','" + HttpContext.Current.Session["UserID"] + "')", cnn);
            if (com.ExecuteNonQuery() > 0)
                return "Attendance Submitted Successfully";

            else
                return "Cannot Submit";
        }
        public int getsubid(string sub, int c)
        {
            com1 = new SqlCommand("Select * from Subject where SubName='" + sub + "' AND CourseID='" + c + "'", cnn);
            dr1 = com1.ExecuteReader();
            if (dr1.Read())
                return Convert.ToInt32(dr1.GetValue(0));
            return 0;
        }
        public int GetNextId(string table)
        {
            cnn.Close();
            cnn.Open();
            id = 0;
            com1 = new SqlCommand("select * from " + table + "", cnn);
            dr1 = com1.ExecuteReader();
            while (dr1.Read())
            {
                id = Int32.Parse(dr1.GetValue(0).ToString());
            }
            dr1.Close();
            return id + 1;
        }

    }
    public class ClassDAL
    {
        SqlConnection cnn;
        SqlCommand com,com1;
        SqlDataReader dr,dr1;
        int id;

        public ClassDAL()
        {
            cnn = new SqlConnection(WebConfigurationManager.ConnectionStrings["SaaSBasedCollegeManagement"].ConnectionString);
            cnn.Open();
        }
        public int GetLastId(string table)
        {
            id = 0;
            com1 = new SqlCommand("select * from " + table + "", cnn);
            dr1 = com1.ExecuteReader();
            while (dr1.Read())
            {
                id = int.Parse(dr1.GetValue(0).ToString());
            }
            dr1.Close();
            return (id + 1);
        }
        public string AddState(MasterBEL objBEL)
        {
            if (CheckState(objBEL.state) == "Present")
                return "Record already present";
            id = GetLastId("State");
            com = new SqlCommand("insert into State values('" + id + "','" + objBEL.state + "')", cnn);
            if (com.ExecuteNonQuery()>0)
            {
                return "State added Successfully";
            }
            else
                return "State Cannot be Added";
        }
        public string CheckState(string name)
        {
            string s;
            com = new SqlCommand("Select * from State where Name='"+name+"'",cnn);
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                s= "Present";
            }
            else
                s= "Absent";
            dr.Close();
            return s;
        }
        public string AddCity(MasterBEL objBEL)
        {
            id = GetLastId("City");
            int i = 0;
            com = new SqlCommand("select * from State where Name='" + objBEL.state + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                i = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            if (CheckCity(i, objBEL.city) == "Present")
                return "Record already Present";
            com = new SqlCommand("insert into City values('" + id + "','" + i + "','" + objBEL.city + "')", cnn);
            if (com.ExecuteNonQuery() > 0)
            {
                return "City added Successfully";
            }
            else
                return "City Cannot be Added";
        }
        public string CheckCity(int id, string name)
        {
            string s;
            com = new SqlCommand("Select * from City where StateID='"+id+"' And Name='" + name + "'", cnn);
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                s= "Present";
            }
            else
                s= "Absent";
            dr.Close();
            return s;
        }
        public string AddCourse(MasterBEL objBEL)
        {
            if (CheckCourse(objBEL.course) == "Present")
                return "Record already present";
            int id = GetLastId("Course");
            com = new SqlCommand("insert into Course values('" +id  + "','" + objBEL.course + "','" + HttpContext.Current.Session["Client"] + "')", cnn);
            if (com.ExecuteNonQuery() > 0)
                return "Course Added Successfully";
            else
                return "Course Cannot Be Added";
        }
        public string CheckCourse(string name)
        {
            string s;
            com = new SqlCommand("Select * from Course where Name='" + name + "' AND ClientId='" + HttpContext.Current.Session["Client"] + "'", cnn);
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                s= "Present";
            }
            else
                s= "Absent";
            dr.Close();
            return s;
        }
        public string AddBranch(MasterBEL objBEL)
        {
            id = GetLastId("Branch");
            int i = 0;
            com = new SqlCommand("select * from Course where Name='" + objBEL.course + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                i = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            if (CheckBranch(i, objBEL.branch) == "Present")
                return "Record already Present";
            com = new SqlCommand("insert into Branch values('" + id + "','" + i + "','" + objBEL.branch + "','" + HttpContext.Current.Session["Client"] + "')", cnn);
            if (com.ExecuteNonQuery() > 0)

                return "Branch Added Successfully";
            else
                return "Branch Cannot Be Added";
        }
        public string CheckBranch(int z,string name)
        {
            string s;
            com = new SqlCommand("Select * from Branch where CourseID='" + z + "' And Name='" + name + "' AND ClientId='" + HttpContext.Current.Session["Client"] + "'", cnn);
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                s= "Present";
            }
            else
                s= "Absent";
            dr.Close();
            return s;
        }
        public string AddSubject(MasterBEL objBEL)
        {
            id = GetLastId("Subject");
            int i = 0, j = 0, k = 0;
            com = new SqlCommand("select * from Branch where Name='" + objBEL.branch + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                i = Int32.Parse(dr.GetValue(0).ToString());
                j = Int32.Parse(dr.GetValue(1).ToString());
            }
            dr.Close();
            com = new SqlCommand("select * from StudyingYear where Name='" + objBEL.year + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                k = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            if (CheckSubject(j, i, k, objBEL.subject) == "Present")
                return "Record Already Present";
            com = new SqlCommand("insert into Subject values('" + id + "','" + objBEL.subject + "','" + j + "','" + i + "','" + k + "','" + HttpContext.Current.Session["Client"] + "')", cnn);
            if (com.ExecuteNonQuery() > 0)
                return "Subject Added successfully";
            else
                return "Subject Cannot Be Added";
        }
        public string CheckSubject(int cid,int bid, int sy, string name)
        {
            string s;
            com = new SqlCommand("Select * from Subject where CourseID='" + cid + "' And BranchID='" + bid + "' And Studyingyear='" + sy + "' And SubName='" + name + "' And ClientId='" + HttpContext.Current.Session["Client"] + "'", cnn);
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                s="Present";
            }
            else
                s="Absent";
            dr.Close();
            return s;
        }
        public string AddYear(MasterBEL objBEL)
        {
            if (CheckYear(objBEL.course + objBEL.year) == "Present")
                return "Record already Present";
            id = GetLastId("StudyingYear");
            com = new SqlCommand("insert into StudyingYear values('" + id + "','" +objBEL.course+ objBEL.year + "','" + HttpContext.Current.Session["Client"] + "','"+objBEL.course+"')", cnn);
            if (com.ExecuteNonQuery() > 0)
                return "Year Added Successfully";
            else
                return "Year Cannot Be Added";
        }
        public string CheckYear(string name)
        {
            com = new SqlCommand("Select * from StudyingYear where Name='" + name + "' AND ClientId='" + HttpContext.Current.Session["Client"] + "'", cnn);
            dr = com.ExecuteReader();
            string s;

            if (dr.Read())
            {
                s="Present";
            }
            else
                s="Absent";
            dr.Close();
            return s;   
        }
        public string AddDesignation(MasterBEL objBEL)
        {
            if (CheckDesignation(objBEL.designation) == "Present")
                return "Record already Present";
            id = GetLastId("Designations");
            com = new SqlCommand("insert into Designations values('" + id + "','" + HttpContext.Current.Session["Client"] + "','" + objBEL.designation + "')", cnn);
            if (com.ExecuteNonQuery() > 0)
                return "Designation Added Successfully";
            else
                return "Designation cannot Be Added";
        }
        public string CheckDesignation(string name)
        {
            com = new SqlCommand("Select * from Designations where Name='" + name + "' AND ClientId='" + HttpContext.Current.Session["Client"] + "'", cnn);
            dr = com.ExecuteReader();
            string s;
            if (dr.Read())
            {
                s="Present";
            }
            else
                s="Absent";
            dr.Close();
            return s;
        }
        public string AddFeedbackCategory(MasterBEL objBEL)
        {
            if (CheckFC(objBEL.feedbackCategory) == "Present")
                return "Record already Present";
            id = GetLastId("feedbackCategory");
            com = new SqlCommand("insert into feedbackCategory values('" + id + "','" + HttpContext.Current.Session["Client"] + "','" + objBEL.feedbackCategory + "')", cnn);
            if (com.ExecuteNonQuery() > 0)
                return "FeedBack category Added Successfully";
            else
                return "FeedBack category cannot Be Added";
        }
        public string CheckFC(string name)
        {
            string s;
            com = new SqlCommand("Select * from feedbackCategory where FName='" + name + "' AND ClientId='" + HttpContext.Current.Session["Client"] + "'", cnn);
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                s="Present";
            }
            else
                s="Absent";
            dr.Close();
            return s;

        }
        public string AddExamType(MasterBEL objBEL)
        {
            id = GetLastId("ExamType");
            int i = 0;
            com = new SqlCommand("select * from Course where Name='" + objBEL.course + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                i = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            if (CheckExamType(i, objBEL.examType, objBEL.dur) == "Present")
                return "Record already Present";
            com = new SqlCommand("insert into ExamType values('" + id + "','" + HttpContext.Current.Session["Client"] + "','" + objBEL.examType + "','" + i + "','" + objBEL.dur + "')", cnn);
            if (com.ExecuteNonQuery() > 0)
                return "ExamType added Successfully";
            else
                return "ExamType Cannot be Added";
        }
        public string CheckExamType(int cid, string name, int dur)
        {
            string s;
            com = new SqlCommand("Select * from ExamType where CourseId='" + cid + "' And Name='" + name + "' And Duration='" + dur + "' AND ClientId='" + HttpContext.Current.Session["Client"] + "'", cnn);
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                s= "Present";
            }
            else
                s= "Absent";
            dr.Close();
            return s;
        }
        public string AddMessRule(MasterBEL objBEL)
        {
            if (CheckRule(objBEL.messRule) == "Present")
                return "Record already Present";
            id = GetLastId("MessRules");
            com = new SqlCommand("insert into MessRules values('" + id + "','" + HttpContext.Current.Session["Client"] + "','" + objBEL.messRule + "')", cnn);
            if (com.ExecuteNonQuery() > 0)
                return "MessRule added Successfully";
            else
                return "MessRule Cannot be Added";
        }
        public string CheckRule(string name)
        {
            string s;
            com = new SqlCommand("Select * from MessRules where Rules='" + name + "' AND ClientId='" + HttpContext.Current.Session["Client"] + "'", cnn);
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                s= "Present";
            }
            else
                s= "Absent";
            dr.Close();
            return s;
        }
        public string AddFeedback(stuwork objBEL)
        {
            int i = 0;
            com = new SqlCommand("Select * from feedbackCategory Where Name='"+objBEL.fbCate+"'",cnn);
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                i = Convert.ToInt16(dr.GetValue(0));
            }
            dr.Close();
            id = GetLastId("FeedBack");
            com1 = new SqlCommand("insert into FeedBack values('" + id + "','" + HttpContext.Current.Session["Client"] + "','" + i + "','" + objBEL.name + "','" + objBEL.emailId + "','" + objBEL.remark + "','"+DateTime.Today.ToString()+"')", cnn);

            if (com1.ExecuteNonQuery() > 0)
                return "Success";
            else
                return "Fail";
        }
        public string CheckFeedback(string name,string fc, string mail, string remark)
        {
            com = new SqlCommand("Select * from FeedBack where feedbackca='" + fc + "' And name='" + name + "' And emailId='" + mail + "' And Remarks='" + remark + "' AND ClientId='" + HttpContext.Current.Session["Client"] + "'", cnn);
            dr = com.ExecuteReader();
            string s;

            if (dr.Read())
            {
                s="Present";
            }
            else
                s="Absent";
            dr.Close();
            return s;

        }
        public string AddHostelAllocation(HostelAllocationBEL objBEL)
        {
            int i = 0, k = 0;
            com = new SqlCommand("select * from Student where CourseID='" + k + "' and Branch='" + objBEL.branch + "' and Year='" + objBEL.year + "' and RollNumber='" + objBEL.rollNo + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                i = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            com = new SqlCommand("select * from Course where Name='" + objBEL.course + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                k = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            com = new SqlCommand("select * from Student where SName='" + objBEL.name + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                objBEL.rollNo = Int32.Parse(dr.GetValue(25).ToString());
            }
            dr.Close();
            if (CheckHostelAllocation(objBEL.rollNo, objBEL.date, objBEL.roomNo) == "Present")
                return "Record already Present";
            com = new SqlCommand("insert into HostelAllocation values('" + GetLastId("HostelAllocation") + "','" + objBEL.rollNo + "','" + HttpContext.Current.Session["Client"] + "','" + objBEL.date + "','" + objBEL.roomNo + "')", cnn);
            if (com.ExecuteNonQuery() > 0)
                return "Information added Successfully";
            else
                return "Information Cannot be Added";
        }
        public string CheckHostelAllocation(int id, string date, int room)
        {
            string s;
            com = new SqlCommand("Select * from HostelAllocation where sid='" + id + "' AND ClientId='" + HttpContext.Current.Session["Client"] + "'", cnn);
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                s="Present";
            }
            else
                s="Absent";
            dr.Close();
            return s;
        }
        public string AddsubjectFacultyDetails(subjectFacultyDetailsBEL objBEL)
        {
            int i=0, j=0;
            if (CheckSFD(i, j) == "Present")
                return "Record already Present";
            id = GetLastId("SubjectFacultyDetails");
            com = new SqlCommand("insert into SubjectFacultyDetails values('" + id + "','" + objBEL.subject + "','" + objBEL.teacher + "','" + HttpContext.Current.Session["Client"] + "')", cnn);
            dr = com.ExecuteReader();
            return "Success";
        }
        public string CheckSFD(int tid, int sid)
        {
            com = new SqlCommand("Select * from SubjectFacultyDetails where SubjectID='" + sid + "' And TeacherID='" + tid + "' AND ClientId='" + HttpContext.Current.Session["Client"] + "'", cnn);
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                return "Present";
            }
            else
                return "Absent";
        }

    }
    public class clgdetailsDAL
    {
        public string StoreDetailsInformation(clgdetailsBEL objBEL)
        {
            SqlConnection cnn;
            ClassDAL obj = new ClassDAL();
            cnn = new SqlConnection(WebConfigurationManager.ConnectionStrings["SaaSBasedCollegeManagement"].ConnectionString);
            cnn.Open();

            SqlCommand com = new SqlCommand("insert into StudentCollegeDetails values ('" + obj.GetLastId("StudentCollegeDetails") + "','" + objBEL.studentID + "','" + objBEL.styear + "','" + objBEL.branch + "','" + objBEL.lastexam + "','" + objBEL.yearofexam + "','" + objBEL.ispass + "','" + HttpContext.Current.Session["Client"] + "')", cnn);
            if (com.ExecuteNonQuery() > 0)
            {
                cnn.Close();
                return "Details Stored Successfully";
            }
            else
            {
                cnn.Close();
                return "Details can not be stored";
            }
        }
    }
    public class ExamDAL
    {
        SqlConnection cnn;
        SqlCommand com;
        SqlDataReader dr;
        int id;
        public ExamDAL()
        {
            cnn = new SqlConnection(WebConfigurationManager.ConnectionStrings["SaaSBasedCollegeManagement"].ConnectionString);
            cnn.Open();
        }

        public int GetLastId(string table)
        {

            com = new SqlCommand("select * from " + table + "", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                id = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            return (id + 1);
        }
        public string AddExam(ExamBEL objBEL)
        {
            int i = 0;
            com = new SqlCommand("select * from Subject where SubName='" + objBEL.sub + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                i = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            int j = 0;
            com = new SqlCommand("select * from ExamType where Name='" + objBEL.etype + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                j = Int32.Parse(dr.GetValue(4).ToString());
            }
            dr.Close();
            int dur = int.Parse(objBEL.duration) + j;
            /*if (CheckState(objBEL.state) == "Present")
                return "Record already present";*/
            id = GetLastId("ExamSchedule");
            com = new SqlCommand("insert into ExamSchedule values('" + id + "','" + objBEL.date + "','" + i + "','" + objBEL.etype + "' ,'" + objBEL.duration + " " + objBEL.end + " " + dur + "','" + HttpContext.Current.Session["Client"] + "')", cnn);
            if (com.ExecuteNonQuery() > 0)
                return "stored successfully";
            else
                return "failed";
        }
       /* public string CheckExamSchedule(string name)
        {
            string s;
            com = new SqlCommand("Select * from Examschedule where Name='" + name + "'", cnn);
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                s = "Present";
            }
            else
                s = "Absent";
            dr.Close();
            return s;
        }*/

        public string StoreMarks(ExamBEL objBEL)
        {
            int i = 0, k = 0,j=0;
            com = new SqlCommand("select * from Course where Name='" + objBEL.course + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                k = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            com = new SqlCommand("select * from Student where CourseID='" + k + "' and Branch='" + objBEL.branch + "' and Year='" + objBEL.year + "' and SName='" + objBEL.name + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                i = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            com = new SqlCommand("select * from ExamType where Name='" + objBEL.etype + "' and CourseId='" + k + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                j = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            int sub=0;
            com = new SqlCommand("select * from Subject where SubName='" + objBEL.sub + "' and ClientId='" + HttpContext.Current.Session["Client"] + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                sub = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            int m, mm;

            m = Convert.ToInt16(objBEL.m);
            mm = Convert.ToInt16(objBEL.max);
            int mrks = 0;
            mrks=(m*100)/ mm;
            string G="", R="";
            if (mrks >= 75)
            {
                G = "A";
                R = "First Class with Dist";
            }
            if (mrks >= 60 && mrks<75)
            {
                G = "B";
                R = "First Class";
            }
            if (mrks < 60 && mrks >= 40)
            {
                G = "C";
                R = "Second Class";
            }
            if(mrks<40)
            {
                G = "D";
                R = "Fail";
            }
            id = GetLastId("StudentResultDetails");
            com = new SqlCommand("insert into StudentResultDetails values('" + id + "','" + HttpContext.Current.Session["Client"] + "','" + i + "','"+j+"', '" + m + "','" + G + "','" + R + "','"+sub+"')", cnn);
            if (com.ExecuteNonQuery() > 0)
            {

                return "stored successfully";
            }
            else
                return "failed";

        }
    }
    public class ClientDAL
    {
        SqlConnection cnn;
        SqlCommand com;
        SqlDataReader dr;

        public ClientDAL()
        {
            cnn = new SqlConnection(WebConfigurationManager.ConnectionStrings["SaaSBasedCollegeManagement"].ConnectionString);
            cnn.Open();
        }
        public string AddClient(ClientBEL objBEL)
        {
            ClassDAL obj = new ClassDAL();
            int id = obj.GetLastId("client");
            com = new SqlCommand("insert into client values('" + id + "','" + objBEL.name + "','" + objBEL.add + "','" +objBEL.cno + "','" + objBEL.orgname + "','"+objBEL.email+"')", cnn);
            if (com.ExecuteNonQuery() > 0)
            {
                RegisterDAL regi = new RegisterDAL();
                if (regi.AddUser(objBEL.user, objBEL.pass, "Admin", id) == "Success")
                {
                    regi.SendMail(objBEL.email,objBEL.user, objBEL.pass);
                    return "Data Stored Successfully";
                }
                else
                    return "Data cannot be Stored";
            }
            else
                return "Data cannot be Stored";
        }
        public string GetClientID()
        {
            string id="";
            com = new SqlCommand("Select * from client where Name='" + HttpContext.Current.Session["ClientID"] + "'", cnn);
            dr = com.ExecuteReader();
            if (dr.Read())
                id = dr.GetValue(0).ToString();
            dr.Close();
            return id;
        }
    }
    public class LoginDAL
    {
        SqlConnection cnn;
        SqlCommand com,com1;
        SqlDataReader dr,dr1;

        public LoginDAL()
        {
            cnn = new SqlConnection(WebConfigurationManager.ConnectionStrings["SaaSBasedCollegeManagement"].ConnectionString);
            cnn.Open();
        }

        public string CheckUser(LoginBEL objBEL)
        {
            string s;
            string passPhrase = "Pas5@se";        // can be any string
            string saltValue = "@1Value";        // can be any string
            string hashAlgorithm = "SHA1";             // can be "MD5"
            int passwordIterations = 2;                  // can be any number
            string initVector = "@1B2c3D4e5F6g7H8"; // must be 16 bytes
            int keySize = 256;

            string pass = Encrypt(objBEL.pass, passPhrase, saltValue, hashAlgorithm, passwordIterations, initVector, keySize);
            com = new SqlCommand("demo1", cnn);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@user", objBEL.user.ToString());
            com.Parameters.AddWithValue("@pass", pass);
            dr = com.ExecuteReader();

            if (dr.Read())
            {
                objBEL.uid = dr.GetValue(0).ToString();
                objBEL.cid = dr.GetValue(4).ToString();
                s = dr.GetValue(3).ToString();
                dr.Close();
                com1 = new SqlCommand("Select * from client where ID='"+Convert.ToInt16(objBEL.cid)+"'",cnn);
                dr1 = com1.ExecuteReader();
                if (dr1.Read())
                    objBEL.cname = dr1.GetValue(1).ToString();
                dr1.Close();
                return s;
            }
            else
                return "Error";
        }
        public string Encrypt(string plainText, string passPhrase, string saltValue, string hashAlgorithm, int passwordIterations, string initVector, int keySize)
        {

            byte[] initVectorBytes = Encoding.ASCII.GetBytes(initVector);
            byte[] saltValueBytes = Encoding.ASCII.GetBytes(saltValue);


            byte[] plainTextBytes = Encoding.UTF8.GetBytes(plainText);


            PasswordDeriveBytes password = new PasswordDeriveBytes(
                                                            passPhrase,
                                                            saltValueBytes,
                                                            hashAlgorithm,
                                                            passwordIterations);


            byte[] keyBytes = password.GetBytes(keySize / 8);


            RijndaelManaged symmetricKey = new RijndaelManaged();


            symmetricKey.Mode = CipherMode.CBC;


            ICryptoTransform encryptor = symmetricKey.CreateEncryptor(
                                                             keyBytes,
                                                             initVectorBytes);


            MemoryStream memoryStream = new MemoryStream();


            CryptoStream cryptoStream = new CryptoStream(memoryStream,
                                                         encryptor,
                                                         CryptoStreamMode.Write);
            // Start encrypting.
            cryptoStream.Write(plainTextBytes, 0, plainTextBytes.Length);

            // Finish encrypting.
            cryptoStream.FlushFinalBlock();

            // Convert our encrypted data from a memory stream into a byte array.
            byte[] cipherTextBytes = memoryStream.ToArray();

            // Close both streams.
            memoryStream.Close();
            cryptoStream.Close();

            // Convert encrypted data into a base64-encoded string.
            string cipherText = Convert.ToBase64String(cipherTextBytes);

            // Return encrypted string.
            return cipherText;
        }
    }
    public class menuDAL
    {
        public string PostMenuInformation(menuBEL objBEL)
        {
            SqlConnection cnn;
            cnn = new SqlConnection(WebConfigurationManager.ConnectionStrings["SaaSBasedCollegeManagement"].ConnectionString);
            cnn.Open();
            ClassDAL obj = new ClassDAL();

            SqlCommand com = new SqlCommand("insert into Mess values ('" + obj.GetLastId("Mess") + "','" + HttpContext.Current.Session["Client"] + "','" + objBEL.date + "','" + objBEL.menuitem + "')", cnn);
            if (com.ExecuteNonQuery() > 0)
                return "Menu Posted Successfully";
            else
                return "Menu can not be stored";
        }
    }
    public class RegisterDAL
    {
        SqlConnection cnn;
        SqlCommand com;
        admissionFessDAL obj;
        LoginDAL objDAL;

        public RegisterDAL()
        {
            cnn = new SqlConnection(WebConfigurationManager.ConnectionStrings["SaaSBasedCollegeManagement"].ConnectionString);
            cnn.Open();
        }

        public string AddStudent(StudentBEL objBEL)
        {
            obj = new admissionFessDAL();
            int id = obj.GetLastId("State"), id1 = obj.GetLastId("City");
            int i = 0, j = 0;
            com = new SqlCommand("select * from State where Name='" + objBEL.state + "'", cnn);
            SqlDataReader dr = com.ExecuteReader();
            while (dr.Read())
            {
                i = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            com = new SqlCommand("select * from City where Name='" + objBEL.city + "' and StateID='" + i + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                j = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            com = new SqlCommand("insert into Student values('" + obj.GetLastId("Student") + "','" + objBEL.course + "','" + objBEL.fname + "','" + objBEL.fname + "','" + objBEL.lname + "','" + objBEL.addOfCo + "','" + objBEL.pAdd + "','" + j + "','" + i + "','" + objBEL.img + "','" + objBEL.moName + "','" + objBEL.emailId + "','" + objBEL.contactNo + "','" + objBEL.gender + "','" + objBEL.usernm + "','" + objBEL.pass + "','" + objBEL.faOcc + "','" + objBEL.faCoNo + "','" + objBEL.dob + "','" + objBEL.branch + "','" + objBEL.year + "','" + objBEL.yrOfAdmit + "','" + objBEL.caste + "','" + objBEL.bPlace + "','" + objBEL.bloodGrp + "','" + objBEL.rollno + "','" + 0 + "','Bye','" + objBEL.fname + " " + objBEL.lname + "')", cnn);
            if (com.ExecuteNonQuery() > 0)
            {
                if (AddUser(objBEL.usernm, objBEL.pass, "Student", Convert.ToInt32(HttpContext.Current.Session["Client"])) == "Success")
                {
                    SendMail(objBEL.emailId, objBEL.usernm,objBEL.pass);
                    return "Student Register Successfully";
                }
                else
                    return "New Student cannot be Register";
            }
            else
                return "New Student cannot be Register";
        }

        public string AddUser(string user, string pass, string usertype,int id)
        {
            ClassDAL obj = new ClassDAL();
            objDAL = new LoginDAL();
            string passPhrase = "Pas5@se";        // can be any string
            string saltValue = "@1Value";        // can be any string
            string hashAlgorithm = "SHA1";             // can be "MD5"
            int passwordIterations = 2;                  // can be any number
            string initVector = "@1B2c3D4e5F6g7H8"; // must be 16 bytes
            int keySize = 256;

            string password = objDAL.Encrypt(pass, passPhrase, saltValue, hashAlgorithm, passwordIterations, initVector, keySize);

            com = new SqlCommand("insert into Login values('" + obj.GetLastId("Login") + "','" + user + "','" + password + "','" + usertype + "','" + id + "')", cnn);
            if (com.ExecuteNonQuery() > 0)
                return "Success";
            else
                return "Fail";
        }

        public string AddTeacher(TeacherBEL objBEL)
        {
            obj = new admissionFessDAL();
            int id1 = obj.GetLastId("State"), id2 = obj.GetLastId("City");
            int j = 0, k = 0;
            com = new SqlCommand("select * from State where Name='" + objBEL.state + "'", cnn);
            SqlDataReader dr = com.ExecuteReader();
            while (dr.Read())
            {
                j = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            com = new SqlCommand("select * from City where Name='" + objBEL.city + "' and StateID='" + j + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                k = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            int id = obj.GetLastId("Designations");
            int i = 0;
            com = new SqlCommand("select * from Designations where Name='" + objBEL.did + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                i = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            com = new SqlCommand("insert into TeachingStaff values('" + obj.GetLastId("TeachingStaff") + "','" + HttpContext.Current.Session["Client"] + "','" + objBEL.fname + "','" + objBEL.mname + "','" + objBEL.lname + "','" + objBEL.img + "','" + objBEL.uname + "','" + objBEL.pass + "','" + objBEL.dob + "','" + objBEL.gbranch + "','" + objBEL.gyear + "','" + objBEL.gclg + "','" + objBEL.psub + "','" + objBEL.pyear + "','" + objBEL.pclg + "','" + objBEL.aoi + "','" + objBEL.cno + "','" + objBEL.add + "','" + objBEL.exp + "','" + objBEL.doj + "','" + true + "','" + objBEL.mstatus + "','" + objBEL.gender + "','" + objBEL.bgrp + "','" + 0 + "','" + objBEL.email + "','" + id + "','" + objBEL.fname + objBEL.lname + "')", cnn);
            if (com.ExecuteNonQuery() > 0)
            {
                if (AddUser(objBEL.uname, objBEL.pass, "Teacher", Convert.ToInt32(HttpContext.Current.Session["Client"])) == "Success")
                {
                    SendMail(objBEL.email, objBEL.uname,objBEL.pass);
                    return "Teacher Register Successfully";
                }
                else
                    return "New User cannot be Register";
            }
            else
                return "New Teacher cannot be Register";
        }

        public string AddNonTeacher(NonTeacherBEL objBEL)
        {
            obj = new admissionFessDAL();
            int id = obj.GetLastId("Designations");
            int i = 0;
            com = new SqlCommand("select * from Designations where Name='" + objBEL.designation + "'", cnn);
            SqlDataReader dr = com.ExecuteReader();
            while (dr.Read())
            {
                i = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            com = new SqlCommand("insert into NonTeachingStaff values('" + obj.GetLastId("NonTeachingStaff") + "','" + HttpContext.Current.Session["Client"] + "','" + objBEL.fname + "' , '" + objBEL.mname + "','" + objBEL.lname + "','" + objBEL.img + "','" + objBEL.username + "','" + objBEL.password + "','" + objBEL.dob + "','" + objBEL.qualification + "','" + id + "','" + objBEL.contnumber + "','" + objBEL.peraddress + "','" + objBEL.exp + "','" + objBEL.dojoin + "','" + objBEL.marritalstatus + "','" + objBEL.gender + "','" + objBEL.bloodgroup + "','" + objBEL.emailid + "','" + objBEL.fname + objBEL.lname + "')", cnn);
            if (com.ExecuteNonQuery() > 0)
            {
                if (AddUser(objBEL.username, objBEL.password, "NonTeacher", Convert.ToInt32(HttpContext.Current.Session["Client"])) == "Success")
                {
                    SendMail(objBEL.emailid,objBEL.username,objBEL.password);
                    return "User Register Successfully";
                }
                else
                    return "New User cannot be Register";
            }
            else
                return "New NonTeacher cannot be Register";
        }

        public void SendMail(string email, string user, string pass)
        {
            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            mail.To.Add(email);
            mail.From = new MailAddress("saasbasedcollegemanagement@gmail.com", "SBCM", System.Text.Encoding.UTF8);
            mail.Subject = "Registration Status";
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = "You have successfully registered to SaaS Based College Management. Yours details are: Username='"+user+"' And Password='"+pass+"'";
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;
            SmtpClient client = new SmtpClient();
            client.Credentials = new System.Net.NetworkCredential("saasbasedcollegemanagement@gmail.com", "sbcm@123");
            client.Port = 587;
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;
            try
            {
                client.Send(mail);
                //Page.RegisterStartupScript("UserMsg", "<script>alert('Successfully Send...');if(alert){ window.location='SendMail.aspx';}</script>");
            }
            catch (Exception ex)
            {
                Exception ex2 = ex;
                string errorMessage = string.Empty;
                while (ex2 != null)
                {
                    errorMessage += ex2.ToString();
                    ex2 = ex2.InnerException;
                }
            }
            
            /*
            var fromAddress = new MailAddress("g.joshi1001@gmail.com", "Gaurav Joshi");
            var toAddress = new MailAddress(email, name);
            const string fromPassword = "shriramkrupa";
            const string subject = "Registration Status";

            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                Credentials = new NetworkCredential(fromAddress.Address, fromPassword),
                Timeout = 20000
            };
            using (var message = new MailMessage(fromAddress, toAddress)
            {
                Subject = subject,
                Body = " You have been successfully registerd "
            })
            {
                smtp.Send(message);
            }*/
        }
    }
    public class StudentDetailsDAL
    {
        SqlConnection cnn;
        SqlCommand com;

        public StudentDetailsDAL()
        {
            cnn = new SqlConnection(WebConfigurationManager.ConnectionStrings["SaaSBasedCollegeManagement"].ConnectionString);
            cnn.Open();
        }
        public string AddStudentDetails(StudentDetailsBEL objBEL1)
        {
            com = new SqlCommand("insert into TestDetails values('" + 1 + "','" + 1 + "','" + 1 + "','" + objBEL1.testname + "','" + objBEL1.description + "','" + objBEL1.maximummarks + "','" + objBEL1.date + "',)", cnn);
            if (com.ExecuteNonQuery() > 0)
                return "Data Stored Successfully";
            else
                return "Data cannot be Stored";
        }

    }
    public class StudentOfficeDetailsDAL
    {
        SqlConnection cnn;
        SqlCommand com;
        SqlDataReader dr;
        int id;
        public StudentOfficeDetailsDAL()
        {
            cnn = new SqlConnection(WebConfigurationManager.ConnectionStrings["SaaSBasedCollegeManagement"].ConnectionString);
            cnn.Open();
        }

        public int GetLastId(string table)
        {
            id = 0;
            com = new SqlCommand("select * from " + table + "", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                id = Int32.Parse(dr.GetValue(7).ToString());
            }
            dr.Close();
            return (id + 1);
        }
        public string AddStudentOfficeDetails(StudentOfficeDetailsBEL objBEL)
        {
            int i = 0, k = 0;
            com = new SqlCommand("select * from Course where Name='" + objBEL.course + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                k = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            com = new SqlCommand("select * from Student where CourseID='" + k + "' and Branch='" + objBEL.branch + "' and Year='" + objBEL.year + "' and RollNumber='" + objBEL.rollnumber + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                i = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();

            com = new SqlCommand("insert into StudentOfficeDetails values('" + i + "','" + objBEL.remarks + "','" + objBEL.isapproved + "','" + objBEL.feespaid + "','" + objBEL.totalfees + "','" + objBEL.duedate + "','" + HttpContext.Current.Session["Client"] + "','" + GetLastId("StudentOfficeDetails") + "')", cnn);
            if (com.ExecuteNonQuery() > 0)
                return "Data Stored Successfully";
            else
                return "Data cannot be Stored";
        }
    }
    public class TestDetailsDAL
    {
        SqlConnection cnn;
        SqlCommand com;
        SqlDataReader dr;
        int id = 0;

        public TestDetailsDAL()
        {
            cnn = new SqlConnection(WebConfigurationManager.ConnectionStrings["SaaSBasedCollegeManagement"].ConnectionString);
            cnn.Open();
        }
        public string AddTestDetails(TestDetailsBEL objBEL1)
        {
            int i = 0;
            int j = 0, k = 0;
            com = new SqlCommand("select * from Course where Name='" + objBEL1.course + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                k = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            com = new SqlCommand("select * from Branch where Name='" + objBEL1.branch + "' and CourseID='" + k + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                j = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();

            com = new SqlCommand("select * from Subject where Name='" + objBEL1.subject + "' and CourseID='" + k + "' and BranchID'" + j + "'", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                i = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();

            com = new SqlCommand("insert into TestDetails values('" + GetLastId("TestDetails") + "','" + HttpContext.Current.Session["Client"] + "','" + i + "','" + objBEL1.testname + "','" + objBEL1.description + "','" + objBEL1.maximummarks + "','" + objBEL1.date + "',)", cnn);
            if (com.ExecuteNonQuery() > 0)
                return "Data Stored Successfully";
            else
                return "Data cannot be Stored";
        }
        public int GetLastId(string table)
        {
            com = new SqlCommand("select * from " + table + "", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                id = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            return (id + 1);
        }
    }
    public class ToppersDAL
    {
        SqlConnection cnn;
        SqlCommand com;
        SqlDataReader dr, dr1;
        int id;

        public ToppersDAL()
        {
            cnn = new SqlConnection(WebConfigurationManager.ConnectionStrings["SaaSBasedCollegeManagement"].ConnectionString);
            cnn.Open();
        }


        public int GetLastId(string table)
        {
            com = new SqlCommand("select * from " + table + "", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                id = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            return (id + 1);
        }

        public string AddToppers(ExamBEL objBEL1)
        {
            int i = 0;
            float per = 0;
            com = new SqlCommand("select * from StudentResultDetails order by MarksObtails", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                if (i <= 3)
                {
                    com = new SqlCommand("select * from Student where ID='" + dr.GetValue(0) + "'");
                    dr1 = com.ExecuteReader();
                    i++;
                    id = GetLastId("Toppers");
                    per = (int.Parse(dr.GetValue(4).ToString()) / int.Parse(objBEL1.max)) * 100;
                    com = new SqlCommand("insert into Toppers values('" + id + "','" + dr1.GetValue(30) + "','" + dr1.GetValue(1) + "','" + dr1.GetValue(21) + "','" + dr1.GetValue(22) + "','" + objBEL1.m + "','" + per.ToString() + "','" + i.ToString() + "','" + System.DateTime.Today.Year.ToString() + "')", cnn);
                    if (com.ExecuteNonQuery() < 0)
                        return "Data cannot be Stored";
                }
            }


            if (com.ExecuteNonQuery() > 0)
                return "Data Stored Successfully";
            else
                return "Data cannot be Stored";
        }
    }
    public class HostelAttendDAL
    {
        SqlConnection cnn;
        SqlCommand com;
        SqlDataReader dr;
        int id = 0;

        public HostelAttendDAL()
        {
            cnn = new SqlConnection(WebConfigurationManager.ConnectionStrings["SaaSBasedCollegeManagement"].ConnectionString);
            cnn.Open();
        }

        public string AddHostelAttend(HostelAttendBEL objBEL)
        {
            int i = 0, k = 0;
            /*com = new SqlCommand("select * from Course where Name='" + objBEL.course + "'", cnn);
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                k = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            com = new SqlCommand("select * from Student where CourseID='" + k + "' and Branch='" + objBEL.branch + "' and Year='" + objBEL.year + "' and RollNumber='" + objBEL.rollno + "'", cnn);
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                i = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();*/

            com = new SqlCommand("insert into HostelAttendence values('" + GetNextId("HostelAttendence") + "','" + objBEL.rollno + "','" + HttpContext.Current.Session["Client"] + "','" + objBEL.date + "','" + objBEL.ispresent + "')", cnn);
            if (com.ExecuteNonQuery() > 0)
                return "Attendance Submitted Successfully";

            else
                return "Cannot Submit";
        }
        public int GetNextId(string table)
        {
            id = 0;
            com = new SqlCommand("select * from " + table + "", cnn);
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                id = Int32.Parse(dr.GetValue(0).ToString());
            }
            dr.Close();
            return id + 1;
        }

    }
    public class EditProfile
    {
        SqlConnection cnn;
        SqlCommand com;
        SqlDataReader dr;

        public EditProfile()
        {
            cnn = new SqlConnection(WebConfigurationManager.ConnectionStrings["SaaSBasedCollegeManagement"].ConnectionString);
            cnn.Open();
        }

        public StudentBEL GetStudentData()
        {
            com = new SqlCommand("Select * from Student where Username='" + HttpContext.Current.Session["user"] + "' And ClientId='" + HttpContext.Current.Session["Client"] + "'",cnn);
            StudentBEL objBEL = new StudentBEL();
            
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                objBEL.fname = dr.GetValue(2).ToString();
                objBEL.mname = dr.GetValue(3).ToString();
                objBEL.lname = dr.GetValue(4).ToString();
                objBEL.addOfCo = dr.GetValue(5).ToString();
                objBEL.pAdd = dr.GetValue(6).ToString();
                //objBEL.photo = dr.GetValue(9).ToString();
                objBEL.moName = dr.GetValue(10).ToString();
                objBEL.emailId = dr.GetValue(11).ToString();
                objBEL.contactNo = dr.GetValue(12).ToString();
                objBEL.gender = dr.GetValue(13).ToString();
                objBEL.usernm = dr.GetValue(14).ToString();
                objBEL.pass = dr.GetValue(15).ToString();
                objBEL.faOcc = dr.GetValue(16).ToString();
                objBEL.faCoNo = dr.GetValue(17).ToString();
                objBEL.dob = dr.GetValue(18).ToString();
                objBEL.branch = dr.GetValue(19).ToString();
                objBEL.year = dr.GetValue(20).ToString();
                objBEL.yrOfAdmit = dr.GetValue(21).ToString();
                objBEL.caste = dr.GetValue(22).ToString();
                objBEL.bPlace = dr.GetValue(23).ToString();
                objBEL.bloodGrp = dr.GetValue(24).ToString();
                objBEL.rollno = dr.GetValue(25).ToString();
                //objBEL.addOfCo = dr.GetValue(26).ToString();
                //objBEL.addOfCo = dr.GetValue(27).ToString();
            }
            return objBEL;
        }
        public TeacherBEL GetTeacherData()
        {
            com = new SqlCommand("Select * from TeachingStaff where Username='" + HttpContext.Current.Session["user"] + "' And ClientId='" + HttpContext.Current.Session["Client"] + "'", cnn);
            TeacherBEL objBEL = new TeacherBEL();

            dr = com.ExecuteReader();
            if (dr.Read())
            {
                objBEL.fname = dr.GetValue(2).ToString();
                objBEL.mname = dr.GetValue(3).ToString();
                objBEL.lname = dr.GetValue(4).ToString();
                objBEL.add = dr.GetValue(16).ToString();
                objBEL.desig = dr.GetValue(24).ToString();
                objBEL.photo = dr.GetValue(5).ToString();
                objBEL.salary = dr.GetValue(22).ToString();
                objBEL.email = dr.GetValue(23).ToString();
                objBEL.cno = dr.GetValue(15).ToString();
                objBEL.gender = dr.GetValue(13).ToString();
                objBEL.uname = dr.GetValue(6).ToString();
                objBEL.pass = dr.GetValue(7).ToString();
                objBEL.dob = dr.GetValue(8).ToString();
                objBEL.gbranch = dr.GetValue(9).ToString();
                objBEL.gyear = dr.GetValue(10).ToString();
                objBEL.gclg = dr.GetValue(11).ToString();
                objBEL.psub = dr.GetValue(12).ToString();
                objBEL.pyear = dr.GetValue(13).ToString();
                objBEL.aoi = dr.GetValue(14).ToString();
                objBEL.exp = dr.GetValue(17).ToString();
                objBEL.bgrp = dr.GetValue(21).ToString();
                objBEL.mstatus = dr.GetValue(20).ToString();
                objBEL.doj = dr.GetValue(18).ToString();
                objBEL.status = dr.GetValue(19).ToString();
            }
            return objBEL;
        }
        public NonTeacherBEL GetNonTeacherData()
        {
            com = new SqlCommand("Select * from NonTeachingStaff where Username='" + HttpContext.Current.Session["user"] + "' And ClientId='" + HttpContext.Current.Session["Client"] + "'", cnn);
            NonTeacherBEL objBEL = new NonTeacherBEL();

            dr = com.ExecuteReader();
            if (dr.Read())
            {
                objBEL.fname = dr.GetValue(2).ToString();
                objBEL.mname = dr.GetValue(3).ToString();
                objBEL.lname = dr.GetValue(4).ToString();
                objBEL.addcorrespondance = dr.GetValue(12).ToString();
                objBEL.peraddress = dr.GetValue(12).ToString();
                //objBEL.photo = dr.GetValue(5).ToString();
                //objBEL. = dr.GetValue(10).ToString();
                objBEL.emailid = dr.GetValue(18).ToString();
                objBEL.contnumber = dr.GetValue(11).ToString();
                objBEL.gender = dr.GetValue(16).ToString();
                objBEL.username = dr.GetValue(6).ToString();
                objBEL.password = dr.GetValue(7).ToString();
                objBEL.qualification = dr.GetValue(9).ToString();
                objBEL.designation = dr.GetValue(10).ToString();
                objBEL.dob = dr.GetValue(8).ToString();
                objBEL.exp = dr.GetValue(13).ToString();
                objBEL.dojoin = dr.GetValue(14).ToString();
                objBEL.marritalstatus = dr.GetValue(15).ToString();
                objBEL.bloodgroup = dr.GetValue(17).ToString();
            }
            return objBEL;
        }

        public string EditStudUsername(string user, StudentBEL objBEL)
        {
            string s;
            com = new SqlCommand("Update Student Set Username='" + user + "' where StudentID='" + HttpContext.Current.Session["user"] + "' AND ClientId='" + HttpContext.Current.Session["Client"] + "'", cnn);
            if (com.ExecuteNonQuery() > 0)
                s = "Success";
            else
                s = "Fail";
            com = new SqlCommand("Update Login Set UserName='" + user + "' where ID='" + HttpContext.Current.Session["UserID"] + "'",cnn);
            if (com.ExecuteNonQuery() > 0)
                s = "Success";
            else
                s = "Fail";
            return s;
        }
        public string EditNonTeacherUsername(string user, NonTeacherBEL objBEL)
        {
            string s;
            com = new SqlCommand("Update NonTeachingStaff Set Username='" + user + "' where ID='" + HttpContext.Current.Session["user"] + "' AND ClientId='" + HttpContext.Current.Session["Client"] + "'", cnn);
            if (com.ExecuteNonQuery() > 0)
                s = "Success";
            else
                s = "Fail";
            com = new SqlCommand("Update Login Set UserName='" + user + "' where ID='" + HttpContext.Current.Session["UserID"] + "'", cnn);
            if (com.ExecuteNonQuery() > 0)
                s = "Success";
            else
                s = "Fail";
            return s;
        }
        public string EditTeacherUsername(string user, TeacherBEL objBEL)
        {
            string s;
            com = new SqlCommand("Update TeachingStaff Set Username='" + user + "' where Id='" + HttpContext.Current.Session["user"] + "' AND ClientId='" + HttpContext.Current.Session["Client"] + "'", cnn);
            if (com.ExecuteNonQuery() > 0)
                s = "Success";
            else
                s = "Fail";
            com = new SqlCommand("Update Login Set UserName='" + user + "' where ID='" + HttpContext.Current.Session["UserID"] + "'", cnn);
            if (com.ExecuteNonQuery() > 0)
                s = "Success";
            else
                s = "Fail";
            return s;
        }
        public string EditStudPassword(string pass, StudentBEL objBEL)
        {
            string s;
            com = new SqlCommand("Update Student Set Password='" + pass + "' where StudentID='" + HttpContext.Current.Session["user"] + "' AND ClientId='" + HttpContext.Current.Session["Client"] + "'", cnn);
            if (com.ExecuteNonQuery() > 0)
                s = "Success";
            else
                s = "Fail";
            LoginDAL objDAL = new LoginDAL();
            string passPhrase = "Pas5@se";        // can be any string
            string saltValue = "@1Value";        // can be any string
            string hashAlgorithm = "SHA1";             // can be "MD5"
            int passwordIterations = 2;                  // can be any number
            string initVector = "@1B2c3D4e5F6g7H8"; // must be 16 bytes
            int keySize = 256;

            string password = objDAL.Encrypt(pass, passPhrase, saltValue, hashAlgorithm, passwordIterations, initVector, keySize);
            com = new SqlCommand("Update Login set Password='" + password + "' where ID='" + HttpContext.Current.Session["UserID"] + "'",cnn);
            if (com.ExecuteNonQuery() > 0)
                s = "Success";
            else
                s = "Fail";
            return s;
        }
        public string EditNonTeacherPassword(string pass, NonTeacherBEL objBEL)
        {
            string s;
            com = new SqlCommand("Update NonTeachingStaff Set password='" + pass + "' where ID='" + HttpContext.Current.Session["user"] + "' AND ClientId='" + HttpContext.Current.Session["Client"] + "'", cnn);
            if (com.ExecuteNonQuery() > 0)
                s = "Success";
            else
                s = "Fail";
            LoginDAL objDAL = new LoginDAL();
            string passPhrase = "Pas5@se";        // can be any string
            string saltValue = "@1Value";        // can be any string
            string hashAlgorithm = "SHA1";             // can be "MD5"
            int passwordIterations = 2;                  // can be any number
            string initVector = "@1B2c3D4e5F6g7H8"; // must be 16 bytes
            int keySize = 256;

            string password = objDAL.Encrypt(pass, passPhrase, saltValue, hashAlgorithm, passwordIterations, initVector, keySize);
            com = new SqlCommand("Update Login set Password='" + password + "' where ID='" + HttpContext.Current.Session["UserID"] + "'", cnn);
            if (com.ExecuteNonQuery() > 0)
                s = "Success";
            else
                s = "Fail";
            return s;
        }
        public string EditTeacherPassword(string pass, TeacherBEL objBEL)
        {
            string s;
            com = new SqlCommand("Update TeachingStaff Set password='" + pass + "' where Id='" + HttpContext.Current.Session["user"] + "' AND ClientId='" + HttpContext.Current.Session["Client"] + "'", cnn);
            if (com.ExecuteNonQuery() > 0)
                s = "Success";
            else
                s = "Fail";
            LoginDAL objDAL = new LoginDAL();
            string passPhrase = "Pas5@se";        // can be any string
            string saltValue = "@1Value";        // can be any string
            string hashAlgorithm = "SHA1";             // can be "MD5"
            int passwordIterations = 2;                  // can be any number
            string initVector = "@1B2c3D4e5F6g7H8"; // must be 16 bytes
            int keySize = 256;

            string password = objDAL.Encrypt(pass, passPhrase, saltValue, hashAlgorithm, passwordIterations, initVector, keySize);
            com = new SqlCommand("Update Login set Password='" + password + "' where ID='" + HttpContext.Current.Session["UserID"] + "'", cnn);
            if (com.ExecuteNonQuery() > 0)
                s = "Success";
            else
                s = "Fail";
            return s;
        }
    }
    public class GetInfo
    {
        SqlCommand com;
        SqlConnection cnn;
        SqlDataReader dr;

        public GetInfo()
        {
            cnn = new SqlConnection(WebConfigurationManager.ConnectionStrings["SaaSBasedCollegeManagement"].ConnectionString);
            cnn.Open();
        }
     public examfeesBEL GetExamData()
        {
            int s=0;
            com = new SqlCommand("Select * from Student where Username='" + HttpContext.Current.Session["user"] + "' And ClientId='" + HttpContext.Current.Session["Client"] + "'",cnn);
            dr=com.ExecuteReader();
            if(dr.Read())
                s = Convert.ToInt16(dr.GetValue(0).ToString());
            dr.Close();
            com = new SqlCommand("Select * from ExamFees where sid='" + s + "' And ClientId='" + HttpContext.Current.Session["Client"] + "'",cnn);
            examfeesBEL objBEL = new examfeesBEL();
            
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                objBEL.examtype = dr.GetValue(5).ToString();
                objBEL.examname = dr.GetValue(7).ToString();
                objBEL.feespaid =Convert.ToInt16(dr.GetValue(8).ToString());
                objBEL.totalfees=Convert.ToInt16(dr.GetValue(9).ToString());
                objBEL.dopayment = dr.GetValue(13).ToString();
                objBEL.cash =Convert.ToBoolean(dr.GetValue(10).ToString());
                objBEL.dd =Convert.ToBoolean(dr.GetValue(11).ToString());
                objBEL.checkno =Convert.ToInt16(dr.GetValue(12).ToString());
                
            }
            return objBEL;
        }
     public addBEL GetHostelData()
     {
         int s = 0;
         com = new SqlCommand("Select * from Student where Username='" + HttpContext.Current.Session["user"] + "' And ClientId='" + HttpContext.Current.Session["Client"] + "'", cnn);
         dr = com.ExecuteReader();
         if (dr.Read())
             s = Convert.ToInt16(dr.GetValue(0).ToString());
         dr.Close();
         com = new SqlCommand("Select * from HostelAdmissionTable where sid='" + s + "' And ClientId='" + HttpContext.Current.Session["Client"] + "'", cnn);
         addBEL objBEL = new addBEL();

         dr = com.ExecuteReader();
         if (dr.Read())
         {
             objBEL.feespaid = dr.GetValue(2).ToString();
             objBEL.totalfees = dr.GetValue(5).ToString();
             objBEL.localg = dr.GetValue(3).ToString();
             objBEL.vechowned = dr.GetValue(4).ToString();
             objBEL.lgname = dr.GetValue(6).ToString();
             objBEL.lgno = dr.GetValue(7).ToString();
             objBEL.lgocc = dr.GetValue(8).ToString();
             objBEL.lgemail = dr.GetValue(9).ToString();
             objBEL.lgaddr = dr.GetValue(10).ToString();
             objBEL.vechno = dr.GetValue(11).ToString();

         }
         return objBEL;
     }
    }
}
