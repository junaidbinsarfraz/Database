using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Database.Utility.Utilities
{
    public class StringUtil
    {
        public static string GenerateRandomString(int length)
        {
            string alphabets = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            string small_alphabets = "abcdefghijklmnopqrstuvwxyz";
            string numbers = "1234567890";

            string characters = alphabets + small_alphabets + numbers;

            string randomString = string.Empty;

            for (int i = 0; i < length; i++)
            {
                string character = string.Empty;
                do
                {
                    int index = new Random().Next(0, characters.Length);
                    character = characters.ToCharArray()[index].ToString();
                } while (randomString.IndexOf(character) != -1);
                randomString += character;
            }

            return randomString;
        }

        
    }
}