<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"  CodeFile="Main Page.aspx.cs" Inherits="Main_Page" Theme="Theme1" StyleSheetTheme="Theme1"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <title>Main Page</title>
</asp:Content> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <link href="style3.css" rel="stylesheet"/>
  <script src="Javascript/jquery1.js"></script>
  <script src="Javascript/jquery2.js"></script>
    <body>
     <form id="form1" runat="server">
         <br /><br /><br />
     <div style="height: 300px">
                  <!--------------Blogger Starts   ------------->
         
         <div class="css-slideshow" style="background-color:grey; top: -57px; left: 681px; width: 553px;">
           <Center>
               <asp:Label ID="bloglattest" runat="server">Lattest News</asp:Label> 
               </Center>
         </div>
                                <asp:Image  ID="blog1" runat="server" style = "background-color:white; position: absolute; left: 72.8em; top: 12em; width: 9.8em; height: 6.6em;"/> 

                                <asp:Image  ID="blog2" runat="server" style = "background-color:white; position: absolute; left: 72.8em; top: 20.4em; width: 9.8em; height: 6.6em;" /> 

           <asp:Image  ID="blog3" runat="server" style = "background-color:white; position: absolute; left: 72.8em; top: 28.8em; width: 9.8em; height: 6.6em;" /> 
          

         <!--------------Blogger ends   ------------->

                 <!--------------Slideshow Starts   ------------->
         <div style="margin-left:50px;">
    <div class="css-slideshow" style="margin-top:90px; top: -567px;">
    <figure>
        <asp:Image  ID="Imag1" runat="server" alt="class-header-device" width="495" height="370" class="alignnone size-full wp-image-177" /> 
                                                                            <!-------- Text bar1 starts  ---->
                         							<div  >
		<a  class="kicker" id="tb1a" runat="server"></a>		
                                <h3>
                                    <a  id="slideshowa1" runat="server"></a>

                                </h3>
                                 <div class="deck">
                                  <a id="tb1aa1" runat="server">  
                                      
                                      </a> 
                                  </div>
					       <a class="authorhero" id="au1" runat="server">
                    <asp:Image  ID="Image13" runat="server" alt="Bluechip" width="25" height="25" class="lazy" /> 
					</a>
				
				<div class="byline"><a  id="author1" runat="server"></a></div>
							
							   <a id="time39" runat="server"> </a>
						</div>   
                         <!-------- Text bar1 Ends  ---->
     </figure>
    <figure>
        <asp:Image  ID="Imag2" runat="server" alt="class-header-device" width="495" height="370" class="alignnone size-full wp-image-177" /> 
                                                                            <!-------- Text bar2 starts  ---->
                         							<div  >
		<a  class="kicker" id="tb2a" runat="server"></a>		
                                <h3>
                                    <a id="slideshowa2" runat="server"></a>

                                </h3>
                                 <div class="deck">
                                       <a id="tb1aa2" runat="server">  
                                      </a>                                  

                                 </div>
					       <a class="authorhero" id="au2" runat="server">
                    <asp:Image  ID="Image14" runat="server" alt="Bluechip" width="25" height="25" class="lazy" /> 

					</a>
				
				<div class="byline"><a  id="author2" runat="server"></a></div>
							
							   <a id="time40" runat="server"> </a>
						</div>   
                         <!-------- Text bar2 Ends  ---->
     </figure>
    <figure>
        <asp:Image  ID="Imag3" runat="server" alt="class-header-device" width="495" height="370" class="alignnone size-full wp-image-177" /> 
                                                                            <!-------- Text bar3 starts  ---->
                         							<div  >
		<a  class="kicker" id="tb3a" runat="server"></a>		
                                <h3>
                                    <a id="slideshowa3" runat="server"></a>

                                </h3>
                                 <div class="deck">
                                       <a id="tb1aa3" runat="server">  
                                      </a>                                   

                                 </div>
					       <a class="authorhero" id="au3" runat="server">
                    <asp:Image  ID="Image21" runat="server" alt="Bluechip" width="25" height="25" class="lazy" /> 
					</a>
				
				<div class="byline"><a  id="author3" runat="server"></a></div>
							
							   <a id="time41" runat="server"> </a>
						</div>   
                         <!-------- Text bar3 Ends  ---->
     </figure> 
    <figure>
    <!--    <img src="images/3.3.jpg" alt="class-header-device" width="495" height="370" class="alignnone size-full wp-image-177" /> -->
        <asp:Image  ID="img1" runat="server" alt="class-header-device" width="495" height="370" class="alignnone size-full wp-image-177" /> 
                                                                            <!-------- Text bar4 starts  ---->
                         							<div  >
		<a  class="kicker" id="tb4a" runat="server"></a>		
                                <h3>
                                    <a id="slideshowa4" runat="server"></a>

                                </h3>
                                 <div class="deck">
                                       <a id="tb1aa4" runat="server">  
                                      </a>                                   

                                 </div>
					       <a class="authorhero" id="au4" runat="server">
                    <asp:Image  ID="Image22" runat="server" alt="Bluechip" width="25" height="25" class="lazy" /> 
					</a>
				
				<div class="byline"><a  id="author4" runat="server"></a></div>
							
							   <a id="time42" runat="server"> </a>
						</div>   
                         <!-------- Text bar4 Ends  ---->
     </figure>
