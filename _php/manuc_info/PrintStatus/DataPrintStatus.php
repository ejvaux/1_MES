<?php
include $_SERVER['DOCUMENT_ROOT'].'/1_mes/_php/manuc_info/1_MES_DB.php';
    $sql="";
    $strfrom=$_POST['sortfrom'];
    $strto=$_POST['sortto'];
    $search=$_POST['search'];
     # code...
     
    $PlanType=$_POST['PlanType'];

  /*   if(strpos($url, 'sortfrom=')!==false)
    { */
        
                      if ($strto == "" && $strfrom=="") 
                      {
                         # code... condition above is whenever both date range are null
                  /*        $sql="SELECT * from MIS_PROD_PLAN_DL WHERE JOB_ORDER_NO LIKE '%$str%' or CUSTOMER_CODE LIKE '%$str%' or CUSTOMER_NAME LIKE '%$str%' or ITEM_CODE LIKE '%$str%' or ITEM_NAME LIKE '%$str%' or TOOL_NUMBER LIKE '%$str%' or MACHINE_CODE LIKE '%$str%' or mACHINE_MAKER LIKE '%$str%' or TONNAGE LIKE '%$str%' or MACHINE_GROUP LIKE '%$str%' or PRIORITY LIKE '%$str%' order by DATE_ DESC"; */

                  $sql="SELECT mis_product.*, dmc_item_list.MODEL 
                  FROM `mis_product`
                  LEFT JOIN dmc_item_list on mis_product.ITEM_CODE = dmc_item_list.ITEM_CODE 
                  LEFT JOIN mis_prod_plan_dl on mis_product.JO_NUM = mis_prod_plan_dl.JOB_ORDER_NO
                  LEFT JOIN dmc_customer ON mis_product.CUST_CODE = dmc_customer.CUSTOMER_CODE
                  WHERE (mis_prod_plan_dl.MACHINE_CODE LIKE '%$search%' or mis_product.PRINT_DATE LIKE '%$search%' 
                  or mis_product.ITEM_CODE LIKE '%$search%' or mis_product.ITEM_NAME LIKE '%$search%' or mis_product.JO_NUM LIKE '%$search%'
                   or mis_product.TOOL_NUM LIKE '%$search%' or dmc_item_list.MODEL LIKE '%$search%') 
                   AND (dmc_customer.DIVISION_CODE = '$PlanType') 
                  ORDER BY mis_product.PRINT_DATE DESC";  

                       } 

                      elseif ($strto=="" && $strfrom!="") 
                      {
                        # code... condition above is whenver 
                        if ($search!="") 
                        {
                          # code...
                           $sql="SELECT mis_product.*, dmc_item_list.MODEL 
                           FROM `mis_product`
                          LEFT JOIN dmc_item_list on mis_product.ITEM_CODE = dmc_item_list.ITEM_CODE 
                          LEFT JOIN mis_prod_plan_dl on mis_product.JO_NUM = mis_prod_plan_dl.JOB_ORDER_NO
                          LEFT JOIN dmc_customer ON mis_product.CUST_CODE = dmc_customer.CUSTOMER_CODE
                          WHERE (mis_prod_plan_dl.MACHINE_CODE LIKE '%$search%' or mis_product.PRINT_DATE LIKE '%$search%' 
                          or mis_product.ITEM_CODE LIKE '%$search%' or mis_product.JO_NUM LIKE '%$search%' 
                          or mis_product.ITEM_NAME LIKE '%$search%' or mis_product.TOOL_NUM LIKE '%$search%' 
                          or dmc_item_list.MODEL LIKE '%$search%') 
                          AND (mis_product.DATE_ = '$strfrom') AND (dmc_customer.DIVISION_CODE = '$PlanType')
                          ORDER BY mis_product.PRINT_DATE DESC";


                        }

                        else
                        {
                             $sql="SELECT mis_product.*, dmc_item_list.MODEL
                             FROM `mis_product`
                             LEFT JOIN dmc_item_list on mis_product.ITEM_CODE = dmc_item_list.ITEM_CODE
                             LEFT JOIN mis_prod_plan_dl on mis_product.JO_NUM = mis_prod_plan_dl.JOB_ORDER_NO
                             LEFT JOIN dmc_customer ON mis_product.CUST_CODE = dmc_customer.CUSTOMER_CODE
                             WHERE mis_product.DATE_ = '$strfrom' AND dmc_customer.DIVISION_CODE = '$PlanType'
                             ORDER BY mis_product.PRINT_DATE DESC";
                   
                        }
                      }

                      elseif($strfrom!="" && $strto!="")
                      {
                                           
                           if ($search!="") 
                           {
                                        # code...

                                         $sql="SELECT mis_product.*, dmc_item_list.MODEL
                                         FROM `mis_product`
                                         LEFT JOIN dmc_item_list on mis_product.ITEM_CODE = dmc_item_list.ITEM_CODE
                                         LEFT JOIN mis_prod_plan_dl on mis_product.JO_NUM = mis_prod_plan_dl.JOB_ORDER_NO
                                         LEFT JOIN dmc_customer ON mis_product.CUST_CODE = dmc_customer.CUSTOMER_CODE                                 
                                         WHERE ( mis_prod_plan_dl.MACHINE_CODE LIKE '%$search%' or 
                                         mis_product.PRINT_DATE LIKE '%$search%' or mis_product.ITEM_CODE LIKE '%$search%' 
                                         or mis_product.ITEM_NAME LIKE '%$search%' or mis_product.JO_NUM LIKE '%$search%' 
                                         or mis_product.TOOL_NUM LIKE '%$search%' or dmc_item_list.MODEL LIKE '%$search%') 
                                         AND (mis_product.DATE_ BETWEEN '$strfrom' AND '$strto') 
                                         AND (dmc_customer.DIVISION_CODE = '$PlanType')
                                         ORDER BY mis_product.PRINT_DATE DESC";

                                          

                            }

                            else
                            {
                                         $sql="SELECT mis_product.*, dmc_item_list.MODEL
                                         FROM `mis_product`
                                         LEFT JOIN dmc_item_list on mis_product.ITEM_CODE = dmc_item_list.ITEM_CODE
                                         LEFT JOIN mis_prod_plan_dl on mis_product.JO_NUM = mis_prod_plan_dl.JOB_ORDER_NO
                                         LEFT JOIN dmc_customer ON mis_product.CUST_CODE = dmc_customer.CUSTOMER_CODE
                                        WHERE (dmc_customer.DIVISION_CODE = '$PlanType') 
                                        AND (mis_product.DATE_ BETWEEN '$strfrom' AND '$strto') 
                                        ORDER BY mis_product.PRINT_DATE DESC";
         
                            }




                      }

