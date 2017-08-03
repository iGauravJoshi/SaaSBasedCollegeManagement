using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BEL
{
    public class addBEL
    {
        private string _course, _branch, _year, _name, _feespaid, _totalfees, _localg, _vechowned, _lgname, _lgno, _lgocc, _lgemail, _lgaddr, _vechno;

        public string course
        {
            get { return _course; }
            set { _course = value; }
        }
        public string branch
        {
            get { return _branch; }
            set { _branch = value; }
        }
        public string year
        {
            get { return _year; }
            set { _year = value; }
        }
        public string name
        {
            get { return _name; }
            set { _name = value; }
        }

        public string feespaid
        {
            get { return _feespaid; }
            set { _feespaid = value; }
        }

        public string totalfees
        {
            get { return _totalfees; }
            set { _totalfees = value; }
        }

        public string localg
        {
            get { return _localg; }
            set { _localg = value; }
        }


        public string vechowned
        {
            get { return _vechowned; }
            set { _vechowned = value; }
        }

        public string lgname
        {
            get { return _lgname; }
            set { _lgname = value; }
        }

        public string lgno
        {
            get { return _lgno; }
            set { _lgno = value; }
        }

        public string lgocc
        {
            get { return _lgocc; }
            set { _lgocc = value; }
        }

        public string lgemail
        {
            get { return _lgemail; }
            set { _lgemail = value; }
        }

        public string lgaddr
        {
            get { return _lgaddr; }
            set { _lgaddr = value; }
        }

        public string vechno
        {
            get { return _vechno; }
            set { _vechno = value; }
        }

    }
    public class admissionFeesBEL
    {
        private string _Image, _dateofPayment, _Chequeno, _course, _branch, _year, _name;
        private Boolean _cash, _DD;
        private int _rollnumber, _feespaid, _totalfees;
        public string Image
        {
            get { return _Image; }
            set { _Image = value; }
        }
        public int feespaid
        {
            get { return _feespaid; }
            set { _feespaid = value; }
        }
        public int totalfees
        {
            get { return _totalfees; }
            set { _totalfees = value; }
        }
        public string dateofpayment
        {
            get { return _dateofPayment; }
            set { _dateofPayment = value; }
        }
        public Boolean cash
        {
            get { return _cash; }
            set { _cash = value; }
        }
        public Boolean DD
        {
            get { return _DD; }
            set { _DD = value; }
        }
        public string Chequeno
        {
            get { return _Chequeno; }
            set { _Chequeno = value; }
        }
        public string course
        {
            get { return _course; }
            set { _course = value; }
        }
        public string branch
        {
            get { return _branch; }
            set { _branch = value; }
        }
        public string year
        {
            get { return _year; }
            set { _year = value; }
        }
        public string name
        {
            get { return _name; }
            set { _name = value; }
        }
        public int rollnumber
        {
            get { return _rollnumber; }
            set { _rollnumber = value; }
        }

    }
    public class AttendBEL
    {
        private string _course, _branch, _year, _rollno, _subject, _date, _teacher, _ispresent;

        public string course
        {
            get { return _course; }
            set { _course = value; }
        }
        public string branch
        {
            get { return _branch; }
            set { _branch = value; }
        }

        public string year
        {
            get { return _year; }
            set { _year = value; }
        }

        public string rollno
        {
            get { return _rollno; }
            set { _rollno = value; }
        }

        public string subject
        {
            get { return _subject; }
            set { _subject = value; }
        }

        public string date
        {
            get { return _date; }
            set { _date = value; }
        }

        public string teacher
        {
            get { return _teacher; }
            set { _teacher = value; }
        }

        public string ispresent
        {
            get { return _ispresent; }
            set { _ispresent = value; }
        }
    }
    public class clgdetailsBEL
    {
        private string _ID, _studentID, _styear, _branch, _lastexam, _yearofexam, _ispass;

        public string ID
        {
            get { return _ID; }
            set { _ID = value; }
        }

        public string studentID
        {
            get { return _studentID; }
            set { _studentID = value; }
        }

        public string styear
        {
            get { return _styear; }
            set { _styear = value; }
        }

        public string branch
        {
            get { return _branch; }
            set { _branch = value; }
        }


        public string ispass
        {
            get { return _ispass; }
            set { _ispass = value; }
        }


        public string yearofexam
        {
            get { return _yearofexam; }
            set { _yearofexam = value; }
        }
        public string lastexam
        {
            get { return _lastexam; }
            set { _lastexam = value; }
        }

    }
    public class ExamBEL
    {


        private string _etype, _date, _course, _branch, _sub, _time, _duration, _m, _max, _end;
        private string _year, _name;
        private int _dur;
        public string end
        {
            get { return _end; }
            set { _end = value; }
        }


        public string etype
        {
            get { return _etype; }
            set { _etype = value; }
        }

        public string name
        {
            get { return _name; }
            set { _name = value; }
        }

        public int dur
        {
            get { return _dur; }
            set { _dur = value; }
        }

        public string date
        {
            get { return _date; }
            set { _date = value; }
        }

        public string course
        {
            get { return _course; }
            set { _course = value; }
        }

        public string branch
        {
            get { return _branch; }
            set { _branch = value; }
        }

        public string sub
        {
            get { return _sub; }
            set { _sub = value; }
        }

        public string time
        {
            get { return _time; }
            set { _time = value; }
        }

        public string duration
        {
            get { return _duration; }
            set { _duration = value; }
        }

        public string m
        {
            get { return _m; }
            set { _m = value; }
        }

        public string max
        {
            get { return _max; }
            set { _max = value; }
        }


        public string year
        {
            get { return _year; }
            set { _year = value; }
        }

    }
    public class examfeesBEL
    {

        private string _name, _course, _year, _branch, _examtype, _examname, _image, _dopayment;
        private int _feespaid, _checkno, _totalfees;
        private Boolean _cash, _dd;

        public string name
        {
            get { return _name; }
            set { _name = value; }
        }
        public string course
        {
            get { return _course; }
            set { _course = value; }
        }
        public string branch
        {
            get { return _branch; }
            set { _branch = value; }
        }
        public string year
        {
            get { return _year; }
            set { _year = value; }
        }
        public string examtype
        {
            get { return _examtype; }
            set { _examtype = value; }
        }
        public string examname
        {
            get { return _examname; }
            set { _examname = value; }
        }
        public int feespaid
        {
            get { return _feespaid; }
            set { _feespaid = value; }
        }
        public int totalfees
        {
            get { return _totalfees; }
            set { _totalfees = value; }
        }
        public string dopayment
        {
            get { return _dopayment; }
            set { _dopayment = value; }
        }
        public string image
        {
            get { return _image; }
            set { _image = value; }
        }
        public Boolean cash
        {
            get { return _cash; }
            set { _cash = value; }
        }
        public Boolean dd
        {
            get { return _dd; }
            set { _dd = value; }
        }
        public int checkno
        {
            get { return _checkno; }
            set { _checkno = value; }
        }



    }
    public class HostelAllocationBEL
    {
        private string _course, _branch, _name, _date, _year;
        private int _rollNo, _roomNo;

        public string date
        {
            get { return _date; }
            set { _date = value; }
        }

        public string course
        {
            get { return _course; }
            set { _course = value; }
        }

        public string branch
        {
            get { return _branch; }
            set { _branch = value; }
        }

        public string year
        {
            get { return _year; }
            set { _year = value; }
        }

        public int rollNo
        {
            get { return _rollNo; }
            set { _rollNo = value; }
        }


        public string name
        {
            get { return _name; }
            set { _name = value; }
        }
        public int roomNo
        {
            get { return _roomNo; }
            set { _roomNo = value; }
        }



    }
    public class LoginBEL
    {
        private string _user, _pass, _uid, _cid,_cname;

        public string user
        {
            get { return _user; }
            set { _user = value; }
        }
        public string uid
        {
            get { return _uid; }
            set { _uid = value; }
        }
        public string cid
        {
            get { return _cid; }
            set { _cid = value; }
        }
        public string cname
        {
            get { return _cname; }
            set { _cname = value; }
        }
        public string pass
        {
            get { return _pass; }
            set { _pass = value; }
        }
    }
    public class MasterBEL
    {
        private string _state, _city, _branch, _course, _subject, _designation, _messRule, _examType, _feedbackCategory;
        private string _year;
        private int _dur;

        public int dur
        {
            get { return _dur; }
            set { _dur = value; }
        }

        public string state
        {
            get { return _state; }
            set { _state = value; }
        }

        public string city
        {
            get { return _city; }
            set { _city = value; }
        }
        public string year
        {
            get { return _year; }
            set { _year = value; }
        }
        public string branch
        {
            get { return _branch; }
            set { _branch = value; }
        }
        public string course
        {
            get { return _course; }
            set { _course = value; }
        }
        public string subject
        {
            get { return _subject; }
            set { _subject = value; }
        }
        public string designation
        {
            get { return _designation; }
            set { _designation = value; }
        }
        public string messRule
        {
            get { return _messRule; }
            set { _messRule = value; }
        }
        public string examType
        {
            get { return _examType; }
            set { _examType = value; }
        }
        public string feedbackCategory
        {
            get { return _feedbackCategory; }
            set { _feedbackCategory = value; }
        }
    }
    public class menuBEL
    {
        private string _date, _menuitem;

        public string date
        {
            get { return _date; }
            set { _date = value; }
        }

        public string menuitem
        {
            get { return _menuitem; }
            set { _menuitem = value; }
        }

    }
    public class NonTeacherBEL
    {
        private string _fname, _lname, _mname, _gender, _emailid, _bloodgroup, _dob, _qualification, _collegename, _addc;
        private string _peraddress, _exp, _dojoin, _designation, _marritalstatus, _username, _password, _retypepass;
        private string _contnumber;
        private Byte[] _img;

        public string fname
        {
            get { return _fname; }
            set { _fname = value; }
        }
        public Byte[] img
        {
            get { return _img; }
            set { _img = value; }
        }
        public string mname
        {
            get { return _mname; }
            set { _mname = value; }
        }

        public string lname
        {
            get { return _lname; }
            set { _lname = value; }
        }

        public string gender
        {
            get { return _gender; }
            set { _gender = value; }
        }

        public string contnumber
        {
            get { return _contnumber; }
            set { _contnumber = value; }
        }

        public string emailid
        {
            get { return _emailid; }
            set { _emailid = value; }
        }

        public string bloodgroup
        {
            get { return _bloodgroup; }
            set { _bloodgroup = value; }
        }
        public string dob
        {
            get { return _dob; }
            set { _dob = value; }
        }
        public string qualification
        {
            get { return _qualification; }
            set { _qualification = value; }
        }
        public string collegename
        {
            get { return _collegename; }
            set { _collegename = value; }
        }
        public string addcorrespondance
        {
            get { return _addc; }
            set { _addc = value; }
        }
        public string peraddress
        {
            get { return _peraddress; }
            set { _peraddress = value; }
        }
        public string exp
        {
            get { return _exp; }
            set { _exp = value; }
        }
        public string dojoin
        {
            get { return _dojoin; }
            set { _dojoin = value; }
        }
        public string designation
        {
            get { return _designation; }
            set { _designation = value; }
        }
        public string marritalstatus
        {
            get { return _marritalstatus; }
            set { _marritalstatus = value; }
        }
        public string username
        {
            get { return _username; }
            set { _username = value; }
        }
        public string password
        {
            get { return _password; }
            set { _password = value; }
        }
        public string retypepass
        {
            get { return _retypepass; }
            set { _retypepass = value; }
        }


    }
    public class StudentBEL
    {

        private string _fname, _mname, _lname, _gender, _emailId, _bloodGrp, _dob, _moName, _faName, _faOcc, _addOfCo, _pAdd, _caste, _bPlace, _branch, _usernm, _pass, _course, _photo;
        private string _contactNo, _faCoNo, _year;
        private string _yrOfAdmit, _rollno, _city, _state;
        private Byte[] _img;

        public Byte[] img
        {
            get { return _img; }
            set { _img = value; }
        }
        public string state
        {
            get { return _state; }
            set { _state = value; }
        }
        public string city
        {
            get { return _city; }
            set { _city = value; }
        }
        public string fname
        {
            get { return _fname; }
            set { _fname = value; }
        }

        public string mname
        {
            get { return _mname; }
            set { _mname = value; }
        }
        public string course
        {
            get { return _course; }
            set { _course = value; }
        }

        public string lname
        {
            get { return _lname; }
            set { _lname = value; }
        }

        public string gender
        {
            get { return _gender; }
            set { _gender = value; }
        }

        public string contactNo
        {
            get { return _contactNo; }
            set { _contactNo = value; }
        }

        public string emailId
        {
            get { return _emailId; }
            set { _emailId = value; }
        }

        public string bloodGrp
        {
            get { return _bloodGrp; }
            set { _bloodGrp = value; }
        }
        public string dob
        {
            get { return _dob; }
            set { _dob = value; }
        }

        public string moName
        {
            get { return _moName; }
            set { _moName = value; }
        }

        public string faName
        {
            get { return _faName; }
            set { _faName = value; }
        }
        public string faOcc
        {
            get { return _faOcc; }
            set { _faOcc = value; }
        }

        public string faCoNo
        {
            get { return _faCoNo; }
            set { _faCoNo = value; }
        }

        public string addOfCo
        {
            get { return _addOfCo; }
            set { _addOfCo = value; }
        }

        public string pAdd
        {
            get { return _pAdd; }
            set { _pAdd = value; }
        }
        public string caste
        {
            get { return _caste; }
            set { _caste = value; }
        }

        public string branch
        {
            get { return _branch; }
            set { _branch = value; }
        }


        public string year
        {
            get { return _year; }
            set { _year = value; }
        }

        public string yrOfAdmit
        {
            get { return _yrOfAdmit; }
            set { _yrOfAdmit = value; }
        }
        public string rollno
        {
            get { return _rollno; }
            set { _rollno = value; }
        }

        public string usernm
        {
            get { return _usernm; }
            set { _usernm = value; }
        }

        public string pass
        {
            get { return _pass; }
            set { _pass = value; }
        }

        public string bPlace
        {
            get { return _bPlace; }
            set { _bPlace = value; }
        }
        public string photo
        {
            get { return _photo; }
            set { _photo = value; }
        }
    }
    public class StudentDetailsBEL
    {
        private string _subject, _testname, _description, _course, _branch, _year, _date;
        private int _maximummarks;
        public string subject
        {
            get { return _subject; }
            set { _subject = value; }
        }
        public string testname
        {
            get { return _testname; }
            set { _testname = value; }
        }
        public string description
        {
            get { return _description; }
            set { _description = value; }
        }
        public string course
        {
            get { return _course; }
            set { _course = value; }
        }
        public string branch
        {
            get { return _branch; }
            set { _branch = value; }
        }
        public string year
        {
            get { return _year; }
            set { _year = value; }
        }
        public string date
        {
            get { return _date; }
            set { _date = value; }
        }
        public int maximummarks
        {
            get { return _maximummarks; }
            set { _maximummarks = value; }
        }
    }
    public class StudentOfficeDetailsBEL
    {
        private string _course, _branch, _year, _name, _remarks, _duedate;
        private Boolean _isapproved;
        private int _rollnumber, _totalfees, _feespaid;
        public string course
        {
            get { return _course; }
            set { _course = value; }
        }
        public string branch
        {
            get { return _branch; }
            set { _branch = value; }
        }
        public string year
        {
            get { return _year; }
            set { _year = value; }
        }
        public string name
        {
            get { return _name; }
            set { _name = value; }
        }
        public string remarks
        {
            get { return _remarks; }
            set { _remarks = value; }
        }
        public string duedate
        {
            get { return _duedate; }
            set { _duedate = value; }
        }
        public int totalfees
        {
            get { return _totalfees; }
            set { _totalfees = value; }
        }
        public int feespaid
        {
            get { return _feespaid; }
            set { _feespaid = value; }
        }
        public int rollnumber
        {
            get { return _rollnumber; }
            set { _rollnumber = value; }
        }
        public Boolean isapproved
        {
            get { return _isapproved; }
            set { _isapproved = value; }
        }
    }
    public class stuwork
    {
        private string _fbCate, _name, _emailId, _remark;

        public string fbCate
        {
            get { return _fbCate; }
            set { _fbCate = value; }
        }

        public string name
        {
            get { return _name; }
            set { _name = value; }
        }

        public string emailId
        {
            get { return _emailId; }
            set { _emailId = value; }
        }

        public string remark
        {
            get { return _remark; }
            set { _remark = value; }
        }




    }
    public class subjectFacultyDetailsBEL
    {
        private string _course, _branch, _subject, _teacher;
        private int _year;


        public string course
        {
            get { return _course; }
            set { _course = value; }
        }

        public string branch
        {
            get { return _branch; }
            set { _branch = value; }
        }

        public int year
        {
            get { return _year; }
            set { _year = value; }
        }

        public string subject
        {
            get { return _subject; }
            set { _subject = value; }
        }


        public string teacher
        {
            get { return _teacher; }
            set { _teacher = value; }
        }

    }
    public class TeacherBEL
    {

        private string _fname, _lname, _mname, _gender, _dob, _email, _bgrp, _gbranch, _gclg, _psub, _pclg, _aoi, _add, _doj, _exp, _desig, _mstatus, _uname, _pass, _photo, _did;
        private string _cno, _gyear, _pyear, _state, _city,_status,_salary;
        private Byte[] _img;

        public string status
        {
            get { return _status; }
            set { _status = value; }
        }
        public string salary
        {
            get { return _salary; }
            set { _salary = value; }
        }
        public string did
        {
            get { return _did; }
            set { _did = value; }
        }
        public string state
        {
            get { return _state; }
            set { _state = value; }
        }
        public string city
        {
            get { return _city; }
            set { _city = value; }
        }
        public string fname
        {
            get { return _fname; }
            set { _fname = value; }
        }

        public Byte[] img
        {
            get { return _img; }
            set { _img = value; }
        }

        public string exp
        {
            get { return _exp; }
            set { _exp = value; }
        }

        public string lname
        {
            get { return _lname; }
            set { _lname = value; }
        }

        public string mname
        {
            get { return _mname; }
            set { _mname = value; }
        }

        public string gender
        {
            get { return _gender; }
            set { _gender = value; }
        }

        public string dob
        {
            get { return _dob; }
            set { _dob = value; }
        }

        public string cno
        {
            get { return _cno; }
            set { _cno = value; }
        }

        public string email
        {
            get { return _email; }
            set { _email = value; }
        }

        public string bgrp
        {
            get { return _bgrp; }
            set { _bgrp = value; }
        }

        public string gclg
        {
            get { return _gclg; }
            set { _gclg = value; }
        }

        public string aoi
        {
            get { return _aoi; }
            set { _aoi = value; }
        }

        public string add
        {
            get { return _add; }
            set { _add = value; }
        }

        public string gbranch
        {
            get { return _gbranch; }
            set { _gbranch = value; }
        }

        public string gyear
        {
            get { return _gyear; }
            set { _gyear = value; }
        }

        public string pclg
        {
            get { return _pclg; }
            set { _pclg = value; }
        }

        public string psub
        {
            get { return _psub; }
            set { _psub = value; }
        }

        public string pyear
        {
            get { return _pyear; }
            set { _pyear = value; }
        }

        public string mstatus
        {
            get { return _mstatus; }
            set { _mstatus = value; }
        }

        public string photo
        {
            get { return _photo; }
            set { _photo = value; }
        }

        public string pass
        {
            get { return _pass; }
            set { _pass = value; }
        }

        public string uname
        {
            get { return _uname; }
            set { _uname = value; }
        }

        public string doj
        {
            get { return _doj; }
            set { _doj = value; }
        }

        public string desig
        {
            get { return _desig; }
            set { _desig = value; }
        }

    }
    public class TestDetailsBEL
    {
        private string _subject, _testname, _description, _course, _branch, _year, _date;
        private int _maximummarks;
        public string subject
        {
            get { return _subject; }
            set { _subject = value; }
        }
        public string testname
        {
            get { return _testname; }
            set { _testname = value; }
        }
        public string description
        {
            get { return _description; }
            set { _description = value; }
        }
        public string course
        {
            get { return _course; }
            set { _course = value; }
        }
        public string branch
        {
            get { return _branch; }
            set { _branch = value; }
        }
        public string year
        {
            get { return _year; }
            set { _year = value; }
        }
        public string date
        {
            get { return _date; }
            set { _date = value; }
        }
        public int maximummarks
        {
            get { return _maximummarks; }
            set { _maximummarks = value; }
        }
    }
    public class ToppersBEL
    {

        private string _course, _branch, _year, _name;
        private int _session, _marks, _perc, _rank;

        public string course
        {
            get { return _course; }
            set { _course = value; }
        }
        public string branch
        {
            get { return _branch; }
            set { _branch = value; }
        }
        public string year
        {
            get { return _year; }
            set { _year = value; }
        }
        public string name
        {
            get { return _name; }
            set { _name = value; }
        }

        public int session
        {
            get { return _session; }
            set { _session = value; }
        }
        public int marks
        {
            get { return _marks; }
            set { _marks = value; }

        }
        public int perc
        {
            get { return _perc; }
            set { _perc = value; }
        }
        public int rank
        {
            get { return _rank; }
            set { _rank = value; }
        }
    }
    public class HostelAttendBEL
    {
        private string _date, _ispresent, _rollno;

        public string date
        {
            get { return _date; }
            set { _date = value; }
        }
        public string rollno
        {
            get { return _rollno; }
            set { _rollno = value; }
        }


        public string ispresent
        {
            get { return _ispresent; }
            set { _ispresent = value; }
        }
    }
    public class ClientBEL
    {
        private string _user, _pass, _name, _cno,_add,_orgname,_email;

        public string user
        {
            get { return _user; }
            set { _user = value; }
        }
        public string name
        {
            get { return _name; }
            set { _name = value; }
        }
        public string cno
        {
            get { return _cno; }
            set { _cno = value; }
        }
        public string pass
        {
            get { return _pass; }
            set { _pass = value; }
        }
        public string add
        {
            get { return _add; }
            set { _add = value; }
        }
        public string orgname
        {
            get { return _orgname; }
            set { _orgname = value; }
        }
        public string email
        {
            get { return _email; }
            set { _email = value; }
        }
    }
}
