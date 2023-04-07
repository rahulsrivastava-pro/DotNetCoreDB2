using IBM.Data.Db2;


// See https://aka.ms/new-console-template for more information
Console.WriteLine("Hello, World!");

/*
try
{


    DB2Command MyDB2Command = null;
    // Use the dsn alias that you defined in db2dsdriver.cfg with the db2cli writecfg command in step 1.
    String MyDb2ConnectionString = "server=localhost;database=blog;uid=db2admin;pwd=welcome123;";
    DB2Connection MyDb2Connection = new DB2Connection(MyDb2ConnectionString);
    MyDb2Connection.Open();
    MyDB2Command = MyDb2Connection.CreateCommand();
    MyDB2Command.CommandText = "SELECT content, title from BlogPost";
    Console.WriteLine(MyDB2Command.CommandText);

    DB2DataReader MyDb2DataReader = null;
    MyDb2DataReader = MyDB2Command.ExecuteReader();
    Console.WriteLine("BRANCH\tCITY");
    Console.WriteLine("============================");
    while (MyDb2DataReader.Read())
    {
        for (int i = 0; i <= 1; i++)
        {
            try
            {
                if (MyDb2DataReader.IsDBNull(i))
                {
                    Console.Write("NULL");
                }
                else
                {
                    Console.Write(MyDb2DataReader.GetString(i));
                }
            }
            catch (Exception e)
            {
                Console.Write(e.ToString());
            }
            Console.Write("\t");

        }
        Console.WriteLine("");
    }
    MyDb2DataReader.Close();
    MyDB2Command.Dispose();
    MyDb2Connection.Close();
}
catch(Exception e)
{

    Console.WriteLine($"\tIn the log routine. Caught {e.GetType()}");
    Console.WriteLine($"\tMessage: {e.Message}");

}

*/


using (DB2Connection conn = new DB2Connection())
{
    // Create the connectionString  
    // Trusted_Connection is used to denote the connection uses Windows Authentication  
   // conn.ConnectionString = "server=localhost;database=blog;uid=db2admin;pwd=welcome123;";

    conn.ConnectionString = "server=localhost:50000;uid=db2admin;pwd=welcome123;database=blog;";

    conn.Open();
    // Create the command  
    DB2Command command = new DB2Command("SELECT content, title from BlogPost");
    //DB2Command command = new DB2Command("SELECT * FROM TableName WHERE FirstColumn = @0", conn);
    // Add the parameters.  
    // command.Parameters.Add(new SqlParameter("0", 1));

    /* Get the rows and display on the screen!  
     * This section of the code has the basic code 
     * that will display the content from the Database Table 
     * on the screen using a SqlDataReader. */

    using (DB2DataReader reader = command.ExecuteReader())
    {
        Console.WriteLine("FirstColumn\tSecond Column\t");
        while (reader.Read())
        {
            Console.WriteLine(String.Format("{0} \t | {1}",
            reader[0], reader[1]));
        }
    }
    Console.WriteLine("Data displayed! Now press enter to move to the next section!");
    Console.ReadLine();
    Console.Clear();

    /* Above code was used to display the data from the Database table! 
     * This following section explains the key features to use  
     * to add the data to the table. This is an example of another 
     * SQL Command (INSERT INTO), this will teach the usage of parameters and connection.*/

}
