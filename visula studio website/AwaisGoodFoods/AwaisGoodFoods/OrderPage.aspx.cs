using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net; //This is a libarary
using System.Net.Mail; // This is a library

public partial class OrderPage : System.Web.UI.Page
{

    //static int a = 2;

        //remeber to add a notes box in to


    protected void Page_Load(object sender, EventArgs e)
    {
        //string starter = Session["starts"].ToString();
        int a;
        try
        {
            a = System.Convert.ToInt32(Session["A"]);
        }
        catch (Exception ex)
        {
            // error message
            //ex.Message;
            //txtTest1.Text = ex.Message;
        }

        // Basket

        // Basket basket = (Basket)Session["starts"];

        lstarithmeticbox.Visible = false;//This makes the box invisible

    }

    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        //if (RadioButton1.Checked)
        //{
            //lstOutput.Text = "It has worked";
        //}
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void chkBoxPakora_CheckedChanged(object sender, EventArgs e)
    {
        StarteritemsToAdd();//Calling the StarterterItemsToAdd class
    }

    protected void chkBoxSamosa_CheckedChanged(object sender, EventArgs e)
    {
        StarteritemsToAdd();//Calling the StarterterItemsToAdd class
    }

    protected void chkBoxChickenWings_CheckedChanged(object sender, EventArgs e)
    {
        StarteritemsToAdd();//Calling the StarterterItemsToAdd class
    }

    public void totalPrice()//Method that adds the prices together and gives a final price
    {
        decimal sum = 0;//Public variable
        for (int i = 0; i < lstarithmeticbox.Items.Count; i++)//if Statement that sums all the items int he hidden text box and the answer is put in the sum variable.
        {
            sum += Convert.ToDecimal(lstarithmeticbox.Items[i].ToString());
        }

        //string recipt;
        //for (int i = 0; i < lstarithmeticbox.Items.Count; i++)
        //{
        //recipt = lstarithmeticbox.Text;
        //txtReciptTextBox.Text = recipt;
        //}

        txtMthsResult.Text = Convert.ToString(sum);//This is asigning the contetnts of the txtMtathsReuslt text box with the variable sum
    }
    public void StarteritemsToAdd() //this is a method that adds starter items to the recipt
    {

        if (chkBoxChickenWings.Checked)
        {
            int a;     //Couldnt use sesion because i ran out of time
            double b;// Assigning variables
            a = System.Convert.ToInt32(txtChickenWingsQuantity.Text);//Converting the contents of the textboxes into a valid number
            b = System.Convert.ToDouble(txtChickenWingsPrice.Text);
            lstResult.Items.Add("Item: Chicken Wings " + " Quantity: " + txtChickenWingsQuantity.Text + " " + "Price: £" + (a * b));//This if filling the list box with the selected item with the price aswell
            lstarithmeticbox.Items.Add("" + (a * b));//Putting the price in the hidden text box
            totalPrice();//Calling the totalPrice class
            chkBoxChickenWings.Checked = false;//Unchecking the check box
        }

        if (chkBoxSeekhKebabs.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtSeekhKebabQuantity.Text);
            b = System.Convert.ToDouble(txtSeekhKebabPrice.Text);
            lstResult.Items.Add("Item: Seekh Kebabs " + " Quantity: " + txtSeekhKebabQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            chkBoxSeekhKebabs.Checked = false;
        }

        if (chkBoxStartChickenTikka.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtStartChickenTikkaQuantity.Text);
            b = System.Convert.ToDouble(txtStartChickenTikkaPrice.Text);
            lstResult.Items.Add("Item: Chicken Tikka " + " Quantity: " + txtStartChickenTikkaQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            chkBoxStartChickenTikka.Checked = false;
        }

        if (chkBoxPakora.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtPakoraQuantity.Text);
            b = System.Convert.ToDouble(txtPakoraPrice.Text);
            lstResult.Items.Add("Item: Pakora " + " Quantity: " + txtPakoraQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            chkBoxPakora.Checked = false;
        }

        if (chkBoxSamosa.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtSamosaQuantity.Text);
            b = System.Convert.ToDouble(txtSamosaPrice.Text);
            lstResult.Items.Add("Item: Samosa " + " Quantity: " + txtSamosaQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            chkBoxSamosa.Checked = false;
        }

        if (chkBoxChips.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtChipsQuantity.Text);
            b = System.Convert.ToDouble(txtChipsPrice.Text);
            lstResult.Items.Add("Item: Chips " + " Quantity: " + txtChipsQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            chkBoxChips.Checked = false;
        }

        if (chkBoxRoti.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtRotiQuantity.Text);
            b = System.Convert.ToDouble(txtRotiPrice.Text);
            lstResult.Items.Add("Item: Roti " + " Quantity: " + txtRotiQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            chkBoxRoti.Checked = false;
        }

        if (chkBoxNaan.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtNaanQuantity.Text);
            b = System.Convert.ToDouble(txtNaanPrice.Text);
            lstResult.Items.Add("Item: Naan " + " Quantity: " + txtNaanQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            chkBoxNaan.Checked = false;
        }
    }

