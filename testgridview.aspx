<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testgridview.aspx.cs" Inherits="testgridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="id" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                <Columns>

                    <asp:TemplateField HeaderText="Membership No.">
                                                <ItemStyle HorizontalAlign="Center" />
                                                <FooterStyle HorizontalAlign="Center" />
                                                <ItemTemplate>
                                                    <asp:Literal Text='<%#Eval("membershipno").ToString().ToUpper()%>' ID="MEMBERSHIPNUMBER" runat="server" />  
                                                
                                                </ItemTemplate>

                        <EditItemTemplate>
                <asp:DropDownList ID="ddlCities" runat="server">
                    <asp:ListItem Text="text1" />
                    <asp:ListItem Text="text2" />
                </asp:DropDownList>
            </EditItemTemplate>

                                            </asp:TemplateField>


                    <asp:BoundField DataField="id" HeaderText="S.No." />
                    <asp:BoundField DataField="name" HeaderText="Name" />
                    <asp:BoundField DataField="address1" HeaderText="address" />
                    <asp:BoundField DataField="country" HeaderText="Country" />
                    <asp:CommandField ShowEditButton="true" />
                    <asp:CommandField ShowDeleteButton="true" />

                </Columns>
            </asp:GridView>

        </div>
    </form>
</body>
</html>
