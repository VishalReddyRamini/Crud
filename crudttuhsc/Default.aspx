<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="crudttuhsc.testRegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Extended Interview Questions</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>
<body>
    <form id="form1" runat="server" submitdisabledcontrols="False">
        <div class="container">
            <div class="col-md-offset-2">
                <h1>Extended Interview Questions</h1>
                <div>
                    <p>
                        The purpose of this evaluation is to verify and assess your abilities to interact with a database using ASP.Net and Visual Basic with Visual Studio.<br />
                        You will need to create interfaces to perform each of the tasks listed below against the database specified in the web.config connections.<br />
                        The connection you are to use is named "connection" in the connectionStrings block of the web.config.<br />
                        <u>All of the interfaces will use the table "EvalTable".</u><br />
                        <b>Data validation is encouraged.</b><br />
                    </p>

                    <h2>Table structure</h2>
                    <table>
                        <tr>
                            <th>Column Name
                            </th>
                            <th>Data Type
                            </th>
                            <th></th>
                        </tr>
                        <tr>
                            <td>RecNo		
                            </td>
                            <td>AutoNumber
                            </td>

                            <td><i>Primary Key</i></td>
                        </tr>
                        <tr>
                            <td>BooleanData	
                            </td>
                            <td>Yes/No	
                            </td>

                        </tr>
                        <tr>
                            <td>NumericData		
                            </td>
                            <td>Number
                            </td>

                        </tr>
                        <tr>
                            <td>StringData		
                            </td>
                            <td>ShortText(50)
                            </td>

                        </tr>
                        <tr>
                            <td>DateData		
                            </td>
                            <td>Date/Time
                            </td>

                        </tr>
                        <tr>
                        </tr>
                        <tr></tr>
                    </table>
                    <br />
                    <b>Note: The Table name has been Changed from EvalTable to Table1 and Extra column Gender Of shortText type has been added to this table.</b>
                </div>
            </div>
        </div>
        <br />
        <br />
        <div style="border: solid 2px black; margin-right: 100px; margin-left: 80px">

            <div class="container" style="margin-top: 30px;">
                <div style="margin-left: 320px; margin-bottom: 30px">
                    <h2><strong>Patient's Registration form</strong></h2>
                </div>
                <div class="form-group row">
                    <div class="col-md-2 col-md-offset-3" style="text-align: right">
                        Patient's Name:
                    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="txtName" class="form-control" placeholder="Enter Name" runat="server" MaxLength="50"></asp:TextBox>
                    </div>
                    <div>
                        <asp:RequiredFieldValidator ID="rqrdName" runat="server" ErrorMessage="Name is Required" ControlToValidate="txtName" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Special Characters and Numbers are not allowed in Name" Display="Dynamic" ForeColor="Red" ValidationExpression="^([a-z]|[A-Z]|[ ]){1,50}$" ControlToValidate="txtName"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-md-1 col-md-offset-4" style="text-align: right">
                        Age:
                    </div>
                    <div class="col-md-2 ">
                        <asp:TextBox ID="txtAge" class="form-control" placeholder="Enter Age" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:RequiredFieldValidator ID="rqrAge" runat="server" ErrorMessage="Age is Required" ControlToValidate="txtAge" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:RangeValidator ID="rngAge" runat="server" ErrorMessage="Age should be between 1 and 100" ControlToValidate="txtAge" Type="Integer" Display="Dynamic" ForeColor="Red" MaximumValue="100" MinimumValue="1" SetFocusOnError="True"></asp:RangeValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-md-1 col-md-offset-4" style="text-align: right">
                        Gender:
                    </div>
                    <div class="col-md-2" style="margin-left: 17px">
                        <asp:RadioButton ID="rdoMale" runat="server" Text="Male" class="radio" GroupName="Gender" />
                        <asp:RadioButton ID="rdoFemale" runat="server" Text="Female" Class="radio" GroupName="Gender" />
                    </div>
                    <div>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Please Choose your Gender" ClientValidationFunction="CustomValidator1_ClientValidate" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:CustomValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-md-2 col-md-offset-3" style="text-align: right">
                        Date Of Admission:
                    </div>
                    <div class="col-md-2">
                        <asp:TextBox ID="datepicker" class="form-control" placeholder="mm/dd/yyy" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:RequiredFieldValidator ID="rqrDate" runat="server" ErrorMessage="Please Select the Date or Enter it in mm/dd/yyyy Format" ControlToValidate="datepicker" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Date of mm/dd/yyyy Format" ControlToValidate="datepicker" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^([0-9]|0[1-9]|1[012])\/([0-9]|0[1-9]|[12][0-9]|3[01])\/(19|20)\d\d$" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-md-2 col-md-offset-3" style="text-align: right">
                        Have you ever been Admitted before in this Hospital?
                    </div>
                    <div class="col-md-2" style="margin-left: 17px">
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Yes" class="radio" GroupName="admitted" />
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="No" Class="radio" GroupName="admitted" />
                    </div>
                    <div>
                        <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Please Choose Yes or No" ClientValidationFunction="CustomValidator2_ClientValidate" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:CustomValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-md-1 col-md-offset-5">
                        <asp:Button ID="btnSave" Class="btn btn-success" runat="server" Text="Save" />
                    </div>
                    <div class="col=md-1">
                        <asp:Button ID="btnCancel" class="btn btn-danger" runat="server" Text="Cancel" CausesValidation="False" />
                    </div>
                </div>
            </div>
            <br />
            <br />
            <div id="alertRecNo" runat="server" class="alert-success col-md-offset-3 col-md-6" style="text-align: center; margin-bottom: 20px">
                <strong>Success!</strong><asp:Label ID="alertID" runat="server" Text=""></asp:Label>
            </div>
            <div class="container" runat="server" id="acc">
                <div class="row">
                    <div class="col-md-12">
                        <div id="accordion" class="panel-group">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a href="#panelBodyOne" data-toggle="collapse" data-parent="#accordion">Update/Delete Data
                                        </a>
                                    </h4>
                                </div>
                                <div id="panelBodyOne" class="panel-collapse collapse in">
                                    <div class="panel-body">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RecNo" DataSourceID="SqlDataSource1" CellPadding="10" ForeColor="#333333" CellSpacing="10" BorderStyle="Solid">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:TemplateField HeaderText="RecNo" InsertVisible="False" SortExpression="RecNo">
                                                    <EditItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("RecNo") %>'></asp:Label>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("RecNo") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="BooleanData" SortExpression="BooleanData">
                                                    <EditItemTemplate>
                                                        <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("BooleanData") %>' />
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("BooleanData") %>' Enabled="false" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="NumericData" SortExpression="NumericData">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox1" ValidationGroup="Grid" runat="server" Text='<%# Bind("NumericData") %>'></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="Grid" runat="server" ErrorMessage="Please Enter the Age" ForeColor="Red" Text="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                                        <asp:RangeValidator ID="RangeFieldValidator1" ValidationGroup="Grid" runat="server" ErrorMessage="Age should be between 1 and 100" ControlToValidate="TextBox1" Type="Integer" Display="Dynamic" ForeColor="Red" MaximumValue="100" MinimumValue="1" SetFocusOnError="True" Text="**"></asp:RangeValidator>

                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("NumericData") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="StringData" SortExpression="StringData">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="Grid" Text='<%# Bind("StringData") %>'></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="Grid" runat="server" ErrorMessage="Please Enter the Name" ForeColor="Red" Text="*" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationGroup="Grid" runat="server" ErrorMessage="Special Characters and Numbers are not allowed in Name" Display="Dynamic" ForeColor="Red" ValidationExpression="^([a-z]|[A-Z]|[ ]){1,50}$" ControlToValidate="TextBox2" Text="*"></asp:RegularExpressionValidator>

                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("StringData") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="DateData" SortExpression="DateData">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="Grid" Text='<%# Bind("DateData", "{0:MM/dd/yyyy}") %>'></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="Grid" ErrorMessage="Please Enter the Date in mm/dd/yyyy format" ForeColor="Red" Text="*" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationGroup="Grid" runat="server" ErrorMessage="Enter Date of mm/dd/yyyy Format" ControlToValidate="TextBox3" Text="*" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^([0-9]|0[1-9]|1[012])\/([0-9]|0[1-9]|[12][0-9]|3[01])\/(19|20)\d\d$" Display="Dynamic"></asp:RegularExpressionValidator>

                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("DateData", "{0:MM/dd/yyyy}") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="DropDownList1" runat="server" ValidationGroup="Grid" SelectedValue='<%# Bind("Gender") %>'>
                                                            <asp:ListItem>Select Gender</asp:ListItem>
                                                            <asp:ListItem>Male</asp:ListItem>
                                                            <asp:ListItem>Female</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="Grid" runat="server"
                                                            ErrorMessage="Please Select your Gender" ForeColor="Red" Text="*"
                                                            ControlToValidate="DropDownList1" InitialValue="Select Gender"></asp:RequiredFieldValidator>

                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:CommandField ShowEditButton="True" HeaderText="Update" ValidationGroup="Grid" CausesValidation="true" ButtonType="Button" />
                                                <asp:CommandField ShowDeleteButton="True" HeaderText="Delete" ValidationGroup='GridView1' ButtonType="Button" />

                                            </Columns>
                                            <EditRowStyle BackColor="#7C6F57" />
                                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#E3EAEB" />
                                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                                        </asp:GridView>
                                        <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="Grid" ForeColor="Red" runat="server" />
                                        <br />
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [Table1] WHERE [RecNo] = ?" InsertCommand="INSERT INTO [Table1] ([RecNo], [BooleanData], [NumericData], [StringData], [DateData], [Gender]) VALUES (?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Table1]" UpdateCommand="UPDATE [Table1] SET [BooleanData] = ?, [NumericData] = ?, [StringData] = ?, [DateData] = ?, [Gender] = ? WHERE [RecNo] = ?">
                                            <DeleteParameters>
                                                <asp:Parameter Name="original_RecNo" Type="Int32" />
                                            </DeleteParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="BooleanData" Type="Boolean" />
                                                <asp:Parameter Name="NumericData" Type="Int32" />
                                                <asp:Parameter Name="StringData" Type="String" />
                                                <asp:Parameter Name="DateData" Type="DateTime" />
                                                <asp:Parameter Name="Gender" Type="String" />
                                                <asp:Parameter Name="original_RecNo" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <br />
        <br />
    </form>

    <script language="javascript" type="text/javascript">
        function CustomValidator1_ClientValidate(source, args) {
            if (document.getElementById("<%=rdoMale.ClientID%>").checked || document.getElementById("<%=rdoFemale.ClientID%>").checked) {
                args.IsValid = true;
            }
            else {
                args.IsValid = false;
            }
        }
        function CustomValidator2_ClientValidate(source, args) {
            if (document.getElementById("<%=RadioButton1.ClientID%>").checked || document.getElementById("<%=RadioButton2.ClientID%>").checked) {
                args.IsValid = true;
            }
            else {
                args.IsValid = false;
            }
        }

        $(function () {
            $("#datepicker").datepicker();
        });
    </script>
</body>
</html>