    public void KebabsToAdd()//this is a method that adds kebab items to the recipt
    {
        if (ChkBoxDonnar.Checked)
        {
            int a;// Assigning variables
            double b;
            a = System.Convert.ToInt32(txtDonnarQuantity.Text);//Converting the contents of the textboxes into a valid number
            b = System.Convert.ToDouble(txtDonnarPrice.Text);
            lstResult.Items.Add("Item: Donnar " + " Quantity: " + txtDonnarQuantity.Text + " " + "Price: £" + (a * b));//This if filling the list box with the selected item with the price aswell
            lstarithmeticbox.Items.Add("" + (a * b));//Putting the price in the hidden text box
            totalPrice();//Calling the totalPrice class
            ChkBoxDonnar.Checked = false;//Unchecking the check box
        }

        if (ChkBoxChickenDonnar.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtChickenDonnarQuantity.Text);
            b = System.Convert.ToDouble(txtChickenDonnarPrice.Text);
            lstResult.Items.Add("Item: Chicken Donnar " + " Quantity: " + txtChickenDonnarQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            ChkBoxChickenDonnar.Checked = false;
        }

        if (ChkBoxChickenTikka.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtChickenTikkaQuantity.Text);
            b = System.Convert.ToDouble(txtChickenTikkaPrice.Text);
            lstResult.Items.Add("Item: Chicken Tikka " + " Quantity: " + txtChickenTikkaQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            ChkBoxChickenTikka.Checked = false;
        }

        if (ChkBoxMixKebabs.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtMixKebabsQuantity.Text);
            b = System.Convert.ToDouble(txtMixKebabsPrice.Text);
            lstResult.Items.Add("Item: Mix Kebabs " + " Quantity: " + txtMixKebabsQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            ChkBoxMixKebabs.Checked = false;
        }

        if(ChkBoxShashlick.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtShashlickQuantity.Text);
            b = System.Convert.ToDouble(txtShaslickPrice.Text);
            lstResult.Items.Add("Item: Shashlick " + " Quantity: " + txtShashlickQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            ChkBoxShashlick.Checked = false;
        }

        if (ChckBoxChickenShawrma.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtChickenShawrmaQuantity.Text);
            b = System.Convert.ToDouble(txtChickenShawrmaPrice.Text);
            lstResult.Items.Add("Item: Chicken Shawrma " + " Quantity: " + txtChickenShawrmaQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            ChckBoxChickenShawrma.Checked = false;
        }

        if (ChckBoxLambShawrma.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtLambShawrmaQuantity.Text);
            b = System.Convert.ToDouble(txtLambShawrmaPrice.Text);
            lstResult.Items.Add("Item: Lamb Shawrma " + " Quantity: " + txtLambShawrmaQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            ChckBoxLambShawrma.Checked = false;
        }

        if (ChckBoxMixShawrma.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtMixShawrmaQuantity.Text);
            b = System.Convert.ToDouble(txtMixShawrmaPrice.Text);
            lstResult.Items.Add("Item: Mix Shawrma " + " Quantity: " + txtMixShawrmaQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            ChckBoxMixShawrma.Checked = false;
        }
    }

