namespace JayahoIndia
{
    public class UserData
    {
        public UserData()
        {
        }

        private string _userId;
        private string _userName;
        private string _password;
        private string _address;
        private string _bankAccountNumber;
        private string _bankPayCardNumber;
        private string _panNumber;
        private string _state;
        private string _pincode;
        private string _place;
        private string _secretQuestion;
        private string _secretAnswer;
        private string _name;

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

        public string Password
        {
            get { return _password; }
            set { _password = value; }
        }

        public string Address
        {
            get { return _address; }
            set { _address = value; }
        }

        public string BankAccountNumber
        {
            get { return _bankAccountNumber; }
            set { _bankAccountNumber = value; }
        }

        public string BankPayCardNumber
        {
            get { return _bankPayCardNumber; }
            set { _bankPayCardNumber = value; }
        }

        public string PanNumber
        {
            get { return _panNumber; }
            set { _panNumber = value; }
        }

        public string State
        {
            get { return _state; }
            set { _state = value; }
        }

        public string Pincode
        {
            get { return _pincode; }
            set { _pincode = value; }
        }

        public string Place
        {
            get { return _place; }
            set { _place = value; }
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

        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }
    }
}