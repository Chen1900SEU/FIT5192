using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class Concert : System.Web.UI.Page
{
    void Page_PreInit(Object sender, EventArgs e)
    {
        if (Session["themename"] == null || Session["themename"].ToString().Equals(""))
        {
            Page.Theme = "Default";
        }
        else
        {
            Page.Theme = Session["themename"].ToString();
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        GetEventDates();
        displayEvent.Text = GetEventDetails(e);
    }

    protected void GetEventDates()
    {

        string strConnection = dsEvent.ConnectionString;
        using (OleDbConnection objConnection = new OleDbConnection(strConnection))
        {
            objConnection.Open();
            OleDbCommand sqlcmd = new OleDbCommand(@"select EventDate from Events", objConnection);
            OleDbDataReader reader = sqlcmd.ExecuteReader();
            LinkedList<DateTime> selday = new LinkedList<DateTime>();
            while (reader.Read())
            {
                string time = reader["EventDate"].ToString();
                DateTime current = Convert.ToDateTime(time);
                selday.AddFirst(current);
                Calendar1.SelectedDates.Add(current);
            }
            Session.Add("eventdate", selday);
            reader.Close();
        }
    }

    protected string GetEventDetails(EventArgs e)
    {
        string eventDetails = "";
        string nextDay = Calendar1.SelectedDate.AddDays(1).ToShortDateString();
        string selectedDay = Calendar1.SelectedDate.ToShortDateString();
        dsEvent.SelectCommand =
          "SELECT [EventDate] ,[EventDescription]FROM [Events] WHERE ([EventDate]< #" +
          nextDay + "# and [EventDate]> #" + selectedDay + "#)";
        DataView dv = (DataView)dsEvent.Select(DataSourceSelectArguments.Empty);
        if (dsEvent.Select(DataSourceSelectArguments.Empty).GetEnumerator().MoveNext())
        {
            string eventDaystr = dv.Table.Rows[0][0].ToString();
            DateTime eventDay = Convert.ToDateTime(eventDaystr);
            eventDaystr = eventDay.ToShortTimeString();
            eventDetails = "At " + eventDaystr + ", " + dv.Table.Rows[0][1].ToString();
        }
        else
            eventDetails = "NO event scheduled for today!";
        return eventDetails;
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        displayEvent.Text = GetEventDetails(e);
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        LinkedList<DateTime> displaydate = (LinkedList<DateTime>)Session["eventdate"];
        try
        {
            for (int i = displaydate.Count; i > 0; i--)
            {
                Calendar1.SelectedDates.Add(displaydate.First.Value);
                displaydate.RemoveFirst();
            }
        }
        catch (System.NullReferenceException ex)
        {
            displayEvent.Text = ex.Message;
        }
    }

    protected void Calendar1_Init(object sender, EventArgs e)
    {
        displayEvent.Text = GetEventDetails(e);
    }

    protected void Display_Data(object sender, GridViewCommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument);
        String strSQL = "SELECT * FROM Concert WHERE id = " + id;
        string strConn = ConcertData.ConnectionString;
        OleDbConnection odcConnection = new OleDbConnection(strConn);
        odcConnection.Open();
        OleDbCommand odCommand = odcConnection.CreateCommand();
        odCommand.CommandText = strSQL;
    
        OleDbDataReader odrReader = odCommand.ExecuteReader();
        int size = odrReader.FieldCount;
        odrReader.Read();
        DetailLabel.Text = odrReader[odrReader.GetName(1)].ToString();
        showDescription.Text = odrReader[odrReader.GetName(8)].ToString();
    }

    protected void Search_Record(object sender, EventArgs e)
    {
        switch (NationDropDownList.SelectedItem.Text)
        {
            case "name":
                ConcertData.SelectCommand = "SELECT * FROM Concert WHERE show_name LIKE '%" +
            keyword.Text.Trim(' ') + "%'";
                break;
            case "type":
                ConcertData.SelectCommand = "SELECT * FROM Concert WHERE type LIKE '%" +
            keyword.Text.Trim(' ') + "%'";
                break;
            case "site":
                ConcertData.SelectCommand = "SELECT * FROM Concert WHERE site LIKE '%" +
            keyword.Text.Trim(' ') + "%'";
                break;
        }
        GridView1.DataBind();
    }
}