    public void burgersToAdd()//this is a method that adds burgers items to the recipt
    {
        if (chckBoxChickenBurger.Checked)
        {
            int a;// Assigning variables
            double b;
            a = System.Convert.ToInt32(txtChickenBurgerQuantity.Text);//Converting the contents of the textboxes into a valid number
            b = System.Convert.ToDouble(txtChickenBurgerPrice.Text);
            lstResult.Items.Add("Item: Chicken Burger " + " Quantity: " + txtChickenBurgerQuantity.Text + " " + "Price: £" + (a * b));//This if filling the list box with the selected item with the price aswell
            lstarithmeticbox.Items.Add("" + (a * b));//Putting the price in the hidden text box
            totalPrice();//Calling the totalPrice class
            chckBoxChickenBurger.Checked = false;//Unchecking the check box
        }

        if (chckBoxChickenFillet.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtChickenFilletQuantity.Text);
            b = System.Convert.ToDouble(txtChickenFilletPrice.Text);
            lstResult.Items.Add("Item: Chicken Fillet Burger " + " Quantity: " + txtChickenFilletQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            chckBoxChickenFillet.Checked = false;
        }

        if (chckBoxCheeseBurger.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtCheeseBurgerQunatity.Text);
            b = System.Convert.ToDouble(txtCheeseBurgerPrice.Text);
            lstResult.Items.Add("Item: Cheese Burger " + " Quantity: " + txtCheeseBurgerQunatity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            chckBoxCheeseBurger.Checked = false;
        }

        if (chkBoxBeefBurger.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtBeefBurgerQuantity.Text);
            b = System.Convert.ToDouble(txtBeefBurgerprice.Text);
            lstResult.Items.Add("Item: Beef Burger " + " Quantity: " + txtBeefBurgerQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            chkBoxBeefBurger.Checked = false;
        }

        if (chkBoxDonnarBurger.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtDonnarBurgerQuantity.Text);
            b = System.Convert.ToDouble(txtDonnarBurgerprice.Text);
            lstResult.Items.Add("Item: Donner Burger " + " Quantity: " + txtDonnarBurgerQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            chkBoxDonnarBurger.Checked = false;
        }

        if (chkBoxFishFilletBurger.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtFishFilletBuergerQuantity.Text);
            b = System.Convert.ToDouble(txtFishFilletBuergerPrice.Text);
            lstResult.Items.Add("Item: Fish Fillet Burger " + " Quantity: " + txtFishFilletBuergerQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            chkBoxFishFilletBurger.Checked = false;
        }

        if (chkBoxVegieBurger.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtVegieBurgerQuantity.Text);
            b = System.Convert.ToDouble(txtVegieBurgerPrice.Text);
            lstResult.Items.Add("Item: Vegie Burger " + " Quantity: " + txtVegieBurgerQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            chkBoxVegieBurger.Checked = false;
        }

        if (chkBoxBeanBurger.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtBeanBurgerQuantity.Text);
            b = System.Convert.ToDouble(txtBeanBurgerPrice.Text);
            lstResult.Items.Add("Item: Bean Burger " + " Quantity: " + txtBeanBurgerQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            chkBoxBeanBurger.Checked = false;
        }
    }

    public void DrinksToAdd()//this is a method that adds drinks items to the recipt
    {
        if (chkBox7UP.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txt7UPQuantity.Text);//Converting the contents of the textboxes into a valid number
            b = System.Convert.ToDouble(txt7UPPrice.Text);
            lstResult.Items.Add("Item: 7UP " + " Quantity: " + txt7UPQuantity.Text + " " + "Price: £" + (a * b));//This if filling the list box with the selected item with the price aswell
            lstarithmeticbox.Items.Add("" + (a * b));//Putting the price in the hidden text box
            totalPrice();//Calling the totalPrice class
            chkBox7UP.Checked = false;//Unchecking the check box
        }

        if (chkBoxPepsi.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtPepsiQuantity.Text);
            b = System.Convert.ToDouble(txtPepsiPrice.Text);
            lstResult.Items.Add("Item: Pepsi " + " Quantity: " + txtPepsiQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            chkBoxPepsi.Checked = false;
        }

        if (chkBoxCoke.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtCokeQuantity.Text);
            b = System.Convert.ToDouble(txtCokePrice.Text);
            lstResult.Items.Add("Item: Coke " + " Quantity: " + txtCokeQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            chkBoxCoke.Checked = false;
        }

        if (chkBoxIrnBru.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtIrnBruQuantity.Text);
            b = System.Convert.ToDouble(txtIrnBruPrice.Text);
            lstResult.Items.Add("Item: Irn Bru " + " Quantity: " + txtIrnBruQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            chkBoxIrnBru.Checked = false;
        }

        if (chkBoxRubiconMnago.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtRubiconMnagoQuantity.Text);
            b = System.Convert.ToDouble(txtRubiconMnagoPrice.Text);
            lstResult.Items.Add("Item: Rubicon Mango " + " Quantity: " + txtRubiconMnagoQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            chkBoxRubiconMnago.Checked = false;
        }

        if (chkBoxFantaOrange.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtFantaOrangeQuantity.Text);
            b = System.Convert.ToDouble(txtFantaOrangePrice.Text);
            lstResult.Items.Add("Item: Fanta Orange " + " Quantity: " + txtFantaOrangeQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            chkBoxFantaOrange.Checked = false;
        }