<figure>
     <!--   <img src="images/4.4.jpg" alt="class-header-connectivity" width="495" height="370" class="alignnone size-large wp-image-176" /> -->
            <asp:Image  ID="img2" runat="server" alt="class-header-device" width="495" height="370" class="alignnone size-full wp-image-177" /> 
                                                                            <!-------- Text bar5 starts  ---->
                         							<div  >
		<a id="tb5a" runat="server" class="kicker"></a>		
                                <h3>
                                    <a id="slideshowa5" runat="server"></a>

                                </h3>
                                 <div class="deck">
                                       <a id="tb1aa5" runat="server">  
                                      </a>                                   </div>
					       <a class="authorhero" id="au5" runat="server">
                    <asp:Image  ID="Image29" runat="server" alt="Bluechip" width="25" height="25" class="lazy" /> 
					</a>
				
				<div class="byline"><a id="author5" runat="server"></a></div>
							
							   <a id="time43" runat="server"> </a>
						</div>   
                         <!-------- Text bar5 Ends  ---->
     </figure>
    <figure>
      <!--  <img src="images/1.1.jpg" alt="class-header-multimedia" width="495" height="370" class="alignnone size-large wp-image-175" /> -->
                    <asp:Image  ID="img3" runat="server" alt="class-header-device" width="495" height="370" class="alignnone size-full wp-image-177" /> 
                                                                            <!-------- Text bar6 starts  ---->
                         							<div  >
		<a id="tb6a" runat="server" class="kicker"></a>		
                                <h3>
                                    <a  id="slideshowa6" runat="server"></a>

                                </h3>
                                 <div class="deck">
                                       <a id="tb1aa6" runat="server">  
                                      </a>                                   </div>
					       <a class="authorhero" id="au6" runat="server">
                    <asp:Image  ID="Image30" runat="server" alt="Bluechip" width="25" height="25" class="lazy" /> 
					</a>
				
				<div class="byline"><a  id="author6" runat="server"></a></div>
							
							   <a id="time44" runat="server"> </a>
						</div>   
                         <!-------- Text bar6 Ends  ---->
     </figure>
    <figure>
    <!--    <img src="images/2.2.jpg" alt="class-header-3d" width="495" height="370" class="alignnone size-large wp-image-174" /> -->
                    <asp:Image  ID="img4" runat="server" alt="class-header-device" width="495" height="370" class="alignnone size-full wp-image-177" /> 
                                                                            <!-------- Text bar7 starts  ---->
                         							<div  >
		<a id="tb7a" runat="server" class="kicker"></a>		
                                <h3>
                                    <a  id="slideshowa7" runat="server"></a>

                                </h3>
                                 <div class="deck">
                                       <a id="tb1aa7" runat="server">  
                                      </a>                                   </div>
					       <a class="authorhero" id="au7" runat="server">
                    <asp:Image  ID="Image31" runat="server" alt="Bluechip" width="25" height="25" class="lazy" /> 
					</a>
				
				<div class="byline"><a id="author7" runat="server"></a></div>
							
							   <a id="time45" runat="server"> </a>
						</div>   
                         <!-------- Text bar7 Ends  ---->
     </figure>
            <figure>
    <!--    <img src="images/3.3.jpg" alt="class-header-performance" width="495" height="370" class="alignnone size-large wp-image-173" />  -->
                    <asp:Image  ID="img5" runat="server" alt="class-header-device" width="495" height="370" class="alignnone size-full wp-image-177" /> 
                                                                            <!-------- Text bar8 starts  ---->
                         							<div  >
		<a id="tb8a" runat="server" class="kicker"></a>		
                                <h3>
                                    <a id="slideshowa8" runat="server"></a>

                                </h3>
                                 <div class="deck">
                                       <a id="tb1aa8" runat="server">  
                                      </a>                                   </div>
					       <a class="authorhero" id="au8" runat="server">
                    <asp:Image  ID="Image32" runat="server" alt="Bluechip" width="25" height="25" class="lazy" /> 
					</a>
				
				<div class="byline"><a id="author8" runat="server"></a></div>
							
							   <a id="time46" runat="server"> </a>
						</div>   
                         <!-------- Text bar8 Ends  ---->
     </figure>
  </div>  
             </div>
        
                          <!--------------Slideshow ends   ------------->

                  <!--------------Blogger Text starts   ------------->

         <!-------- Text bar1 starts  ---->
                          <!-- <div class="css-slideshow" id="a223" style="background-color:white; top: -1671px; left: 692px; width: 279px; height:100px;"> -->
                           <div id = a223 style = "background-color:white; position: absolute; left: 51.4em; top: 11.8em; width: 19.4em; height: 7em;">
                      		<div  >
                                <h3>
                                    <a  id="tb0a0" runat="server"></a>

                                </h3>											
						</div>   
                       </div>
          <!-------- Text bar1 Ends  ---->

           <!-------- Text bar2 starts  ---->
              <!--    <div class="css-slideshow" id="a11" style="background-color:white; top: -1750px; left: 693px; width: 279px; height:100px;"> -->
                 <div id = a11 style = "background-color:white; position: absolute; left: 51.4em; top: 20.2em; width: 19.4em; height: 7em;">                                             
                         							<div  >
                                <h3>
                                    <a id="tb2a2" runat="server"></a>

                                </h3>											
						</div>   
                      
                           </div>
            <!-------- Text bar2 Ends  ---->

         <!-------- Text bar3 starts  ---->
                 <div id = a224 style = "background-color:white; position: absolute; left: 51.4em; top: 28.8em; width: 19.2em; height: 6.6em;">                         
                         							<div  >
                                <h3>
                                    <a id="tb3a3" runat="server"></a>

                                </h3>											
						</div>   
                         
                  </div>
         <!-------- Text bar3 Ends  ---->

         <!--------------Blogger text ends   ------------->
     </div>



            				
<script src="Javascript/JavaScriptTop.js"></script>
<script src="Javascript/JavaScriptTop2.js"></script>
<script src="Javascript/JavaScriptTop3.js"></script>



         <style>
             sectionn {
    width: 80%;
    height: 200px;
    
    padding: 10px;
}
div#onee {
    width: 15%;
    height: 114px;
}
div#twoo {
    margin-left: 15%;
    height: 114px;
}
         </style>

    <style>
        section {
    width: 18%;
    height: 12px;
    padding: 10px;
}
div#one {
    width: 5%;
    height: 24px;
    float: left;
    margin-left:0px;
    margin-top: 0px;
    background-color:grey;
        }
div#two {
    margin-left: 53px;
    height: 5px;
    background: black;
            width: 1189px;
            top:30px;
        }
    </style>
     <!------------ Section 1 starts   ------> 
         <br /><br /><br /><br /><br />
         <br /><br /><br /><br /><br /><br /><br /><br />
        <div style="margin-left:50px">
    <div id="one"  style="color:white; background-color:#006666" >Lattest</div>
    <section>
    <div id="two"></div>
