<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <div  >
       <h1 class="text-center"> <strong>CvDesigner</strong> </h1>
         <h2 class="text-center" style="color: #0000FF">Completez ce formulaire avec vos informations</h2>
       <br />
        
       <table  >
               <tr>
                   <td style="width: 433px">&nbsp;</td>
                   <td style="width: 1082px">
                       <asp:TextBox ID="idp" runat="server" ReadOnly="True" BorderStyle="None" ></asp:TextBox> <!--controles serverur , s'esecute IIS -->    
                   </td>
               </tr>
               <tr >
                   <td  class="col-lg-2 control-label; text-center " ><strong>FirstName</strong></td>
                   <td style="width: 1082px"  >
                       <asp:TextBox ID="TextBox2"  TextMode="MultiLine" runat="server" Rows="1"  style =" max-width : 1000px" Width= "820px" class="form-control" ></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="col-lg-2 control-label ; text-center "><strong>LastName</strong></td>
                   <td style="width: 1082px">
                       <asp:TextBox ID="TextBox3" TextMode="MultiLine" runat="server" Rows="1" style =" max-width : 1000px" Width= "820px" class="form-control"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="col-lg-2 control-label ; text-center "><strong>Age</strong></td>
                   <td style="width: 1082px">
                       <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Rows="1" class="form-control" style =" max-width : 1000px" Width= "820px"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="col-lg-2 control-label ; text-center "><strong>Address</strong></td>
                   <td style="width: 1082px">
                       <asp:TextBox ID="TextBox5" runat="server" Rows="3" class="form-control" TextMode="MultiLine" style =" max-width : 1000px" Width= "820px"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="col-lg-2 control-label ; text-center "><strong>City</strong></td>
                   <td style="width: 1082px; height: 24px;">
                       <asp:TextBox ID="TextBox6" runat="server" Rows="1" TextMode="MultiLine" class="form-control" style =" max-width : 1000px" Width= "820px"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="col-lg-2 control-label ; text-center "><strong>Country</strong></td>
                   <td style="width: 1082px">
                       <asp:TextBox ID="TextBox7" runat="server" Rows="1" TextMode="MultiLine" class="form-control" style =" max-width : 1000px" Width= "820px"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="col-lg-2 control-label ; text-center "><strong>Photo</strong></td>
                   <td style="width: 1082px">
                       <asp:FileUpload ID="FileUpload1" runat="server" Width="272px" />
                       <asp:TextBox ID="TextBox19" runat="server" BorderStyle="None"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="col-lg-2 control-label ; text-center "><strong>Information</strong></td>
                   <td style="width: 1082px; margin-left: 80px;">
                       <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine" Rows="8" class="form-control" style =" max-width : 1000px" Width= "820px"></asp:TextBox>
                   </td>
               </tr>
            
               
           </table>
           
        <br />
       <hr />
       <table class="nav-justified">
           <tr>
               <td style="width: 433px">&nbsp;</td>
               <td style="width: 612px">
                   <asp:TextBox ID="TextBox9" runat="server" ReadOnly="True" BorderStyle="None"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="col-lg-2 control-label ; text-center "><strong>Formation</strong></td>
               
               <td   >
                   <asp:TextBox ID="TextBox10" runat="server" TextMode="MultiLine" Rows="8"  class="form-control" style =" max-width : 1000px" Width= "820px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="width: 433px">&nbsp;</td>
               <td style="width: 612px">
                   <asp:TextBox ID="TextBox11" runat="server" ReadOnly="True" BorderStyle="None"></asp:TextBox>
               </td>
           </tr>
          
       </table>
       <br />
       <hr />
       <table class="nav-justified">
           <tr>
               <td style="width: 359px">&nbsp;</td>
               <td style="width: 612px">
                   <asp:TextBox ID="TextBox12" runat="server" ReadOnly="True" BorderStyle="None"></asp:TextBox>
               </td>
           </tr>
           <tr>

               <td class="col-lg-2 control-label ; text-center "><strong>Compétences</strong></td>
               
               <td  >
                   <asp:TextBox ID="TextBox13" runat="server" TextMode="MultiLine" Rows="8"  class="form-control" style =" max-width : 1000px" Width= "820px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="width: 359px">&nbsp;</td>
               <td style="width: 612px">
                   <asp:TextBox ID="TextBox14" runat="server" ReadOnly="True" BorderStyle="None"></asp:TextBox>
               </td>
           </tr>
       </table>
        <br />
       <hr />
       <table class="nav-justified">
           <tr>
               <td style="width: 433px">&nbsp;</td>
               <td style="width: 612px">
                   <asp:TextBox ID="TextBox15" runat="server" ReadOnly="True" BorderStyle="None"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="col-lg-2 control-label ; text-center "><strong>Langue</strong></td>
              
               <td>
                   <asp:TextBox ID="TextBox16" runat="server" TextMode="MultiLine" Rows="8"  class="form-control" style =" max-width : 1000px" Width= "820px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="width: 433px">&nbsp;</td>
               <td style="width: 612px">
                   <asp:TextBox ID="TextBox17" runat="server" ReadOnly="True" BorderStyle="None"></asp:TextBox>
               </td>
           </tr>
     

       </table>
         <div class="col-lg-offset-2 col-lg-10"  > 
         <strong>
                      
         <asp:Button ID="Button1" runat="server"  OnClick="Button1_Click" Text="Save And Generate CV"  class="btn btn-primary"   BackColor="Blue" BorderStyle="Ridge"  />
                 
         </strong>
             </div>

      <!--  <br />
         <hr />
       <h3>Generate your CV&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h3>
       <table class="nav-justified">
           <tr>
               <td style="width: 433px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter your ID </td>
               <td style="width: 612px">
                   <asp:TextBox ID="TextBox18" runat="server" Width="272px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="width: 408px">&nbsp;</td>
               <td style="width: 612px; margin-left: 80px;">
                   
               </td>
           </tr>
        
       </table>
         <asp:Button ID="Button2" runat="server" Text="Gnerate" Width="137px" OnClick="Button2_Click1" style="margin-left: 422px" />-->
         <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />

   </div>

    
</asp:Content>
