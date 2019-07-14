<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderPage.aspx.cs" Inherits="OrderPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="OrderPageStyle.css" />
    <title>Order Page</title>
    <style type="text/css">
        .lstResult {}
        .txtChickenWings {}
        .txtMthsResult {}
        .txtFirstNname {}
        .txtSurname {}
        .txtEmail {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- If theres  aproblem with the the textmode type you need to make sure u are using asp.net framework 4.5 and higher-->
            <!-- Put HTML code in here-->
            <h1>
                <img id="OrderLogo" src="images/AGF2.png" height="150" width="150" /><!--The logo at the top-->
                
            </h1>
            <h1 id="TitleOrder">Order</h1>
            <div id="NavButtons"><!--The nav buttons-->
                <asp:Button ID="btnHome" runat="server" Text="Home" CssClass="btnHome" OnClick="btnHome_Click" />
                <asp:Button ID="btnOrder" runat="server" Text="Menu" CssClass="btnOrder" OnClick="btnOrder_Click" />  
            </div>
            <br /><!-- The line breaks-->
            <br /><!--Last minute rush-->
            <br />
            <div id="Details"><!--This is all the text boxes and list boxes and buttons that store the users data-->
                <asp:Label ID="lblFirstName" runat="server" Text="First name: "></asp:Label>
                <asp:TextBox ID="txtFirstNname" runat="server" CssClass="txtFirstNname" OnTextChanged="TextBox1_TextChanged" Width="78px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstNname" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
                <asp:Label ID="lblSurame" runat="server" Text="Surname: "></asp:Label>
                <asp:TextBox ID="txtSurname" runat="server" CssClass="txtSurname" Width="76px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSurname" ErrorMessage="Enter Surname"></asp:RequiredFieldValidator>
                <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="txtEmail" Width="177px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Email"></asp:RequiredFieldValidator>
                <asp:ListBox ID="lstResult" runat="server" CssClass="lstResult" Width="372px" Height="149px"></asp:ListBox>
                <asp:ListBox ID="lstarithmeticbox" runat="server" Height="149px" style="margin-top: 0px" Width="61px" AutoPostBack="True" OnSelectedIndexChanged="lstarithmeticbox_SelectedIndexChanged"></asp:ListBox>
                <asp:Label ID="lblTotal" runat="server" Text="Total:£ "></asp:Label>
                <asp:TextBox ID="txtMthsResult" runat="server" CssClass="txtMthsResult" Width="52px"></asp:TextBox>
                <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                <asp:Button ID="btnConfirm" runat="server" Text="Confirm Order" OnClick="btnConfirm_Click" />
            </div>
            <div id="AllStarters"><!--All the starter items-->
                <div id="StarterTitle">
                    <asp:Label ID="lblStartersTitle" runat="server" CssClass="lblStartersTitle" Text="Starters" Font-Bold="True" Font-Size="16pt"></asp:Label>
                </div>
                <div id="StarterItems">
                    <div id="ChickenWings">
                        <asp:CheckBox ID="chkBoxChickenWings" runat="server" Text="Chicken Wings " AutoPostBack="True" CssClass="chkBoxChickenWings" OnCheckedChanged="chkBoxChickenWings_CheckedChanged" Font-Bold="False"></asp:CheckBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblChickenWingsQuantity" runat="server" Text="Quantity: "></asp:Label>
                        <asp:TextBox ID="txtChickenWingsQuantity" runat="server" Width="45px" Wrap="False" CssClass="txtChickenWings" TextMode="Number" BackColor="#FF8080" BorderStyle="None">1</asp:TextBox>
                        <asp:Label ID="lblChcikenWingsPrice" runat="server" Text="Price:£ "></asp:Label>
                        <asp:TextBox ID="txtChickenWingsPrice" runat="server" ReadOnly="True" TextMode="Number" Width="45px" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" OnTextChanged="txtChickenWingsPrice_TextChanged">1.99</asp:TextBox>
                    </div>
                    <div id="SeekhKebabs">
                        <asp:CheckBox ID="chkBoxSeekhKebabs" runat="server" Text="Seekh Kebabs " AutoPostBack="True" CssClass="chkBoxSeekhKebabs" OnCheckedChanged="chkBoxSeekhKebabs_CheckedChanged" Font-Bold="False"></asp:CheckBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblSeekhKebabsQuantity" runat="server" Text="Quantity: "></asp:Label>
                        <asp:TextBox ID="txtSeekhKebabQuantity" runat="server" Width="45px" Wrap="False" CssClass="txtSeekhKebab" TextMode="Number" BackColor="#FF8080" BorderStyle="None">1</asp:TextBox>
                        <asp:Label ID="lblSeekhKebabPrice" runat="server" Text="Price:£ "></asp:Label>
                        <asp:TextBox ID="txtSeekhKebabPrice" runat="server" ReadOnly="True" TextMode="Number" Width="45px" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Font-Overline="False">0.99</asp:TextBox>
                    </div>
                    <div id="StartChickenTikka">
                        <asp:CheckBox ID="chkBoxStartChickenTikka" runat="server" Text="Chicken Tikka " AutoPostBack="True" CssClass="chkBoxChickenTikka" OnCheckedChanged="chkBoxStartChickenTikka_CheckedChanged" Font-Bold="False"></asp:CheckBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblStartChickenTikkaQuantity" runat="server" Text="Quantity: " CssClass="lblStartChickenTikkaQuantity"></asp:Label>
                        <asp:TextBox ID="txtStartChickenTikkaQuantity" runat="server" Width="45px" Wrap="False" CssClass="txtStartChickenTikka" TextMode="Number" BackColor="#FF8080" BorderStyle="None" OnTextChanged="txtStartChickenTikkaQuantity_TextChanged">1</asp:TextBox>
                        <asp:Label ID="lblStartChickenTikkaPrice" runat="server" Text="Price:£ " CssClass="lblStartChickenTikkaPrice"></asp:Label>
                        <asp:TextBox ID="txtStartChickenTikkaPrice" runat="server" ReadOnly="True" TextMode="Number" Width="45px" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Font-Overline="False">2.49</asp:TextBox>
                    </div>
                    <div id="Pakora">
                        <asp:CheckBox ID="chkBoxPakora" runat="server" Text="Pakora " AutoPostBack="True" CssClass="chkBoxPakora" OnCheckedChanged="chkBoxPakora_CheckedChanged" Font-Bold="False"></asp:CheckBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblPakoraQuantity" runat="server" Text="Quantity: " CssClass="lblPakoraQuantity"></asp:Label>
                        <asp:TextBox ID="txtPakoraQuantity" runat="server" Width="45px" Wrap="False" CssClass="txtPakora" TextMode="Number" BackColor="#FF8080" BorderStyle="None">1</asp:TextBox>
                        <asp:Label ID="lblPakoraPrice" runat="server" Text="Price:£ " CssClass="lblPakoraPrice"></asp:Label>
                        <asp:TextBox ID="txtPakoraPrice" runat="server" ReadOnly="True" TextMode="Number" Width="45px" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Font-Overline="False">0.49</asp:TextBox>
                    </div>
                    <div id="Samosa">
                        <asp:CheckBox ID="chkBoxSamosa" runat="server" Text="Samosa " AutoPostBack="True" CssClass="chkBoxSamosa" OnCheckedChanged="chkBoxSamosa_CheckedChanged" Font-Bold="False"></asp:CheckBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblSamosaQuantity" runat="server" Text="Quantity: " CssClass="lblSamosaQuantity"></asp:Label>
                        <asp:TextBox ID="txtSamosaQuantity" runat="server" Width="45px" Wrap="False" CssClass="txtSamosa" TextMode="Number" BackColor="#FF8080" BorderStyle="None">1</asp:TextBox>
                        <asp:Label ID="lblSamosaPrice" runat="server" Text="Price:£ " CssClass="lblSamosaPrice"></asp:Label>
                        <asp:TextBox ID="txtSamosaPrice" runat="server" ReadOnly="True" TextMode="Number" Width="45px" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Font-Overline="False">0.49</asp:TextBox>
                    </div>
                    <div id="Chips">
                        <asp:CheckBox ID="chkBoxChips" runat="server" Text="Chips " AutoPostBack="True" CssClass="chkBoxChips" OnCheckedChanged="chkBoxChips_CheckedChanged" Font-Bold="False"></asp:CheckBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblChipsQuantity" runat="server" Text="Quantity: " CssClass="lblChipsQuantity"></asp:Label>
                        <asp:TextBox ID="txtChipsQuantity" runat="server" Width="45px" Wrap="False" CssClass="txtChips" TextMode="Number" BackColor="#FF8080" BorderStyle="None">1</asp:TextBox>
                        <asp:Label ID="lblChipsPrice" runat="server" Text="Price:£ " CssClass="lblChipsPrice"></asp:Label>
                        <asp:TextBox ID="txtChipsPrice" runat="server" ReadOnly="True" TextMode="Number" Width="45px" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Font-Overline="False">1.49</asp:TextBox>
                    </div>
                    <div id="Roti">
                        <asp:CheckBox ID="chkBoxRoti" runat="server" Text="Roti " AutoPostBack="True" CssClass="chkBoxRoti" OnCheckedChanged="chkBoxRoti_CheckedChanged" Font-Bold="False"></asp:CheckBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblRotiQuantity" runat="server" Text="Quantity: " CssClass="lblRotiQuantity"></asp:Label>
                        <asp:TextBox ID="txtRotiQuantity" runat="server" Width="45px" Wrap="False" CssClass="txtRoti" TextMode="Number" BackColor="#FF8080" BorderStyle="None">1</asp:TextBox>
                        <asp:Label ID="lblRotiPrice" runat="server" Text="Price:£ " CssClass="lblRotiPrice"></asp:Label>
                        <asp:TextBox ID="txtRotiPrice" runat="server" ReadOnly="True" TextMode="Number" Width="45px" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Font-Overline="False">0.25</asp:TextBox>
                    </div>
                    <div id="Naan">
                        <asp:CheckBox ID="chkBoxNaan" runat="server" Text="Naan " AutoPostBack="True" CssClass="chkBoxNaan" OnCheckedChanged="chkBoxNaan_CheckedChanged" Font-Bold="False"></asp:CheckBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblNaanQuantity" runat="server" Text="Quantity: " CssClass="lblNaanQuantity"></asp:Label>
                        <asp:TextBox ID="txtNaanQuantity" runat="server" Width="45px" Wrap="False" CssClass="txtNaan" TextMode="Number" BackColor="#FF8080" BorderStyle="None">1</asp:TextBox>
                        <asp:Label ID="lblNaanPrice" runat="server" Text="Price:£ " CssClass="lblNaanPrice"></asp:Label>
                        <asp:TextBox ID="txtNaanPrice" runat="server" ReadOnly="True" TextMode="Number" Width="45px" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Font-Overline="False">0.35</asp:TextBox>
                    </div>
                </div>
            </div>
            <div id="AllKebabs"><!--All the kebab items-->
                <div id="KebabTitle">
                    <asp:Label ID="lblKebabsTitle" runat="server" CssClass="lblKebabsTitle" Text="Kebabs" Font-Bold="True" Font-Size="16pt"></asp:Label>
                </div>
                <div id="KebabItems">
                    <div id="Donnar">
                        <asp:CheckBox ID="ChkBoxDonnar" runat="server" Text="Donnar " AutoPostBack="True" CssClass="ChkBoxDonnar" OnCheckedChanged="ChkBoxDonnar_CheckedChanged" Font-Bold="False"></asp:CheckBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblDonnarQuantity" runat="server" Text="Quantity: " CssClass="lblDonnarQuantity"></asp:Label>
                        <asp:TextBox ID="txtDonnarQuantity" runat="server" Width="45px" Wrap="False" CssClass="txtDonnarQuantity" TextMode="Number" BackColor="#FF8080" BorderStyle="None">1</asp:TextBox>
                        <asp:Label ID="lblDonnarPrice" runat="server" Text="Price:£ " CssClass="lblDonnarPrice"></asp:Label>
                        <asp:TextBox ID="txtDonnarPrice" runat="server" CssClass="txtDonnarPrice" Width="45px" ReadOnly="True" TextMode="Number" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift">3.99</asp:TextBox>
                    </div>
                    <div id="ChickenDonnar">
                        <asp:CheckBox ID="ChkBoxChickenDonnar" runat="server" Text="Chicken Donnar " AutoPostBack="True" CssClass="ChkBoxChickenDonnar" OnCheckedChanged="ChkBoxChickenDonnar_CheckedChanged" Font-Bold="False"></asp:CheckBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblChickenDonnarQuantity" runat="server" Text="Quantity: " CssClass="lblChickenDonnarQuantity"></asp:Label>
                        <asp:TextBox ID="txtChickenDonnarQuantity" runat="server" Width="45px" Wrap="False" CssClass="txtChickenDonnarQuantity" TextMode="Number" BackColor="#FF8080" BorderStyle="None">1</asp:TextBox>
                        <asp:Label ID="lblChickenDonnarPrice" runat="server" Text="Price:£ " CssClass="lblChickenDonnarPrice"></asp:Label>
                        <asp:TextBox ID="txtChickenDonnarPrice" runat="server" CssClass="txtChickenDonnarPrice" TextMode="Number" Width="45px" ReadOnly="True" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift">3.99</asp:TextBox>
                    </div>
                    <div id="ChickenTikka">
                        <asp:CheckBox ID="ChkBoxChickenTikka" runat="server" Text="Chicken Tikka " AutoPostBack="True" CssClass="ChkBoxChickenTikka" OnCheckedChanged="ChkBoxChickenTikka_CheckedChanged" Font-Bold="False"></asp:CheckBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblChickenTikkaQuantity" runat="server" Text="Quantity: " CssClass="lblChickenTikkaQuantity"></asp:Label>
                        <asp:TextBox ID="txtChickenTikkaQuantity" runat="server" Width="45px" Wrap="False" CssClass="txtChickenTikkaQuantity" TextMode="Number" BackColor="#FF8080" BorderStyle="None">1</asp:TextBox>
                        <asp:Label ID="lblChickenTikkaPrice" runat="server" Text="Price:£ " CssClass="lblChickenTikkaPrice"></asp:Label>
                        <asp:TextBox ID="txtChickenTikkaPrice" runat="server" CssClass="txtChickenTikkaPrice" TextMode="Number" Width="45px" ReadOnly="True" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift">2.49</asp:TextBox>
                    </div>
                    <div id="MixKebabs">
                        <asp:CheckBox ID="ChkBoxMixKebabs" runat="server" Text="Mix Kebabs " AutoPostBack="True" CssClass="ChkBoxMixKebabs" OnCheckedChanged="ChkBoxMixKebabs_CheckedChanged" Font-Bold="False"></asp:CheckBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblMixKebabsQuantity" runat="server" Text="Quantity: " CssClass="lblMixKebabsQuantity"></asp:Label>
                        <asp:TextBox ID="txtMixKebabsQuantity" runat="server" Width="45px" Wrap="False" CssClass="txtMixKebabsQuantity" TextMode="Number" BackColor="#FF8080" BorderStyle="None">1</asp:TextBox>
                        <asp:Label ID="lblMixKebabsPrice" runat="server" Text="Price:£ " CssClass="lblMixKebabsPrice"></asp:Label>
                        <asp:TextBox ID="txtMixKebabsPrice" runat="server" CssClass="txtMixKebabsPrice" TextMode="Number" Width="45px" ReadOnly="True" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift">7.49</asp:TextBox>
                    </div>
                    <div id="Shashlick">
                        <asp:CheckBox ID="ChkBoxShashlick" runat="server" Text="Shashlick " AutoPostBack="True" CssClass="ChkBoxShashlick" OnCheckedChanged="ChkBoxShashlick_CheckedChanged" Font-Bold="False"></asp:CheckBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblShaslickQuantity" runat="server" Text="Quantity: " CssClass="lblShaslickQuantity"></asp:Label>
                        <asp:TextBox ID="txtShashlickQuantity" runat="server" Width="45px" Wrap="False" CssClass="txtShashlickQuantity" TextMode="Number" BackColor="#FF8080" BorderStyle="None">1</asp:TextBox>
                        <asp:Label ID="lblShaslickPrice" runat="server" Text="Price:£ " CssClass="lblShaslickPrice"></asp:Label>
                        <asp:TextBox ID="txtShaslickPrice" runat="server" CssClass="txtShaslickPrice" TextMode="Number" Width="45px" ReadOnly="True" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift">4.49</asp:TextBox>
                    </div>
                    <div id="ChickenShawrma">
                        <asp:CheckBox ID="ChckBoxChickenShawrma" runat="server" Text="Chicken Shawrma " AutoPostBack="True" CssClass="ChckBoxChickenShawrma" OnCheckedChanged="ChckBoxChickenShawrma_CheckedChanged" Font-Bold="False"></asp:CheckBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblChickenShawrmaQunatity" runat="server" Text="Quantity: " CssClass="lblChickenShawrmaQunatity"></asp:Label>
                        <asp:TextBox ID="txtChickenShawrmaQuantity" runat="server" Width="45px" Wrap="False" CssClass="txtChickenShawrmaQuantity" TextMode="Number" BackColor="#FF8080" BorderStyle="None">1</asp:TextBox>
                        <asp:Label ID="lblChickenShawrmaPrice" runat="server" Text="Price:£ " CssClass="lblChickenShawrmaPrice"></asp:Label>
                        <asp:TextBox ID="txtChickenShawrmaPrice" runat="server" CssClass="txtChickenShawrmaPrice" TextMode="Number" Width="45px" ReadOnly="True" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift">4.49</asp:TextBox>
                    </div>
                    <div id="LambShawrma">
                        <asp:CheckBox ID="ChckBoxLambShawrma" runat="server" Text="Lamb Shawrma " AutoPostBack="True" CssClass="ChckBoxLambShawrma" OnCheckedChanged="ChckBoxLambShawrma_CheckedChanged" Font-Bold="False"></asp:CheckBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblLambShawrmaQuantity" runat="server" Text="Quantity: " CssClass="lblLambShawrmaQuantity"></asp:Label>
                        <asp:TextBox ID="txtLambShawrmaQuantity" runat="server" Width="45px" Wrap="False" CssClass="txtLambShawrmaQuantity" TextMode="Number" BackColor="#FF8080" BorderStyle="None">1</asp:TextBox>
                        <asp:Label ID="lblLambShawrmaPrice" runat="server" Text="Price:£ " CssClass="lblLambShawrmaPrice"></asp:Label>
                        <asp:TextBox ID="txtLambShawrmaPrice" runat="server" CssClass="txtLambShawrmaPrice" OnTextChanged="txtLambShawrma_TextChanged" TextMode="Number" Width="45px" ReadOnly="True" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift">4.49</asp:TextBox>
                    </div>
                    <div id="MixShawrma">
                        <asp:CheckBox ID="ChckBoxMixShawrma" runat="server" Text="Mix Shawrma " AutoPostBack="True" CssClass="ChckBoxMixShawrma" OnCheckedChanged="ChckBoxMixShawrma_CheckedChanged" Font-Bold="False"></asp:CheckBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblMixShawrmaQuantity" runat="server" Text="Quantity: " CssClass="lblMixShawrmaQuantity"></asp:Label>
                        <asp:TextBox ID="txtMixShawrmaQuantity" runat="server" Width="45px" Wrap="False" CssClass="txtMixShawrmaQuantity" TextMode="Number" BackColor="#FF8080" BorderStyle="None">1</asp:TextBox>
                        <asp:Label ID="lblMixShawrmaPrice" runat="server" Text="Price:£ " CssClass="lblMixShawrmaPrice"></asp:Label>
                        <asp:TextBox ID="txtMixShawrmaPrice" runat="server" CssClass="txtMixShawrmaPrice" TextMode="Number" Width="45px" ReadOnly="True" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift">4.49</asp:TextBox>
                    </div>
                </div>
            </div>
            <div id="All Burgers"><!--All the burger items-->
                <div id="BurgerTittle">
                    <asp:Label ID="lblBurgerTitle" runat="server" CssClass="lblBurgerClass" Text="Burgers" Font-Bold="True" Font-Size="16pt"></asp:Label>
                </div>
                <div id="ChickenBurger">
                    <asp:CheckBox ID="chckBoxChickenBurger" runat="server" AutoPostBack="True" CssClass="chckBoxChickenBurger" Text="Chicken Burger " OnCheckedChanged="chckBoxChickenBurger_CheckedChanged" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblChickenBurgerQuantity" runat="server" Text="Quantity: " CssClass="lblChickenBurgerQuantity"></asp:Label>
                    <asp:TextBox ID="txtChickenBurgerQuantity" runat="server" CssClass="txtChickenBurgerQuantity" TextMode="Number" BackColor="#FF8080" BorderStyle="None" Width="45px">1</asp:TextBox>
                    <asp:Label ID="lblChickenBurgerPrice" runat="server" Text="Price:£ " CssClass="lblChickenBurgerPrice"></asp:Label>
                    <asp:TextBox ID="txtChickenBurgerPrice" runat="server" CssClass="txtChickenBurgerPrice" TextMode="Number" ReadOnly="True" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Width="45px">1.49</asp:TextBox>
                </div>
                <div id="ChickenFillet">
                    <asp:CheckBox ID="chckBoxChickenFillet" runat="server" CssClass="chckBoxChickenFillet" Text="Chicken Fillet " AutoPostBack="True" OnCheckedChanged="chckBoxChickenFillet_CheckedChanged" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblChickenFilletQuantity" runat="server" Text="Quantity: " CssClass="lblChickenFilletQuantity"></asp:Label>
                    <asp:TextBox ID="txtChickenFilletQuantity" runat="server" CssClass="txtChickenFilletQuantity" TextMode="Number" BackColor="#FF8080" BorderStyle="None" Width="45px">1</asp:TextBox>
                    <asp:Label ID="lblChickenFilletPrice" runat="server" Text="Price:£ " CssClass="lblChickenFilletPrice"></asp:Label>
                    <asp:TextBox ID="txtChickenFilletPrice" runat="server" CssClass="txtChickenFilletPrice" TextMode="Number" ReadOnly="True" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Width="45px">2.49</asp:TextBox>
                </div>
                <div id="CheeseBurger">
                    <asp:CheckBox ID="chckBoxCheeseBurger" runat="server" CssClass="chckBoxCheeseBurger" Text="Cheese Burger " AutoPostBack="True" OnCheckedChanged="chckBoxCheeseBurger_CheckedChanged" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblCheeseBurgerQunatity" runat="server" Text="Quantity: " CssClass="lblCheeseBurgerQunatity"></asp:Label>
                    <asp:TextBox ID="txtCheeseBurgerQunatity" runat="server" CssClass="txtCheeseBurgerQunatity" TextMode="Number" BackColor="#FF8080" BorderStyle="None" Width="45px">1</asp:TextBox>
                    <asp:Label ID="lblCheeseBurgerPrice" runat="server" Text="Price: £" CssClass="lblCheeseBurgerPrice"></asp:Label>
                    <asp:TextBox ID="txtCheeseBurgerPrice" runat="server" CssClass="txtCheeseBurgerPrice" ReadOnly="True" TextMode="Number" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Width="45px">1.49</asp:TextBox>
                </div>
                <div id="BeefBurger">
                    <asp:CheckBox ID="chkBoxBeefBurger" runat="server" AutoPostBack="True" CssClass="chkBoxBeefBurger" Text="Beef Burger " OnCheckedChanged="chkBoxBeefBurger_CheckedChanged" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblBeefBurgerQuantity" runat="server" Text="Quantity: " CssClass="lblBeefBurgerQuantity"></asp:Label>
                    <asp:TextBox ID="txtBeefBurgerQuantity" runat="server" CssClass="txtBeefBurgerQuantity" TextMode="Number" BackColor="#FF8080" BorderStyle="None" Width="45px">1</asp:TextBox>
                    <asp:Label ID="lblBeefBurgerprice" runat="server" Text="Price: £" CssClass="lblBeefBurgerprice"></asp:Label>
                    <asp:TextBox ID="txtBeefBurgerprice" runat="server" CssClass="txtBeefBurgerprice" TextMode="Number" ReadOnly="True" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Width="45px">1.49</asp:TextBox>
                </div>
                <div id="DonnarBurger">
                    <asp:CheckBox ID="chkBoxDonnarBurger" runat="server" AutoPostBack="True" CssClass="chkBoxDonnarBurger" Text="Donnar Burger " OnCheckedChanged="chkBoxDonnarBurger_CheckedChanged" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblDonnarBurgerQuantity" runat="server" Text="Quantity: " CssClass="lblDonnarBurgerQuantity"></asp:Label>
                    <asp:TextBox ID="txtDonnarBurgerQuantity" runat="server" TextMode="Number" CssClass="txtDonnarBurgerQuantity" BackColor="#FF8080" BorderStyle="None" Width="45px">1</asp:TextBox>
                    <asp:Label ID="lblDonnarBurgerprice" runat="server" Text="Price: £" CssClass="lblDonnarBurgerprice"></asp:Label>
                    <asp:TextBox ID="txtDonnarBurgerprice" runat="server" TextMode="Number" CssClass="txtDonnarBurgerprice" ReadOnly="True" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Width="45px">1.99</asp:TextBox>
                </div>
                <div id="FishFilletBueger">
                    <asp:CheckBox ID="chkBoxFishFilletBurger" runat="server" AutoPostBack="True" CssClass="chkBoxFishFilletBurger" Text="Fish Fillet Burger " OnCheckedChanged="chkBoxFishFilletBurger_CheckedChanged" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblFishFilletBuergerQuantity" runat="server" Text="Quantity: " CssClass="lblFishFilletBuergerQuantity"></asp:Label>
                    <asp:TextBox ID="txtFishFilletBuergerQuantity" runat="server" TextMode="Number" CssClass="txtFishFilletBuergerQuantity" BackColor="#FF8080" BorderStyle="None" Width="45px">1</asp:TextBox>
                    <asp:Label ID="lblFishFilletBuergerPrice" runat="server" Text="Price: £" CssClass="lblFishFilletBuergerPrice"></asp:Label>
                    <asp:TextBox ID="txtFishFilletBuergerPrice" runat="server" TextMode="Number" CssClass="txtFishFilletBuergerPrice" ReadOnly="True" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Width="45px">1.99</asp:TextBox>
                </div>
                <div id="VegieBurger">
                    <asp:CheckBox ID="chkBoxVegieBurger" runat="server" AutoPostBack="True" CssClass="chkBoxVegieBurger" Text="Vegie Burger " OnCheckedChanged="chkBoxVegieBurger_CheckedChanged" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblVegieBurgerQuantity" runat="server" Text="Quantity: " CssClass="lblVegieBurgerQuantity"></asp:Label>
                    <asp:TextBox ID="txtVegieBurgerQuantity" runat="server" TextMode="Number" CssClass="txtVegieBurgerQuantity" BackColor="#FF8080" BorderStyle="None" Width="45px">1</asp:TextBox>
                    <asp:Label ID="lblFishVegieBurgerPrice" runat="server" Text="Price: £" CssClass="lblFishVegieBurgerPrice"></asp:Label>
                    <asp:TextBox ID="txtVegieBurgerPrice" runat="server" TextMode="Number" CssClass="txtVegieBurgerPrice" ReadOnly="True" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Width="45px">1.99</asp:TextBox>
                </div>
                <div id="BeanBurger">
                    <asp:CheckBox ID="chkBoxBeanBurger" runat="server" AutoPostBack="True" CssClass="chkBoxBeanBurger" Text="Bean Burger " OnCheckedChanged="chkBoxBeanBurger_CheckedChanged" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblBeanBurgerQuantity" runat="server" Text="Quantity: " CssClass="lblBeanBurgerQuantity"></asp:Label>
                    <asp:TextBox ID="txtBeanBurgerQuantity" runat="server" TextMode="Number" CssClass="txtBeanBurgerQuantity" BackColor="#FF8080" BorderStyle="None" Width="45px">1</asp:TextBox>
                    <asp:Label ID="lblBeanVegieBurgerPrice" runat="server" Text="Price: £" CssClass="lblBeanVegieBurgerPrice"></asp:Label>
                    <asp:TextBox ID="txtBeanBurgerPrice" runat="server" TextMode="Number" CssClass="txtBeanBurgerPrice" ReadOnly="True" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Width="45px">1.49</asp:TextBox>
                </div>
            </div>
            <div id="Drinks"><!--All the drinks items-->
                <div id="drinksTtile">
                    <asp:Label ID="lblDrinksTitle" runat="server" Text="Drinks" Font-Bold="True" Font-Size="16pt"></asp:Label>
                </div>
                <div id="7UP">
                    <asp:CheckBox ID="chkBox7UP" runat="server" CssClass="chkBox7UP" Text="7UP " AutoPostBack="True" OnCheckedChanged="chkBox7UP_CheckedChanged" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl7UPQuantity" runat="server" Text="Quantity: " CssClass="lbl7UPQuantity"></asp:Label>
                    <asp:TextBox ID="txt7UPQuantity" runat="server" BackColor="#FF8080" BorderStyle="None" CssClass="txt7UPQuantity" TextMode="Number" Width="45px">1</asp:TextBox>
                    <asp:Label ID="lbl7UPPrice" runat="server" Text="Price: £" CssClass="lbl7UPPrice"></asp:Label>
                    <asp:TextBox ID="txt7UPPrice" runat="server" BackColor="White" BorderStyle="None" CssClass="txt7UPPrice" Font-Bold="True" Font-Names="Bahnschrift" ReadOnly="True" TextMode="Number" Width="45px">0.59</asp:TextBox>
                </div>
                <div id="Pepsi">
                    <asp:CheckBox ID="chkBoxPepsi" runat="server" AutoPostBack="True" CssClass="chkBoxPepsi" OnCheckedChanged="chkBoxPepsi_CheckedChanged" Text="Pepsi " />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblPepsiQuantity" runat="server" Text="Quantity: " CssClass="lblPepsiQuantity"></asp:Label>
                    <asp:TextBox ID="txtPepsiQuantity" runat="server" BackColor="#FF8080" BorderStyle="None" CssClass="txtPepsiQuantity" TextMode="Number" Width="45px">1</asp:TextBox>
                    <asp:Label ID="lblPepsiPrice" runat="server" Text="Price: £" CssClass="lblPepsiPrice"></asp:Label>
                    <asp:TextBox ID="txtPepsiPrice" runat="server" BackColor="White" BorderStyle="None" CssClass="txtPepsiPrice" Font-Bold="True" Font-Names="Bahnschrift" ReadOnly="True" TextMode="Number" Width="45px">0.59</asp:TextBox>
                </div>
                <div id="Coke">
                    <asp:CheckBox ID="chkBoxCoke" runat="server" AutoPostBack="True" CssClass="chkBoxCoke" OnCheckedChanged="chkBoxCoke_CheckedChanged" Text="Coke " />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblCokeQuantity" runat="server" Text="Quantity: " CssClass="lblCokeQuantity"></asp:Label>
                    <asp:TextBox ID="txtCokeQuantity" runat="server" BackColor="#FF8080" BorderStyle="None" CssClass="txtCokeQuantity" TextMode="Number" Width="45px">1</asp:TextBox>
                    <asp:Label ID="lblCokePrice" runat="server" Text="Price: £" CssClass="lblCokePrice"></asp:Label>
                    <asp:TextBox ID="txtCokePrice" runat="server" BackColor="White" BorderStyle="None" CssClass="txtCokePrice" Font-Bold="True" Font-Names="Bahnschrift" ReadOnly="True" TextMode="Number" Width="45px">0.69</asp:TextBox>
                </div>
                <div id="IrnBru">
                    <asp:CheckBox ID="chkBoxIrnBru" runat="server" AutoPostBack="True" CssClass="chkBoxIrnBru" OnCheckedChanged="chkBoxIrnBru_CheckedChanged" Text="Irn Bru " />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblIrnBruQuantity" runat="server" Text="Quantity: " CssClass="lblIrnBruQuantity"></asp:Label>
                    <asp:TextBox ID="txtIrnBruQuantity" runat="server" BackColor="#FF8080" BorderStyle="None" CssClass="txtIrnBruQuantity" TextMode="Number" Width="45px">1</asp:TextBox>
                    <asp:Label ID="lblIrnBruPrice" runat="server" Text="Price: £" CssClass="lblIrnBruPrice"></asp:Label>
                    <asp:TextBox ID="txtIrnBruPrice" runat="server" BackColor="White" BorderStyle="None" CssClass="txtIrnBruPrice" Font-Bold="True" Font-Names="Bahnschrift" ReadOnly="True" TextMode="Number" Width="45px">0.49</asp:TextBox>
                </div>
                <div id="RubiconMnago">
                    <asp:CheckBox ID="chkBoxRubiconMnago" runat="server" AutoPostBack="True" CssClass="chkBoxRubiconMnago" OnCheckedChanged="chkBoxRubiconMnago_CheckedChanged" Text="Rubicon Mango " />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblRubiconMnagoQuantity" runat="server" Text="Quantity: " CssClass="lblRubiconMnagoQuantity"></asp:Label>
                    <asp:TextBox ID="txtRubiconMnagoQuantity" runat="server" BackColor="#FF8080" BorderStyle="None" CssClass="txtRubiconMnagoQuantity" TextMode="Number" Width="45px">1</asp:TextBox>
                    <asp:Label ID="lblRubiconMnagoPrice" runat="server" Text="Price: £" CssClass="lblRubiconMnagoPrice"></asp:Label>
                    <asp:TextBox ID="txtRubiconMnagoPrice" runat="server" BackColor="White" BorderStyle="None" CssClass="txtRubiconMnagoPrice" Font-Bold="True" Font-Names="Bahnschrift" ReadOnly="True" TextMode="Number" Width="45px">0.69</asp:TextBox>
                </div>
                <div id="FantaOrange">
                    <asp:CheckBox ID="chkBoxFantaOrange" runat="server" AutoPostBack="True" CssClass="chkBoxFantaOrange" OnCheckedChanged="chkBoxFantaOrange_CheckedChanged" Text="Fanta Orange " />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblFantaOrangeQuantity" runat="server" Text="Quantity: " CssClass="lblFantaOrangeQuantity"></asp:Label>
                    <asp:TextBox ID="txtFantaOrangeQuantity" runat="server" BackColor="#FF8080" BorderStyle="None" CssClass="txtFantaOrangeQuantity" TextMode="Number" Width="45px">1</asp:TextBox>
                    <asp:Label ID="lblFantaOrangePrice" runat="server" Text="Price: £" CssClass="lblFantaOrangePrice"></asp:Label>
                    <asp:TextBox ID="txtFantaOrangePrice" runat="server" BackColor="White" BorderStyle="None" CssClass="txtFantaOrangePrice" Font-Bold="True" Font-Names="Bahnschrift" ReadOnly="True" TextMode="Number" Width="45px">0.59</asp:TextBox>
                </div>
                <div id="Rio">
                    <asp:CheckBox ID="chkBoxRio" runat="server" AutoPostBack="True" CssClass="chkBoxRio" OnCheckedChanged="chkBoxRio_CheckedChanged" Text="Rio " />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblRioQuantity" runat="server" Text="Quantity: " CssClass="lblRioQuantity"></asp:Label>
                    <asp:TextBox ID="txtRioQuantity" runat="server" BackColor="#FF8080" BorderStyle="None" CssClass="txtRioQuantity" TextMode="Number" Width="45px">1</asp:TextBox>
                    <asp:Label ID="lblRioPrice" runat="server" Text="Price: £" CssClass="lblRioPrice"></asp:Label>
                    <asp:TextBox ID="txtRioPrice" runat="server" BackColor="White" BorderStyle="None" CssClass="txtRioPrice" Font-Bold="True" Font-Names="Bahnschrift" ReadOnly="True" TextMode="Number" Width="45px">0.59</asp:TextBox>
                </div>
                <div id="Water">
                    <asp:CheckBox ID="chkBoxWater" runat="server" AutoPostBack="True" CssClass="chkBoxWater" OnCheckedChanged="chkBoxWater_CheckedChanged" Text="Bottled Water " />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblWaterQuantity" runat="server" Text="Quantity: " CssClass="lblWaterQuantity"></asp:Label>
                    <asp:TextBox ID="txtWaterQuantity" runat="server" BackColor="#FF8080" BorderStyle="None" CssClass="txtWaterQuantity" TextMode="Number" Width="45px">1</asp:TextBox>
                    <asp:Label ID="lblWaterPrice" runat="server" Text="Price: £" CssClass="lblWaterPrice"></asp:Label>
                    <asp:TextBox ID="txtWaterPrice" runat="server" BackColor="White" BorderStyle="None" CssClass="txtWaterPrice" Font-Bold="True" Font-Names="Bahnschrift" ReadOnly="True" TextMode="Number" Width="45px">0.99</asp:TextBox>
                </div>
                <div id="NotesLabel"><!--The label for the notes listbox-->
                    <asp:Label ID="lblNotes" runat="server" Text="Notes" CssClass="lblNotes" Font-Bold="True" Font-Size="16pt"></asp:Label>
                </div>
                <div id="Notes"><!--The notes listbox-->
                    <asp:TextBox ID="txtNotes" runat="server" Height="93px" TextMode="MultiLine" Width="445px"></asp:TextBox>
                </div>
                <div id="footer"><!-- This is the footer and its at the bottom of the page.-->
                    <address>
                        Created By Awais Tasleem
                    </address>
                    <address>
                        Company Name is: Awais Good Food
                    </address>
                    <address>
                        Located in Oldham
                    </address>
               </div>
          </div>
        </div>
    </form>
</body>
</html>