</section>
    </div>

                                                                                       <!-------- Text bar1 starts  ---->
         <div style=" position: absolute; left: 3.6em; top: 49.6em; width: 27.8em; height: 27.4em;">
						   <div class="vc_inner">
                 <asp:Image  ID="Image121" runat="server" alt="Bluechip-Technology" width="300px" height="300px"  class="attachment-full" />														
                                </div>

                         							<div  >
		<a  class="kicker" id="orgName1" runat="server"></a>		
                                <h3>
                                    <a id="heading1" runat="server"></a>

                                </h3>
                                 <div class="deck">
   <a id="small1" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" id="authorPiclink1" runat="server">
                      <asp:Image  ID="authorpic1" runat="server" alt="Bluechip-Technology" width="25" height="25" class="lazy" />																												
					</a>
				
				<div class="byline"><a  id="authorr1" runat="server"></a></div>
							   <a id="time1" runat="server"> </a>
									<!----<time datetime="2015-07-07 17:47:00">2015-07-07 17:47:00</time>  ------->
						</div>   
						</div>
                                  <!-------- Text bar1 Ends  ---->
                                  <!-------- Text bar2 starts  ---->
                  <div style=" position: absolute; left: 33em; top: 49.6em; width: 27.8em; height: 27.4em;">
							<div class="vc_inner">
     <asp:Image  ID="Image122" runat="server" alt="Bluechip-Technology" width="300" height="300"  class="attachment-full" />																												
                                 </div>

                        							<div  >
		<a   class="kicker" id="orgName2" runat="server"></a>		
                                <h3>
                                    <a  id="A2" runat="server"></a>

                                </h3>
                                 <div class="deck">
    <a id="A3" runat="server">  
                                       </a>
                                  </div>
					       <a class="authorhero" id="authorPiclink2" runat="server">
                      <asp:Image  ID="authorpic2" runat="server" alt="Bluechip-Technology" width="25" height="25"  class="lazy" />																												
					</a>
				
				<div class="byline"><a id="a4" runat="server"></a></div>
							
							   <a id="time2" runat="server"> </a>
						</div> 
                      </div>
                         <!-------- Text bar2 Ends  ---->
                         <!-------- Text bar3 starts  ---->
                  <div style=" position: absolute; left: 62.6em; top: 49.6em; width: 27.8em; height: 27.4em;">
							<div class="vc_inner">
               <asp:Image  ID="Image123" runat="server" alt="Bluechip-Technology" width="300" height="300"  class="attachment-full" />																												
															
                                 </div>

                        							<div  >
		<a  class="kicker" id="orgName3" runat="server"></a>		
                                <h3>
                                    <a  id="A5" runat="server"></a>

                                </h3>
                                 <div class="deck">
     <a id="A6" runat="server">  
                                       </a>
                                  </div>
					       <a class="authorhero" id="authorPiclink3" runat="server">
				                      <asp:Image  ID="authorpic3" runat="server" alt="Bluechip-Technology" width="25" height="25"  class="lazy" />																												

                               	</a>
				
				<div class="byline"><a  id="a7" runat="server"></a></div>
							
							   <a id="time3" runat="server"> </a>
						</div> 
                      </div>
                         <!-------- Text bar3 Ends  ---->
                         <!-------- Text bar4 starts  ---->
                  <div style=" position: absolute; left: 3.6em; top: 83.6em; width: 27.8em; height: 27.4em;">
							<div class="vc_inner">
         <asp:Image  ID="Image124" runat="server" alt="Bluechip-Technology" width="300" height="300"  class="attachment-full" />																												
												
                                 </div>

                        							<div  >
		<a  class="kicker" id="orgName4" runat="server"></a>		
                                <h3>
                                    <a id="A8" runat="server"></a>

                                </h3>
                                 <div class="deck">
    <a id="A9" runat="server">  
                                       </a>
                                  </div>
					       <a class="authorhero" id="authorPiclink4" runat="server">
				    <asp:Image  ID="authorpic4" runat="server" alt="Bluechip-Technology" width="25" height="25"  class="lazy" />																												

                               	</a>
				
				<div class="byline"><a id="a10" runat="server"></a></div>
							
							   <a id="time4" runat="server"> </a>
						</div> 
                      						</div>
                         <!-------- Text bar4 Ends  ---->
                         <!-------- Text bar5 starts  ---->
                  <div style=" position: absolute; left: 33.2em; top: 83.6em; width: 27.8em; height: 27.4em;">
							<div class="vc_inner">
         <asp:Image  ID="Image125" runat="server" alt="Bluechip-Technology" width="300" height="300"  class="attachment-full" />																												
															
                                 </div>

                        							<div  >
		<a   class="kicker" id="orgName5" runat="server"></a>		
                                <h3>
                                    <a id="A11" runat="server"></a>

                                </h3>
                                 <div class="deck">
     <a id="A12" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" id="authorPiclink5" runat="server">
				       <asp:Image  ID="authorpic5" runat="server" alt="Bluechip-Technology" width="25" height="25"  class="lazy" />																												

                               	</a>
				
				<div class="byline"><a id="a13" runat="server"></a></div>
							
							   <a id="time5" runat="server"> </a>
						</div> 						</div>
                         <!-------- Text bar5 Ends  ---->
                         <!-------- Text bar6 starts  ---->
                  <div style=" position: absolute; left: 62.8em; top: 83.6em; width: 27.8em; height: 27.4em;">
							<div class="vc_inner">
        <asp:Image  ID="Image126" runat="server" alt="Bluechip-Technology" width="300" height="300"  class="attachment-full" />																												
														
                                 </div>
 
                         							<div  >
		<a   class="kicker" id="orgName6" runat="server"></a>		
                                <h3>
                                    <a id="A14" runat="server"></a>

                                </h3>
                                 <div class="deck">
       <a id="A15" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" id="authorPiclink6" runat="server">
				         <asp:Image  ID="authorpic6" runat="server" alt="Bluechip-Technology" width="25" height="25"  class="lazy" />																													
                           </a>
				
				<div class="byline"><a  id="a16" runat="server"></a></div>
							
							   <a id="time6" runat="server"> </a>
						</div> 						</div>
                         <!-------- Text bar6 Ends  ---->
           <br />
         <center style="height: 22px; position: absolute; top: 118.8em; left: 597px;">
         <asp:LinkButton ID="seeAll1" href="Lattest.aspx" runat="server" Text="SEE ALL"></asp:LinkButton>
                  </center>          
    <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br /> 
         <br /><br /><br /><br /> <br /><br /><br /><br /> 

             <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br /> 
         <br /><br /><br /><br /> <br /><br /><br /><br /> 
    <!------------ Section 1 Ends   ------>  

      <!------------ Section 2 starts   ------> 
        <div style="margin-left:50px">
    <div id="one"  style="color:white; background-color:#006666" >Tablets</div>
    <section>
    <div id="two"></div>
