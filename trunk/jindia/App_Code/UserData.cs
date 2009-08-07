using System;
namespace JayahoIndia
{
    public class UserData
    {
        private string _userId;
        private string _userName;
        private string _password;
        private string _name;
        private string _occupation;
        private string _address;
        private string _city;
        private string _state;
        private string _district;
        private string _pincode;
        private string _mobileNo;
        private string _emailId;
        private string _panNumber;
        private string _bankAccountNumber;
        private string _bankName;
        private string _bankBranch;
        private string _bankPayCardNumber;
        private string _nomineeName;
        private string _nomineeRelation;
        private string _courierNumber;
        private string _courierName;
        private DateTime _dispatchDate;
        private string _dispatchStatus;
        private string _secretQuestion;
        private string _secretAnswer;
        private DateTime _dateCreated;

        public string UserId
        {
            get { return _userId; }
            set { _userId = value; }
        }

        public string UserName
        {
            get { return _userName; }
            set { _userName = value; }
        }

        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }

        public string Occupation
        {
            get { return _occupation; }
            set { _occupation = value; }
        }

        public string Address
        {
            get { return _address; }
            set { _address = value; }
        }

        public string City
        {
            get { return _city; }
            set { _city = value; }
        }

        public string State
        {
            get { return _state; }
            set { _state = value; }
        }

        public string District
        {
            get { return _district; }
            set { _district = value; }
        }

        public string Pincode
        {
            get { return _pincode; }
            set { _pincode = value; }
        }

        public string MobileNo
        {
            get { return _mobileNo; }
            set { _mobileNo = value; }
        }

        public string EmailId
        {
            get { return _emailId; }
            set { _emailId = value; }
        }

        public string PanNumber
        {
            get { return _panNumber; }
            set { _panNumber = value; }
        }

        public string BankAccountNumber
        {
            get { return _bankAccountNumber; }
            set { _bankAccountNumber = value; }
        }

        public string BankName
        {
            get { return _bankName; }
            set { _bankName = value; }
        }

        public string BankBranch
        {
            get { return _bankBranch; }
            set { _bankBranch = value; }
        }

        public string BankPayCardNumber
        {
            get { return _bankPayCardNumber; }
            set { _bankPayCardNumber = value; }
        }

        public string NomineeName
        {
            get { return _nomineeName; }
            set { _nomineeName = value; }
        }

        public string NomineeRelation
        {
            get { return _nomineeRelation; }
            set { _nomineeRelation = value; }
        }

        public string CourierNumber
        {
            get { return _courierNumber; }
            set { _courierNumber = value; }
        }

        public string CourierName
        {
            get { return _courierName; }
            set { _courierName = value; }
        }

        public DateTime DispatchDate
        {
            get { return _dispatchDate; }
            set { _dispatchDate = value; }
        }

        public string DispatchStatus
        {
            get { return _dispatchStatus; }
            set { _dispatchStatus = value; }
        }

        public string SecretQuestion
        {
            get { return _secretQuestion; }
            set { _secretQuestion = value; }
        }

        public string SecretAnswer
        {
            get { return _secretAnswer; }
            set { _secretAnswer = value; }
        }

        public DateTime DateCreated
        {
            get { return _dateCreated; }
            set { _dateCreated = value; }
        }

        public string Password
        {
            get { return _password; }
            set { _password = value; }
        }


    }

}