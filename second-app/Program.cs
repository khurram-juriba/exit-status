using System;
using System.Threading;

namespace second_app
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int wait = 5;
            int code = 0;

            int i;
            
            if (args.Length > 0 && int.TryParse(args[0], out i))
                wait = i;

            if (args.Length > 1 && int.TryParse(args[1], out i))
                code = i;

            Thread.Sleep(1000 * wait);
            Environment.Exit(code);
        }
    }
}