</section>
    </div>
               <!-------- Text bar1 starts  ---->
                           <div style=" position: absolute; left: 3.6em; top: 130.4em; width: 27.8em; height: 27.4em;">
						   <div class="vc_inner">
                 <asp:Image  ID="Image7" runat="server" alt="Bluechip-Technology" width="300" height="300" class="attachment-full" />														
                                </div>

                         							<div  >
		<a  class="kicker" id="tabletOrganizationName1" runat="server"></a>		
                                <h3>
                                    <a  id="A23" runat="server"></a>

                                </h3>
                                 <div class="deck">
                                <a id="A24" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" ID="Tabpiclink1" runat="server">
				                 <asp:Image  ID="Tabpic1" runat="server" alt="Bluechip-Technology" width="25" height="25" class="lazy" />														

                               	</a>
				
				<div class="byline"><a  id="a25" runat="server"></a></div>
							
							   <a id="time9" runat="server"> </a>
						</div>   
						</div>
                <!-------- Text bar1 Ends  ---->
                <!-------- Text bar2 starts  ---->
                           <div style=" position: absolute; left: 32.6em; top: 130.4em; width: 27.8em; height: 27.4em;">
							<div class="vc_inner">
     <asp:Image  ID="Image8" runat="server" alt="mini web banner for tour - jakarta-2" width="300" height="300" class="attachment-full" />																												
                                 </div> 
                               <div  >
		<a id="tabletOrganizationName2" runat="server" class="kicker"></a>		
                                <h3>
                                    <a  id="A26" runat="server"></a>

                                </h3>
                                 <div class="deck">
         <a id="A27" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" ID="Tabpiclink2" runat="server">
				                 <asp:Image  ID="Tabpic2" runat="server" alt="Bluechip-Technology" width="25" height="25" class="lazy" />														
					</a>
				
				<div class="byline"><a  id="a28" runat="server"></a></div>
							
							   <a id="time10" runat="server"> </a>
						</div> 
						</div>
                                  <!-------- Text bar2 Ends  ---->
                                  <!-------- Text bar3 starts  ---->
                           <div style=" position: absolute; left: 61.8em; top: 130.4em; width: 27.8em; height: 27.4em;">
							<div class="vc_inner">
               <asp:Image  ID="Image9" runat="server" alt="mini web banner for tour - hong kong-2" width="300" height="300" class="attachment-full" />																												
															
                                 </div>
                       							<div  >
		<a id="tabletOrganizationName3" runat="server" class="kicker"></a>		
                                <h3>
                                    <a  id="A29" runat="server"></a>

                                </h3>
                                 <div class="deck">
              <a id="A30" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" ID="Tabpiclink3" runat="server">
				                 <asp:Image  ID="Tabpic3" runat="server" alt="Bluechip-Technology" width="25" height="25" class="lazy" />														
					</a>
				
				<div class="byline"><a  id="a31" runat="server"></a></div>
							
							   <a id="time11" runat="server"> </a>
						</div> </div>
                         <!-------- Text bar3 Ends  ---->
						 <!-------- Text bar4 starts  ---->
                           <div style=" position: absolute; left: 3.6em; top: 163.8em; width: 27.8em; height: 27.4em;">
							<div class="vc_inner">
         <asp:Image  ID="Image10" runat="server" alt="mini web banner for tour - bangkok" width="300" height="300" class="attachment-full" />																												
												
                                 </div>

                                                                               
                        							<div  >
		<a id="tabletOrganizationName4" runat="server" class="kicker"></a>		
                                <h3>
                                    <a  id="A32" runat="server"></a>

                                </h3>
                                 <div class="deck">
      <a id="A33" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" ID="Tabpiclink4" runat="server">
				                 <asp:Image  ID="Tabpic4" runat="server" alt="Bluechip-Technology" width="25" height="25" class="lazy" />														
					</a>
				
				<div class="byline"><a  id="a34" runat="server"></a></div>
							
							   <a id="time12" runat="server"> </a>
						</div> </div>
                         <!-------- Text bar4 Ends  ---->
						 <!-------- Text bar5 starts  ---->
                           <div style=" position: absolute; left: 32.8em; top: 163.8em; width: 27.8em; height: 27.4em;">
							<div class="vc_inner">
         <asp:Image  ID="Image11" runat="server" alt="mini web banner for tour - fukuoka" width="300" height="300"  class="attachment-full" />																												
															
                                 </div>
                       							<div  >
		<a id="tabletOrganizationName5" runat="server" class="kicker"></a>		
                                <h3>
                                    <a  id="A35" runat="server"></a>

                                </h3>
                                 <div class="deck">
         <a id="A36" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" ID="Tabpiclink5" runat="server">
				                 <asp:Image  ID="Tabpic5" runat="server" alt="Bluechip-Technology" width="25" height="25" class="lazy" />														
					</a>
				
				<div class="byline"><a  id="a37" runat="server"></a></div>
							
							   <a id="time13" runat="server"> </a>
						</div> </div>
                         <!-------- Text bar5 Ends  ---->
					   	<!-------- Text bar6 starts  ---->
                           <div style=" position: absolute; left: 62.8em; top: 163.8em; width: 27.8em; height: 27.4em;">
							<div class="vc_inner">
        <asp:Image  ID="Image12" runat="server" alt="mini web banner for tour - singapore" width="300" height="300" class="attachment-full" />																												
														
                                 </div>
                       							<div  >
		<a id="tabletOrganizationName6" runat="server" class="kicker"></a>		
                                <h3>
                                    <a  id="A38" runat="server"></a>

                                </h3>
                                 <div class="deck">
         <a id="A39" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" ID="Tabpiclink6" runat="server">
				                 <asp:Image  ID="Tabpic6" runat="server" alt="Bluechip-Technology" width="25" height="25" class="lazy" />														
					</a>
				
				<div class="byline"><a  id="a40" runat="server"></a></div>
							
							   <a id="time14" runat="server"> </a>
						</div> </div>
                         <!-------- Text bar6 Ends  ---->
                  <center style=" position: absolute; left: 39.6em; top: 199.4em; width: 7em; height: 1.6em;">
         <asp:LinkButton ID="seeAll2" href="tablets.aspx" runat="server" Text="SEE ALL"></asp:LinkButton>
                  </center> 
    <br /><br /><br />
         <br />
             <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br /> 
         <br /><br /><br /><br /> <br /><br /><br /><br /> 
                      <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br /> 
         <br /> <br /><br /><br /><br /> <br /> <br /><br /><br /><br /> <br /> <br /><br /><br /><br /> <br /><br /><br />
    <!------------ Section 2 Ends   ------> 
      <!------------ Section 3 starts   ------> 
        <div style="margin-left:50px">
    <div id="one"  style="color:white; background-color:#006666">Pc News</div>
    <section>
    <div id="two"></div>
