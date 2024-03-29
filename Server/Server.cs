﻿using Server.Model;
using Server.View;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;

namespace Server
{
    /// <summary>
    /// A Class for server side communication. Starts server. Delegates client handling to view.
    /// </summary>
    class Server
    {
        private string ip;
        private int port;
        private TcpListener listener;
        private IGameData data;
        private bool stop;

        /// <summary>
        /// Ctor
        /// </summary>
        /// <param name="port">Server's port through which clients will connect</param>
        /// <param name="ch">View class that will handle clients</param>
        public Server(string ip, int port)
        {
            this.ip = ip;
            this.port = port;
            //initialize game's content class (maze list, solutions, game romms..)
            this.data = new GameData();
            stop = false;
        }

        /// <summary>
        /// Initializes Server - listents to incoming connections.
        /// Upon client communication - delegates client handling to IClientHandler.
        /// </summary>
        public void Start()
        {
            IPEndPoint ep = new IPEndPoint(IPAddress.Parse(ip), port);
            listener = new TcpListener(ep);

            listener.Start();
            Console.WriteLine("Waiting for connections...");
            Task task = new Task(() => {
                while (!stop)
                {
                    try
                    {
                        TcpClient client = listener.AcceptTcpClient();
                        Console.WriteLine("Got new connection");
                        //Init controller and model for new specific client
                        IController controller = new Controller();
                        IModel model = new MazeModel(controller, this.data);
                        IClientHandler ch = ClientHandlerFactory.GenerateClientHandler(client);
                        controller.SetModel(model);
                        controller.SetView(ch);
                        //delegate client handling
                        ch.HandleClient(controller);
                    }
                    catch (SocketException ex)
                    {
                        Console.WriteLine("Error In Server Start\n" + ex);
                        break;
                    }
                }
                Console.WriteLine("Server stopped");
            });
            task.Start();
        }

        /// <summary>
        /// Terminates Server - stops listenning to incoming connection's
        /// </summary>
        public void Stop()
        {
            listener.Stop();
            stop = true;
        }

    }


}