        if (chkBoxRio.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtRioQuantity.Text);
            b = System.Convert.ToDouble(txtRioPrice.Text);
            lstResult.Items.Add("Item: Rio " + " Quantity: " + txtFantaOrangeQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            chkBoxRio.Checked = false;
        }

        if (chkBoxWater.Checked)
        {
            int a;
            double b;
            a = System.Convert.ToInt32(txtWaterQuantity.Text);
            b = System.Convert.ToDouble(txtWaterPrice.Text);
            lstResult.Items.Add("Item: Bottled Water " + " Quantity: " + txtWaterQuantity.Text + " " + "Price: £" + (a * b));
            lstarithmeticbox.Items.Add("" + (a * b));
            totalPrice();
            chkBoxWater.Checked = false;
        }
    }

    protected void chkBoxSeekhKebabs_CheckedChanged(object sender, EventArgs e)
    {
        StarteritemsToAdd();//Calling the StarterterItemsToAdd class
    }

    protected void chkBoxStartChickenTikka_CheckedChanged(object sender, EventArgs e)
    {
        StarteritemsToAdd();//Calling the StarterterItemsToAdd class
    }

    protected void chkBoxChips_CheckedChanged(object sender, EventArgs e)
    {
        StarteritemsToAdd();//Calling the StarterterItemsToAdd class
    }

    protected void chkBoxRoti_CheckedChanged(object sender, EventArgs e)
    {
        StarteritemsToAdd();//Calling the StarterterItemsToAdd class
    }

    protected void chkBoxNaan_CheckedChanged(object sender, EventArgs e)
    {
        StarteritemsToAdd();//Calling the StarterterItemsToAdd class
    }

    protected void ChkBoxDonnar_CheckedChanged(object sender, EventArgs e)
    {
        KebabsToAdd();//Calling the KebabsToAdd class
    }

    protected void ChkBoxChickenDonnar_CheckedChanged(object sender, EventArgs e)
    {
        KebabsToAdd();//Calling the KebabsToAdd class
    }

    protected void ChkBoxChickenTikka_CheckedChanged(object sender, EventArgs e)
    {
        KebabsToAdd();//Calling the KebabsToAdd class
    }

    protected void ChkBoxMixKebabs_CheckedChanged(object sender, EventArgs e)
    {
        KebabsToAdd();//Calling the KebabsToAdd class
    }

    protected void ChkBoxShashlick_CheckedChanged(object sender, EventArgs e)
    {
        KebabsToAdd();//Calling the KebabsToAdd class
    }

    protected void ChckBoxChickenShawrma_CheckedChanged(object sender, EventArgs e)
    {
        KebabsToAdd();//Calling the KebabsToAdd class
    }

    protected void ChckBoxLambShawrma_CheckedChanged(object sender, EventArgs e)
    {
        KebabsToAdd();//Calling the KebabsToAdd class
    }

    protected void ChckBoxMixShawrma_CheckedChanged(object sender, EventArgs e)
    {
        KebabsToAdd();//Calling the KebabsToAdd class
    }

    protected void txtStartChickenTikkaQuantity_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        //This button clears all the text boxes adn list boxes when the clear button is clicked
        txtFirstNname.Text = "";
        txtSurname.Text = "";
        txtEmail.Text = "";
        lstarithmeticbox.Items.Clear();
        lstResult.Items.Clear();
        txtMthsResult.Text = "";
        txtNotes.Text = "";
    }

    protected void lstarithmeticbox_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void txtLambShawrma_TextChanged(object sender, EventArgs e)
    {

    }


    public void confirmingOrder()
    {
        //This makes a stirng list that has all the items from the results textbox
        string list = string.Empty;
        for (int i = 0; i < lstResult.Items.Count; ++i)
        {
            list += lstResult.Items[i].ToString() + "\n";
        }

        try//Its a validation check
        {
            //This is the code that sends an email with all the menu items and the individual price and the total price aswell.
            SmtpClient client = new SmtpClient("smtp-mail.outlook.com", 587);//Makes a new smtp client that pings the outlook server on port 587
            client.EnableSsl = true; //This is the encryption used
            client.DeliveryMethod = SmtpDeliveryMethod.Network; //This is the delivery method
            client.UseDefaultCredentials = false;
            client.Credentials = new NetworkCredential("AGFAwais@outlook.com", "a1a2a3a4");//This is the details of the email that the confirmation email will send
            MailMessage mailMessage = new MailMessage();
            mailMessage.To.Add(txtEmail.Text);//This is the customers email and it gets it from the email text box
            mailMessage.From = new MailAddress("AGFAwais@outlook.com");//This is the from email
            mailMessage.Subject = txtFirstNname.Text + " " + txtSurname.Text;//This is the customer name
            //mailMessage.Body = ("Price: £" + txtMthsResult.Text + "" + txtReciptTextBox.Text);
            mailMessage.Body = "Awais Good Foods" + "\n" + "\n" + "Customer Name:" + txtFirstNname.Text + txtSurname.Text +  "\n" + "Customer Email: " + txtEmail.Text + "\n" + "\n" +  "Your Order:" + "\n" + list + "\n" + "Notes: " + "\n" + txtNotes.Text + "\n" + "\n" + "Total Price: £" + txtMthsResult.Text;//The contents of the email, all the fod items and the prices and the customer details
            client.Send(mailMessage);//This sends the email
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Order Has been Succesfully Sent');", true);//Popup that tells the user that the eamil has been sent
        }
        catch (Exception ex)
        {
            Response.Write("could not send food Order " + ex.Message);//This the message if the email cant be sent
        }

        //When the method is called, it clears all the text boxes and list boxes.
        txtFirstNname.Text = "";
        txtSurname.Text = "";
        txtEmail.Text = "";
        lstarithmeticbox.Items.Clear();
        lstResult.Items.Clear();
        txtMthsResult.Text = "";
        txtNotes.Text = "";
    }
    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        confirmingOrder();//Calling the Confirming class
    }

    protected void txtChickenWingsPrice_TextChanged(object sender, EventArgs e)
    {
        
    }


    protected void chckBoxChickenBurger_CheckedChanged(object sender, EventArgs e)
    {
        burgersToAdd();//Calling the BurgersToAdd class
    }

    protected void chckBoxChickenFillet_CheckedChanged(object sender, EventArgs e)
    {
        burgersToAdd();//Calling the BurgersToAdd class
    }

    protected void chckBoxCheeseBurger_CheckedChanged(object sender, EventArgs e)
    {
        burgersToAdd();//Calling the BurgersToAdd class
    }

    protected void chkBoxBeefBurger_CheckedChanged(object sender, EventArgs e)
    {
        burgersToAdd();//Calling the BurgersToAdd class
    }

    protected void chkBoxDonnarBurger_CheckedChanged(object sender, EventArgs e)
    {
        burgersToAdd();//Calling the BurgersToAdd class
    }

    protected void chkBoxFishFilletBurger_CheckedChanged(object sender, EventArgs e)
    {
        burgersToAdd();//Calling the BurgersToAdd class
    }

    protected void chkBoxVegieBurger_CheckedChanged(object sender, EventArgs e)
    {
        burgersToAdd();//Calling the BurgersToAdd class
    }

    protected void chkBoxBeanBurger_CheckedChanged(object sender, EventArgs e)
    {
        burgersToAdd();//Calling the BurgersToAdd class
    }

    protected void chkBox7UP_CheckedChanged(object sender, EventArgs e)
    {
        DrinksToAdd();//Calling the DrinksToAdd class
    }

    protected void chkBoxCoke_CheckedChanged(object sender, EventArgs e)
    {
        DrinksToAdd();//Calling the DrinksToAdd class
    }

    protected void chkBoxPepsi_CheckedChanged(object sender, EventArgs e)
    {
        DrinksToAdd();//Calling the DrinksToAdd class
    }

    protected void chkBoxIrnBru_CheckedChanged(object sender, EventArgs e)
    {
        DrinksToAdd();//Calling the DrinksToAdd class
    }

    protected void chkBoxRubiconMnago_CheckedChanged(object sender, EventArgs e)
    {
        DrinksToAdd();//Calling the DrinksToAdd class
    }

    protected void chkBoxFantaOrange_CheckedChanged(object sender, EventArgs e)
    {
        DrinksToAdd();//Calling the DrinksToAdd class
    }

    protected void chkBoxRio_CheckedChanged(object sender, EventArgs e)
    {
        DrinksToAdd();//Calling the DrinksToAdd class
    }

    protected void chkBoxWater_CheckedChanged(object sender, EventArgs e)
    {
        DrinksToAdd();//Calling the DrinksToAdd class
    }

    protected void btnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/MainPage.aspx");//This goes to the homepage
    }

    protected void btnOrder_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/MenuPage.aspx");//This goes to the menu page
    }
}