/*     }
    else
    {
            $sql="SELECT DISTINCT(mis_prod_plan_dl.ID), mis_prod_plan_dl.DATE_,mis_prod_plan_dl.JOB_ORDER_NO, 
                  mis_prod_plan_dl.ITEM_CODE, mis_prod_plan_dl.ITEM_NAME, mis_prod_plan_dl.CUSTOMER_CODE, 
                  mis_prod_plan_dl.CUSTOMER_NAME,mis_prod_plan_dl.PLAN_QTY, mis_prod_plan_dl.MACHINE_CODE, 
                  dmc_item_mold_matching.TOOL_NUMBER,dmc_item_mold_matching.CAVITY, dmc_machine_list.MACHINE_GROUP, 
                  dmc_machine_list.MACHINE_MAKER, dmc_machine_list.TONNAGE,mis_summarize_results.PROD_RESULT 

                  FROM mis_prod_plan_dl
                   
                  LEFT JOIN dmc_item_mold_matching
                     ON (mis_prod_plan_dl.ITEM_CODE = dmc_item_mold_matching.ITEM_CODE) 
                    AND (mis_prod_plan_dl.CUSTOMER_CODE=dmc_item_mold_matching.CUSTOMER_CODE) 
                  LEFT JOIN dmc_machine_list ON mis_prod_plan_dl.MACHINE_CODE = dmc_machine_list.MACHINE_CODE 
                  LEFT JOIN dmc_customer ON mis_prod_plan_dl.CUSTOMER_CODE = dmc_customer.CUSTOMER_CODE
                  LEFT JOIN mis_summarize_results on mis_prod_plan_dl.JOB_ORDER_NO = mis_summarize_results.JOB_ORDER_NO


                  WHERE dmc_customer.DIVISION_CODE = 'PTPI001'";

    } */

    $result = $conn->query($sql);
    $datavar=[];
    $ctr=0;
    while (($row = mysqli_fetch_array($result)))
     {
      # code...
      $temp_date = date("d M Y H:i:s",strtotime($row['PRINT_DATE']));
               
      $ctr+=1;
    
   
      
      array_push($datavar,["NO"=> $ctr ,"JO NO"=>$row['JO_NUM'], "SERIAL PRINT"=> $row['JO_BARCODE'] ,
      "PROD DATE"=>$temp_date,"ITEM CODE"=>$row['ITEM_CODE'],"ITEM NAME"=>$row['ITEM_NAME'],"MODEL"=>$row['MODEL'],
      "PRINT QTY"=>$row['PRINT_QTY'],"MACHINE CODE"=>$row['MACHINE_CODE'],"TOOL NO"=>$row['TOOL_NUM'],"PACKING NUMBER"=>$row['PACKING_NUMBER']
      ,"PRINT TIME"=>$temp_date,"PRINTED BY"=>$row['PRINTED_BY']]);
    
      
    
    }
    echo json_encode($datavar,true);    
    ?>
  