</section>
    </div>
         <!-------- Text bar1 starts  ---->
                           <div style=" position: absolute; left: 3.6em; top: 207.8em; width: 27.8em; height: 27.4em;">
						   <div class="vc_inner">
                 <asp:Image  ID="Image15" runat="server" alt="Bluechip" width="300" height="300"  class="attachment-full" />														
                                </div>
                       							<div  >
		<a id="pcnewsorganization1" runat="server"  class="kicker"></a>		
                                <h3>
                                    <a  id="A47" runat="server"></a>

                                </h3>
                                 <div class="deck">
                <a id="A48" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" id="authr1" runat="server">
		          <asp:Image  ID="pcnewsauthor1" runat="server" alt="Bluechip" width="25" height="25"  class="lazy" />														
                               	</a>
				
				<div class="byline"><a   id="a49" runat="server"></a></div>
							
							   <a id="time17" runat="server"> </a>
						</div>   </div>
                         <!-------- Text bar1 Ends  ---->
						 <!-------- Text bar2 starts  ---->
                           <div style=" position: absolute; left: 33em; top: 207.8em; width: 27.8em; height: 27.4em;">
							<div class="vc_inner">
     <asp:Image  ID="Image16" runat="server" alt="mini web banner for tour - jakarta-2" width="300" height="300"  class="attachment-full" />																												
                                 </div>
                      							<div  >
		<a id="pcnewsorganization2" runat="server"  class="kicker"></a>		
                                <h3>
                                    <a   id="A50" runat="server"></a>

                                </h3>
                                 <div class="deck">
     <a id="A51" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" id="authr2" runat="server">
		          <asp:Image  ID="pcnewsauthor2" runat="server" alt="Bluechip" width="25" height="25"  class="lazy" />														
					</a>
				
				<div class="byline"><a  id="a52" runat="server"></a></div>
							
							   <a id="time18" runat="server"> </a>
						</div> </div>
                         <!-------- Text bar2 Ends  ---->
						<!-------- Text bar3 starts  ---->
                           <div style=" position: absolute; left: 62.8em; top: 207.8em; width: 27.8em; height: 27.4em;">
							<div class="vc_inner">
               <asp:Image  ID="Image17" runat="server" alt="mini web banner for tour - hong kong-2" width="300" height="300"  class="attachment-full" />																												
															
                                 </div>
                      							<div  >
		<a id="pcnewsorganization3" runat="server"  class="kicker"></a>		
                                <h3>
                                    <a  id="A53" runat="server"></a>

                                </h3>
                                 <div class="deck">
       <a id="A54" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" id="authr3" runat="server">
		          <asp:Image  ID="pcnewsauthor3" runat="server" alt="Bluechip" width="25" height="25"  class="lazy" />														
					</a>
				
				<div class="byline"><a  id="a55" runat="server"></a></div>
							
							   <a id="time19" runat="server"> </a>
						</div> </div>
                         <!-------- Text bar3 Ends  ---->
						 <!-------- Text bar4 starts  ---->
                           <div style=" position: absolute; left: 3.6em; top: 242.2em; width: 27.8em; height: 27.4em;">
							<div class="vc_inner">
         <asp:Image  ID="Image18" runat="server" alt="mini web banner for tour - bangkok" width="300" height="300"  class="attachment-full" />																												
												
                                 </div>
                       							<div  >
		<a id="pcnewsorganization4" runat="server"  class="kicker"></a>		
                                <h3>
                                    <a  id="A56" runat="server"></a>

                                </h3>
                                 <div class="deck">
        <a id="A57" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" id="authr4" runat="server">
		          <asp:Image  ID="pcnewsauthor4" runat="server" alt="Bluechip" width="25" height="25"  class="lazy" />														
					</a>
				
				<div class="byline"><a  id="a58" runat="server"></a></div>
							
							   <a id="time20" runat="server"> </a>
						</div> </div>
                         <!-------- Text bar4 Ends  ---->
						<!-------- Text bar5 starts  ---->
                           <div style=" position: absolute; left: 32.6em; top: 242.2em; width: 27.8em; height: 27.4em;">
							<div class="vc_inner">
         <asp:Image  ID="Image19" runat="server" alt="mini web banner for tour - fukuoka" width="300" height="300"  class="attachment-full" />																												
															
                                 </div>
                      							<div  >
		<a id="pcnewsorganization5" runat="server"  class="kicker"></a>		
                                <h3>
                                    <a   id="A59" runat="server"></a>

                                </h3>
                                 <div class="deck">
               <a id="A60" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" id="authr5" runat="server">
		          <asp:Image  ID="pcnewsauthor5" runat="server" alt="Bluechip" width="25" height="25"  class="lazy" />														
					</a>
				
				<div class="byline"><a  id="a61" runat="server"></a></div>
							
							   <a id="time21" runat="server"> </a>
						</div> </div>
                         <!-------- Text bar5 Ends  ---->
						<!-------- Text bar6 starts  ---->
                           <div style=" position: absolute; left: 62.4em; top: 242.2em; width: 27.8em; height: 27.4em;">
							<div class="vc_inner">
        <asp:Image  ID="Image20" runat="server" alt="mini web banner for tour - singapore" width="300" height="300"  class="attachment-full" />																												
														
                                 </div>
                       							<div  >
		<a id="pcnewsorganization6" runat="server"  class="kicker"></a>		
                                <h3>
                                    <a  id="A62" runat="server"></a>

                                </h3>
                                 <div class="deck">
         <a id="A63" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" id="authr6" runat="server">
		          <asp:Image  ID="pcnewsauthor6" runat="server" alt="Bluechip" width="25" height="25"  class="lazy" />														
					</a>
				
				<div class="byline"><a  id="a64" runat="server"></a></div>
							
							   <a id="time22" runat="server"> </a>
						</div> </div>
                         <!-------- Text bar6 Ends  ---->
                           <center style="position: absolute; left: 39em; top: 278.4em; width: 7em; height: 1.6em;">
         <asp:LinkButton ID="seeAll3" href="pcnews.aspx" runat="server" Text="SEE ALL"></asp:LinkButton>
                  </center> 
    <br /><br /><br />
    <!------------ Section 3 Ends   ------>  
       <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
         <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
         <br /><br /><br /><br /><br /><br /><br /><br />
         <br /><br /><br /><br /><br /><br /><br /><br /> <br /><br /><br /> <br /><br /><br />
      <!------------ Section 4 starts   ------> 
        <div style="margin-left:50px">
    <div id="one" style="color:white; background-color:#006666"> Videos</div>
    <section>
    <div id="two"></div>
