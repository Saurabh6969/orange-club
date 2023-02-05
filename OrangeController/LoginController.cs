using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
using Entity;
using OrangeBL;
using System.Web;


namespace OrangeController
{
    public class LoginController
    {
        public Login login(string username, string password)
        {
            Login e = new Login();
            e.Username = username;
            e.Password = getHash(password);
            BL bl = new BL();
            return bl.validate(e);
        }

        public string getHash(string pwd)
        {
            string hash;
            byte[] result;
            MD5 md5 = MD5.Create();
            result =md5.ComputeHash(ASCIIEncoding.ASCII.GetBytes(pwd));
            hash = Convert.ToBase64String(result);
            return hash;
        }

        public void lockAccount(string username)
        {
            Login e = new Login();
            e.Username = username;
            BL bl = new BL();
            bl.lockAccount(e);
            
        }


        
    }
}
