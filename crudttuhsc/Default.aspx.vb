Imports System.Data.OleDb
Imports System.Configuration

Public Class testRegistrationForm
    Inherits System.Web.UI.Page


    Dim conn As OleDbConnection = New OleDbConnection(ConfigurationManager.ConnectionStrings("connection").ConnectionString)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then
            acc.Visible = False
            alertRecNo.Visible = False
        End If
    End Sub
    '''<summary>
    ''' this function is used to insert Data into Access Database
    ''' </summary>
    Private Sub SaveData()
        Dim gender As String
        If (rdoMale.Checked) Then
            gender = "Male"
        Else
            gender = "Female"
        End If

        Try
            conn.Open()
            Dim cmd As OleDbCommand = New OleDbCommand("insert into Table1(BooleanData, NumericData, StringData, DateData, Gender) values (@admittedBefore, @age, @name, @date, @gender)", conn)
            cmd.Parameters.AddWithValue("@admittedBefore", RadioButton1.Checked)
            cmd.Parameters.AddWithValue("@age", Convert.ToInt32(txtAge.Text))
            cmd.Parameters.AddWithValue("@name", txtName.Text)
            cmd.Parameters.AddWithValue("@date", Convert.ToDateTime(datepicker.Text))
            cmd.Parameters.AddWithValue("@gender", gender)

            cmd.ExecuteNonQuery()
            cmd.Dispose()
            Response.Write("<script>alert('Data Has been saved');</script>")
            acc.Visible = True
        Catch ex As Exception
            Response.Write("<script> alert('" + ex.Message + "')</script>")

        Finally

            conn.Close()
        End Try
    End Sub
    ''' <summary>
    ''' this code is used to insert Data in Access Database,return the Primary Key and Bind the Gridview.
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        If Page.IsValid Then
            SaveData()
            getRecNo()
            Clear()
            GridView1.DataBind()
        End If
    End Sub
    ''' <summary>
    ''' This function Is used to make all the input fields Empty.
    ''' </summary>
    Private Sub Clear()
        txtAge.Text = String.Empty
        datepicker.Text = String.Empty
        txtName.Text = String.Empty
        rdoFemale.Checked = False
        rdoMale.Checked = False
        RadioButton1.Checked = False
        RadioButton2.Checked = False

    End Sub
    ''' <summary>
    ''' This function Is used to return the primary key(i,e RecNo) that is created upon insert.
    ''' </summary>
    Private Sub getRecNo()
        Dim tbl As New DataTable
        Dim adp As OleDbDataAdapter = New OleDbDataAdapter("select RecNo from Table1 Order By RecNo Desc", conn)
        adp.Fill(tbl)

        If tbl.Rows.Count > 0 Then
            alertRecNo.Visible = True
            alertID.Text = "The Record is inserted in the RecNo " + Convert.ToString(tbl.Rows(0).Item(0))
        End If
    End Sub
    ''' <summary>
    ''' this code is used to Clear the input Fields.
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Sub btnCancel_Click(sender As Object, e As EventArgs) Handles btnCancel.Click
        Clear()
        alertID.Text = String.Empty
        alertRecNo.Visible = False
    End Sub

End Class