</section>
    </div>
         <!-------- Text bar1 starts  ---->
                           <div style=" position: absolute; left: 3.8em; top: 287.2em; width: 27.8em; height: 27.4em;">
						   <div class="vc_inner">
                 <asp:Image  ID="Image23" runat="server" alt="Bluechip" width="300" height="300" class="attachment-full" />														
                                </div>
                     							<div  >
		<a id="videoorganizationname1" runat="server" class="kicker"></a>		
                                <h3>
                                    <a  id="A71" runat="server"></a>

                                </h3>
                                 <div class="deck">
      <a id="A72" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" ID="videosauthor1" runat="server">
				 <asp:Image  id="video1" runat="server" alt="Bluechip" width="25" height="25" class="lazy" />														

                           </a>
				
				<div class="byline"><a  id="a73" runat="server"></a></div>
							
							   <a id="time25" runat="server"> </a>
						</div>   </div>
                         <!-------- Text bar1 Ends  ---->
						 <!-------- Text bar2 starts  ---->
                           <div style=" position: absolute; left: 34.2em; top: 287.2em; width: 27.8em; height: 27.4em;">
							<div class="vc_inner">
     <asp:Image  ID="Image24" runat="server" alt="Bluechip" width="300" height="300" class="attachment-full" />																												
                                 </div>
                       							<div  >
		<a id="videoorganizationname2" runat="server" class="kicker"></a>		
                                <h3>
        <a  id="A74" runat="server"></a>

                                </h3>
                                 <div class="deck">
          <a id="A75" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" ID="videosauthor2" runat="server">
				 <asp:Image  id="video2" runat="server" alt="Bluechip" width="25" height="25" class="lazy" />														
					</a>
				
				<div class="byline"><a  id="a76" runat="server"></a></div>
							
							   <a id="time26" runat="server"> </a>
						</div> </div>
                         <!-------- Text bar2 Ends  ---->
						<!-------- Text bar3 starts  ---->
                           <div style=" position: absolute; left: 63.2em; top: 287.2em; width: 27.8em; height: 27.4em;">
							<div class="vc_inner">
               <asp:Image  ID="Image25" runat="server" alt="Bluechip" width="300" height="300" class="attachment-full" />																												
															
                                 </div>
                      							<div  >
		<a id="videoorganizationname3" runat="server" class="kicker"></a>		
                                <h3>
                                    <a  id="A77" runat="server"></a>

                                </h3>
                                 <div class="deck">
        <a id="A78" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" ID="videosauthor3" runat="server">
				 <asp:Image  id="video3" runat="server" alt="Bluechip" width="25" height="25" class="lazy" />														
					</a>
				
				<div class="byline"><a  id="a79" runat="server"></a></div>
							
							   <a id="time27" runat="server"> </a>
						</div> </div>
                         <!-------- Text bar3 Ends  ---->
						<!-------- Text bar4 starts  ---->
                           <div style=" position: absolute; left: 3.8em; top: 321em; width: 27.8em; height: 27.4em;">
							<div class="vc_inner">
         <asp:Image  ID="Image26" runat="server" alt="Bluechip" width="300" height="300" class="attachment-full" />																												
												
                                 </div>
                      							<div  >
		<a id="videoorganizationname4" runat="server" class="kicker"></a>		
                                <h3>
                                    <a  id="A80" runat="server"></a>

                                </h3>
                                 <div class="deck">
      <a id="A81" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" ID="videosauthor4" runat="server">
				 <asp:Image  id="video4" runat="server" alt="Bluechip" width="25" height="25" class="lazy" />														
					</a>
				
				<div class="byline"><a  id="a82" runat="server"></a></div>
							
							   <a id="time28" runat="server"> </a>
						</div> </div>
                         <!-------- Text bar4 Ends  ---->
						<!-------- Text bar5 starts  ---->
                           <div style=" position: absolute; left: 34em; top: 321em; width: 27.8em; height: 27.4em;">
							<div class="vc_inner">
         <asp:Image  ID="Image27" runat="server" alt="Bluechip" width="300" height="300" class="attachment-full" />																												
															
                                 </div>
                     							<div  >
		<a id="videoorganizationname5" runat="server" class="kicker"></a>		
                                <h3>
                                    <a  id="A83" runat="server"></a>

                                </h3>
                                 <div class="deck">
             <a id="A84" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" ID="videosauthor5" runat="server">
				 <asp:Image  id="video5" runat="server" alt="Bluechip" width="25" height="25" class="lazy" />														
					</a>
				
				<div class="byline"><a  id="a85" runat="server"></a></div>
							
							   <a id="time29" runat="server"> </a>
						</div> </div>
                         <!-------- Text bar5 Ends  ---->
						 <!-------- Text bar6 starts  ---->
                           <div style=" position: absolute; left: 63.4em; top: 321em; width: 27.8em; height: 27.4em;">
							<div class="vc_inner">
        <asp:Image  ID="Image28" runat="server" alt="Bluechip" width="300" height="300"  class="attachment-full" />																												
														
                                 </div>
                        							<div  >
		<a id="videoorganizationname6" runat="server" class="kicker"></a>		
                                <h3>
                                    <a id="A86" runat="server"></a>

                                </h3>
                                 <div class="deck">
         <a id="A87" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" ID="videosauthor6" runat="server">
				 <asp:Image  id="video6" runat="server" alt="Bluechip" width="25" height="25" class="lazy" />														
					</a>
				
				<div class="byline"><a  id="a88" runat="server"></a></div>
							
							   <a id="time30" runat="server"> </a>
						</div> </div>
                         <!-------- Text bar6 Ends  ---->

                                    <center style="height: 41px; position: absolute; top: 355.8em; left: 623px;">
         <asp:LinkButton ID="seeAll4" href="Video.aspx" runat="server" Text="SEE ALL"></asp:LinkButton>
                  </center>
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
         <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
           <br /><br /><br /><br /><br /><br />
           <br /><br /><br /><br /><br /><br /> <br /><br /><br /> <br /><br /><br /> <br /><br />




    <!------------ Section 4 Ends   ------>  
             <!------------ Moving bar starts   ------> 
          <center>
        <asp:Label ID="lbtoprated" runat="server" Text="Today's Most Read"></asp:Label>
              </center>
         <br /> 
         <div style="margin-left:90px">
     <ul id="scroller2">
        <li >
    <div class="c3">
        <a href="">
      <asp:Image  ID="Image1" runat="server"  alt="class-header-device" width="285px" height="200px" class="alignnone size-full wp-image-177" /> 
        </a>
    </div>
        <a>
                                                                      <!-------- Text bar1 starts  ---->
                        							<div  >
		<a  class="kicker" id="todayorganization1" runat="server"></a>		
                                <h3>
                                    <a   id="A95" runat="server"></a>

                                </h3>
                                 <div class="deck">
     <a id="A96" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" id="today1" runat="server">
				      <asp:Image  ID="todaypic1" runat="server"  alt="class-header-device" width="25" height="25" class="lazy" /> 
					</a>
				
				<div class="byline"><a id="a97" runat="server"></a></div>
							
							   <a id="time33" runat="server"> </a>
						</div> 
                         <!-------- Text bar1 Ends  ---->
        </a>
        </li>
        
 <li >
    <div class="c3">
        <a href="http://sophiamirza.com.pk/pages.php?pageid=29">
      <asp:Image  ID="Image2" runat="server"  alt="class-header-device" width="285px" height="200px" class="alignnone size-full wp-image-177" /> 
