<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddEntries.aspx.cs" EnableEventValidation="false" Inherits="VisionSoft.AddEntries" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section class="main">
        <div class="container">
            <div class="row">
                <div class="col-xs-6">
                    <div>
                        <fieldset>
                            <legend>Add Entries:</legend>

                            <div class="form-group row">
                                <div class="col-md-4">
                                    <label >expense name </label>
                                    <input type="text" class="form-control" runat="server" id="expense_name" placeholder="nature of expense">
                                </div>
                               
                            </div>
                            <div class="form-group row">
                                <div class="col-md-6">
                                    <label > date </label>
                                    <input type="date" runat="server" class="form-control" runat="server" id="date" placeholder="select">
                                </div>
                                <div class="col-md-6">
                                    <label >month </label>
                                    <input type="text" runat="server" class="form-control" id="month" placeholder="month">
                                </div>
                            </div>
                            <div class="form-group">
                                <label >bill no </label>
                                <input type="text" class="form-control" runat="server" id="bill_no" placeholder="bill no"> </input>
                            </div>
                            <div class="form-group">
                                <label >Amount </label>
                                <input type="text" class="form-control" runat="server" id="amount" placeholder="amount"> </input>
                            </div>
                          <div class="form-group"> 
                              <label >Upload Bill </label>
                              <asp:FileUpload ID="FileUpload1" accept=".png,.jpg,.jpeg,.pdf" runat="server" /> </div>

                            <button type="button" runat="server" onserverclick="Add_Enteries" class="btn btn-default">Submit</button>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
