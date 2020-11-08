<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" EnableEventValidation="false" Inherits="VisionSoft._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
       <center> <h1>Billing Management System</h1></center>
       
    </div>
    <div>
        <div class="btn-group">
  <button type="button" runat="server" onserverclick="Unnamed_ServerClick"  class="btn btn-primary">Add More Entries</button>
            <button type="button" onserverclick="ExportToExcel" runat="server" class="btn btn-primary">Export data as Excel</button>

</div>
    </div>
    <br />
    <br />
   <center> <div>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="Order_Id" AllowPaging="True" AllowSorting="True" Width="984px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Order_Id" HeaderText="Order_Id" InsertVisible="False" ReadOnly="True" SortExpression="Order_Id" />
                <asp:BoundField DataField="expense_name" HeaderText="expense_name" SortExpression="expense_name" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="month" HeaderText="month" SortExpression="month" />
                <asp:BoundField DataField="bill_no" HeaderText="bill_no" SortExpression="bill_no" />
                <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                <asp:TemplateField HeaderText="img" SortExpression="img">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("img") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("img") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

        </asp:GridView>
       </center>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Expenses] WHERE [Order_Id] = @Order_Id" InsertCommand="INSERT INTO [Expenses] ([expense_name], [date], [month], [bill_no], [amount], [img]) VALUES (@expense_name, @date, @month, @bill_no, @amount, @img)" SelectCommand="SELECT [Order_Id], [expense_name], [date], [month], [bill_no], [amount], [img] FROM [Expenses]" UpdateCommand="UPDATE [Expenses] SET [expense_name] = @expense_name, [date] = @date, [month] = @month, [bill_no] = @bill_no, [amount] = @amount, [img] = @img WHERE [Order_Id] = @Order_Id">
            <DeleteParameters>
                <asp:Parameter Name="Order_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="expense_name" Type="String" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="month" Type="String" />
                <asp:Parameter Name="bill_no" Type="String" />
                <asp:Parameter Name="amount" Type="Int32" />
                <asp:Parameter Name="img" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="expense_name" Type="String" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="month" Type="String" />
                <asp:Parameter Name="bill_no" Type="String" />
                <asp:Parameter Name="amount" Type="Int32" />
                <asp:Parameter Name="img" Type="String" />
                <asp:Parameter Name="Order_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>


    </div>
   
          
</asp:Content>