</a>
                <a>
                                                                      <!-------- Text bar2 starts  ---->
                        							<div  >
		<a id="todayorganization2" runat="server" class="kicker"></a>		
                                <h3>
                                    <a  id="A98" runat="server"></a>

                                </h3>
                                 <div class="deck">
     <a id="A99" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" id="today2" runat="server">
				      <asp:Image  ID="todaypic2" runat="server"  alt="class-header-device" width="25" height="25" class="lazy" /> 
					</a>
				
				<div class="byline"><a  id="a100" runat="server"></a></div>
							
							   <a id="time34" runat="server"> </a>
						</div> 
                         <!-------- Text bar2 Ends  ---->
                </a>
    </div>

    </li>   
  
        <li >
    <div class="c3">
        <a href="">
      <asp:Image  ID="Image3" runat="server"  alt="class-header-device" width="285px" height="200px" class="alignnone size-full wp-image-177" /> 
</a>
                <a>
                                                                      <!-------- Text bar3 starts  ---->
                        							<div  >
		<a id="todayorganization3" runat="server" class="kicker"></a>		
                                <h3>
                                    <a id="A101" runat="server"></a>

                                </h3>
                                 <div class="deck">
     <a id="A102" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" id="today3" runat="server">
				      <asp:Image  ID="todaypic3" runat="server"  alt="class-header-device" width="25" height="25" class="lazy" /> 
					</a>
				
				<div class="byline"><a  id="a103" runat="server"></a></div>
							
							   <a id="time35" runat="server"> </a>
						</div> 
                         <!-------- Text bar3 Ends  ---->
                </a>
    </div>

        </li>
    
  <li>
    <div class="c3">
        <a href="">
      <asp:Image  ID="Image4" runat="server"  alt="class-header-device" width="285px" height="200px" class="alignnone size-full wp-image-177" /> 
