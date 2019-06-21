<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2_Repeater.aspx.cs" Inherits="Repetar._2_Repeater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <li style="color:deepskyblue; font-weight:bold">
                        <asp:Label runat="server" Text="<%#Eval("AdSoyad") %>"></asp:Label>
                        <asp:Label runat="server" Text="<%#Eval("HomePhone") %>"></asp:Label>
                   </li>
                </ItemTemplate>
                <AlternatingItemTemplate>
                      <li style="color:darkcyan; font-weight:bold">
                        <asp:Label runat="server" Text="<%#Eval("AdSoyad") %>"></asp:Label>
                        <asp:Label runat="server" Text="<%#Eval("HomePhone") %>"></asp:Label>
                      </li>                           
                </AlternatingItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
