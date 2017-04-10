﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace Server
{
    class Program
    {
        static void Main(string[] args)
        {
            int port = Int32.Parse(ConfigurationManager.AppSettings["Server_Port"]);
            
            Server s = new Server(port, new ClientHandler());
            s.Start();
            Console.WriteLine("Press any key to kill server");
            Console.ReadLine();
            s.Stop();
        }
    }
}