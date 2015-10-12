<?php
      //We have included ../Includes/FusionCharts.php, which contains functions
      //to help us easily embed the charts.
      include("class/Includes/FusionCharts.php");
	  include("class/Includes/DBConn.php");
      ?>
      <HTML>
         <HEAD>
        <TITLE> FusionCharts XT - </TITLE>
        <SCRIPT LANGUAGE="Javascript" SRC="fusioncharts/fusioncharts.js"></SCRIPT>
		 <SCRIPT LANGUAGE="Javascript" SRC="fusioncharts/themes/fusioncharts.theme.fint.js"></SCRIPT>
     </HEAD>
     <BODY>
	 
	 <?php
                        $link = connectToDB();


                      
					    $strQueryCategories = "select distinct DATE_FORMAT(Factory_Output.DatePro,'%c-%d-%Y') as DatePro from Factory_Output order by DatePro";


                        
                        $resultCategories = mysql_query($strQueryCategories) or die(mysql_error());

                      
						$strQueryData = "select Factory_Master.FactoryName, DATE_FORMAT(Factory_Output.DatePro,'%c-%d-%Y') as DatePro, Factory_Output.Quantity
						from Factory_Master Factory_Master, Factory_Output Factory_Output 
						where Factory_Output.FactoryID = Factory_Master.FactoryId 
						order by Factory_Output.FactoryID, Factory_Output.DatePro";

                      
                        $resultData = mysql_query($strQueryData) or die(mysql_error());

                       
                        $strXML = "<chart legendPostion='' caption='Factory Output report' subCaption='By Quantity' xAxisName='Factory' yAxisName='Units' showValues='0' formatNumberScale='0' rotateValues='1' theme='fint'>";

                        $strXML .= buildCategories ($resultCategories, "DatePro");

                       
                        $strXML .= buildDatasets ( $resultData, "Quantity", "FactoryName");

                       
                        $strXML .= "</chart>";
						

						 echo renderChart("MSLine", "", $strXML, "FactorySum", 600, 300, false, true);


                      
                        mysql_free_result($resultCategories);
                        mysql_free_result($resultData);
                        mysql_close($link);

                     function buildCategories ( $result, $labelField ) {
                            $strXML = "";
                            if ($result) {
                                $strXML = "<categories>";
                                while($ors = mysql_fetch_array($result)) {
                                    $strXML .= "<category label='" . $ors[$labelField]. "'/>";
                                }
                                $strXML .= "</categories>";
                            }
                            return $strXML;
                        }

                      
					
						 
                        function buildDatasets ($result, $valueField, $controlBreak ) { 
                            $strXML = "";
                            if ($result) {

                                $controlBreakValue ="";
                                     
                                while( $ors = mysql_fetch_array($result) ) {
							
									echo" ";

                                    if( $controlBreakValue != $ors[$controlBreak] ) {
                                        $controlBreakValue =  $ors[$controlBreak];
                                        $strXML .= ( $strXML =="" ? "" : "</dataset>") . ( "<dataset seriesName='" . $controlBreakValue . "'>" ) ;
                                    }
                                  
								    $strXML .= "<set value='" . $ors[$valueField] . "'/>";
									
                                }
                                $strXML .= "</dataset>";
                            }
							
                            return $strXML;

                        }
						?>
		 
        
  </BODY>
</HTML>