</a>
                <a>
                                                                                          <!-------- Text bar4 starts  ---->
                        							<div  >
		<a id="todayorganization4" runat="server" class="kicker"></a>		
                                <h3>
                                    <a  id="A104" runat="server"></a>

                                </h3>
                                 <div class="deck">
     <a id="A105" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" id="today4" runat="server">
				      <asp:Image  ID="todaypic4" runat="server"  alt="class-header-device" width="25" height="25" class="lazy" /> 
					</a>
								<div class="byline"><a  id="a106" runat="server"></a></div>
							
							   <a id="time36" runat="server"> </a>
						</div> 
                         <!-------- Text bar4 Ends  ---->
                </a>
    </div>

        </li>
          <li >
    <div class="c3">
        <a href="">
      <asp:Image  ID="Image5" runat="server"  alt="class-header-device" width="285px" height="200px" class="alignnone size-full wp-image-177" /> 

        </a>
                <a>
                                                                                          <!-------- Text bar5 starts  ---->
                        							<div  >
		<a id="todayorganization5" runat="server" class="kicker"></a>		
                                <h3>
                                    <a  id="A107" runat="server"></a>

                                </h3>
                                 <div class="deck">
     <a id="A108" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" id="today5" runat="server">
				      <asp:Image  ID="todaypic5" runat="server"  alt="class-header-device" width="25" height="25" class="lazy" /> 
					</a>
				
				<div class="byline"><a   id="a109" runat="server"></a></div>
							
							   <a id="time37" runat="server"> </a>
						</div> 
                         <!-------- Text bar5 Ends  ---->
                </a>
    </div>

                </li>
          <li>
    <div class="c3">
        <a href="">
      <asp:Image  ID="Image6" runat="server"  alt="class-header-device" width="285px" height="200px" class="alignnone size-full wp-image-177" /> 

        </a>
                        <a>
                                     <!-------- Text bar6 starts  ---->
                        							<div  >
		<a id="todayorganization6" runat="server" class="kicker"></a>		
                                <h3>
                                    <a id="A110" runat="server"></a>

                                </h3>
                                 <div class="deck">
     <a id="A111" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" id="today6" runat="server">
				      <asp:Image  ID="todaypic6" runat="server"  alt="class-header-device" width="25" height="25" class="lazy" /> 

                               	</a>
				
				<div class="byline"><a  id="a112" runat="server"></a></div>
							
							   <a id="time38" runat="server"> </a>
						</div> 
                         <!-------- Text bar6 Ends  ---->
                        </a>
    </div>
                           <!------------ Moving bar Ends   ------> 

                         							<br />

        </li>
</ul>
 
          <link href="App_Themes/Theme1/todaysMostRead2.css" rel="stylesheet" type="text/css"/>
          <link href="App_Themes/Theme1/todaysMostRead.css" rel="stylesheet" type="text/css"/>

 <script type="text/javascript" src="Javascript/TodaysMostRead/TodaysMostRead.js"></script>
 <script type="text/javascript" src="Javascript/TodaysMostRead/TodaysMostRead2.js"></script>
 <script type="text/javascript" src="Javascript/TodaysMostRead/TodaysMostRead3.js"></script>
 <script type="text/javascript" src="Javascript/TodaysMostRead/TodaysMostRead4.js"></script>
             </div>
    <!------------ Moving bar ends   ------>  

    <br /><br /><br /><br /><br />

    <br /><br /><br /><br /><br />
         <!---- Comment Section Starts --------------->
         <div style="background-color:#006666">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Label ID="lbviews" runat="server" Text="Contact Us!!"></asp:Label>
            &nbsp;&nbsp;<br />
          
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
        <br />
            
&nbsp;&nbsp; <asp:TextBox ID="fromemail" runat="server" Width="241px" style="opacity: 0.5;filter: alpha(opacity=50)" BorderColor="Black" BorderWidth="5" placeholder="Email ID*"></asp:TextBox >
            <br />
            <br />
            &nbsp;&nbsp;
            <asp:TextBox ID="TBNAME" runat="server" Width="241px" style="opacity: 0.5;filter: alpha(opacity=50)" BorderColor="Black" BorderWidth="5" placeholder="Name*"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;
            <asp:TextBox ID="TBNUMBER" runat="server" Width="241px" style="opacity: 0.5;filter: alpha(opacity=50)" BorderColor="Black" BorderWidth="5" placeholder="Number*"></asp:TextBox>
        <br />
            
            <br />
&nbsp;&nbsp;
        <asp:TextBox ID="fromcomments" runat="server" TextMode="MultiLine" Height="276px" Width="689px"  style="opacity: 0.5;filter: alpha(opacity=50)" BorderColor="Black" BorderWidth="5" placeholder="Comments"></asp:TextBox>
&nbsp;<br />
        <br />
            <asp:ImageButton ID="ImageButtonsend" runat="Server" 
       AlternateText="Click to lock record" ImageUrl="~/images/submit btn.png"  
       OnClick="btnimagesend_Click" Height="62px" Width="154px" onclientclick="document.forms[1].target ='_blank';"  />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="commentdisplay" runat="server"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <br />
            <br />
        </div>
         <br /><br /><br />
         <!---- Comment Section Ends --------------->
                      <!----------  Navigation Bar Starts    --------------->           
<div class="nav">
 <nav class="navbar navbar-inverse" >
  <div class="container-fluid">

    <div>
      <ul class="nav navbar-nav">
          <li> <a><font size="5" color="white">BlueChip- Technology</font></a></li>
        <li ><a href="Main Page.aspx" style="color:white">Home</a></li>
        <li><a href="Lattest.aspx" style="color:white">Lattest</a></li>
        <li><a href="Video.aspx" style="color:white">Videos</a></li>
 <li><a href="hacknews.aspx" style="color:white">Hack News </a></li>
        
        <li><a runat="server" href="" style="color:white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Search</a></li>			
                <li><a runat="server" href="Registration.aspx" style="color:white">Register</a></li>
                  <li id="Loog" runat="server"><a id="A1" runat="server" href="login.aspx" style="color:white">Log in</a></li>
         <li id="Li1" runat="server"><a id="A113" runat="server" href="Signout.aspx" style="color:white; visibility:hidden">Log out</a></li>        
				 
      </ul>
    </div>
  </div>
</nav>
 
				
 </div>
     </form>


</body>

</asp:Content>




