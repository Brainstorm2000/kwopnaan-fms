<?php 
    $date = date('Y/m/d');
    $new_date = str_replace("/", "-", $date);
?>
<!--sidebar end-->
<!--main content start-->
<script type="text/javascript" src="common/js/google-loader.js"></script>
<section id="main-content">
    <section class="wrapper site-min-height">
                <?php
                    if(isset($_POST['submit'])) {
                        $today = $_POST['date_from'];
                        $formatted_date = date("D. jS F, Y", strtotime($today));
                    }
                ?>
                
                <section>
                    <form role="form" class="form-inline" action="home" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <!--     <label class="control-label col-md-3">Date Range</label> -->
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="date" max="<?php echo $new_date; ?>" class="form-control" name="date_from" value="<?php
                                        if (!empty($today)) {
                                            echo $today;
                                        }
                                        ?>" placeholder="<?php echo lang('date_from'); ?>">
                                    </div>  
                                    <div class="col-md-6">
                                        <button type="submit" name="submit" class="btn btn-info" style="margin-top: 0px; height:38.5px"><?php echo lang('submit'); ?></button>
                                    </div>  
                                </div>
                            </div>
                            
                        </div>
                    </form>
                </section>

        
                
                <div class="state-overview col-md-12" style="padding: 23px 0px;">
               
                
                <h2 class="text-center">SUMMARY</h2>
                
                    <?php if ($this->ion_auth->in_group(array('Depot1'))) { ?>
                        
                        <div class="col-md-4">
                            <section class="panel">
                                <header class="panel-heading">
                                    <h5>DROPPED AT DEPOT 1 (LOCATION)</h5>
                                    <small><?php echo $formatted_date; ?></small>
                                    
                                </header>
                                <div class="panel-body">
                                    <?php if (in_array('finance', $this->modules)) { ?>
                                        <div class="home_section">
                                            <p>
                                            <b>Bags:</b> <?php
                                                $sql = "SELECT sum(bags) AS bags FROM received_at_depot_1 WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                echo $result->row()->bags; 
                                            ?>
                                            </p><hr>

                                            <p>
                                            <b>Packs :</b> <?php
                                                
                                                $sql = "SELECT sum(packs) AS packs FROM received_at_depot_1 WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                echo $result->row()->packs; 
                                            ?>
                                            </p><hr>

                                            <p>
                                            <b>Jugs :</b> <?php
                                                
                                                $sql = "SELECT sum(jugs) AS jugs FROM received_at_depot_1 WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                echo $result->row()->jugs; 
                                            ?>
                                            </p><hr>
                                            
                                        </div>
                                    <?php } ?>
                                </div>
                            </section>

                            <section class="panel">
                                <header class="panel-heading">
                                    <h5>SOLD BY DEPOT 1 (LOCATION)</h5>
                                    <small><?php echo $formatted_date; ?></small>
                                    
                                </header>
                                <div class="panel-body">
                                    <?php if (in_array('finance', $this->modules)) { ?>
                                        <div class="home_section">
                                            <p>
                                            <b>Bags:</b> <?php
                                               
                                                $sql = "SELECT sum(bags) AS bags FROM received_at_depot_1 WHERE date_returned = '$today'";
                                                $sql2 = "SELECT sum(bags) AS bags FROM returned_by_depot_1 WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                $result2 = $this->db->query($sql2);
                                                echo ($result->row()->bags) - ($result2->row()->bags); 
                                            ?>
                                            </p><hr>

                                            <p>
                                            <b>Packs :</b> <?php
                                                
                                                $sql = "SELECT sum(packs) AS packs FROM received_at_depot_1 WHERE date_returned = '$today'";
                                                $sql2 = "SELECT sum(packs) AS packs FROM returned_by_depot_1 WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                $result2 = $this->db->query($sql2);
                                                echo ($result->row()->packs) - ($result2->row()->packs);
                                            ?>
                                            </p><hr>

                                            <p>
                                            <b>Jugs :</b> <?php
                                                ;
                                                $sql = "SELECT sum(jugs) AS jugs FROM received_at_depot_1 WHERE date_returned = '$today'";
                                                $sql2 = "SELECT sum(jugs) AS jugs FROM returned_by_depot_1 WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                $result2 = $this->db->query($sql2);
                                                echo ($result->row()->jugs) - ($result2->row()->jugs); 
                                            ?>
                                            </p><hr>
                                            
                                        </div>
                                    <?php } ?>
                                </div>
                            </section>

                        </div>
                    <?php } ?>
                    <?php if ($this->ion_auth->in_group(array('Depot2'))) { ?>
                        <div class="col-md-4">
                            <section class="panel">
                                <header class="panel-heading">
                                    <h5>DROPPED AT DEPOT 2 (LOCATION)</h5>
                                    <small><?php echo $formatted_date; ?></small>
                                    
                                </header>
                                <div class="panel-body">
                                    <?php if (in_array('finance', $this->modules)) { ?>
                                        <div class="home_section">
                                            <p>
                                            <b>Bags:</b> <?php
                                                
                                                $sql = "SELECT sum(bags) AS bags FROM received_at_depot_2 WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                echo $result->row()->bags; 
                                            ?>
                                            </p><hr>

                                            <p>
                                            <b>Packs :</b> <?php
                                                
                                                $sql = "SELECT sum(packs) AS packs FROM received_at_depot_2 WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                echo $result->row()->packs; 
                                            ?>
                                            </p><hr>

                                            <p>
                                            <b>Jugs :</b> <?php
                                               
                                                $sql = "SELECT sum(jugs) AS jugs FROM received_at_depot_2 WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                echo $result->row()->jugs; 
                                            ?>
                                            </p><hr>
                                            
                                        </div>
                                    <?php } ?>
                                </div>
                            </section>

                            <section class="panel">
                                <header class="panel-heading">
                                    <h5>SOLD BY DEPOT 2 (LOCATION)</h5>
                                    <small><?php echo $formatted_date; ?></small>
                                    
                                </header>
                                <div class="panel-body">
                                    <?php if (in_array('finance', $this->modules)) { ?>
                                        <div class="home_section">
                                            <p>
                                            <b>Bags:</b> <?php
                                                
                                                $sql = "SELECT sum(bags) AS bags FROM received_at_depot_2 WHERE date_returned = '$today'";
                                                $sql2 = "SELECT sum(bags) AS bags FROM returned_by_depot_2 WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                $result2 = $this->db->query($sql2);
                                                echo ($result->row()->bags) - ($result2->row()->bags); 
                                            ?>
                                            </p><hr>

                                            <p>
                                            <b>Packs :</b> <?php
                                               
                                                $sql = "SELECT sum(packs) AS packs FROM received_at_depot_2 WHERE date_returned = '$today'";
                                                $sql2 = "SELECT sum(packs) AS packs FROM returned_by_depot_2 WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                $result2 = $this->db->query($sql2);
                                                echo ($result->row()->packs) - ($result2->row()->packs);
                                            ?>
                                            </p><hr>

                                            <p>
                                            <b>Jugs :</b> <?php
                                               
                                                $sql = "SELECT sum(jugs) AS jugs FROM received_at_depot_2 WHERE date_returned = '$today'";
                                                $sql2 = "SELECT sum(jugs) AS jugs FROM returned_by_depot_2 WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                $result2 = $this->db->query($sql2);
                                                echo ($result->row()->jugs) - ($result2->row()->jugs); 
                                            ?>
                                            </p><hr>
                                            
                                        </div>
                                    <?php } ?>
                                </div>
                            </section>

                        </div>

                    <?php } ?>
                    <?php if ($this->ion_auth->in_group(array('Factory'))) { ?>
                        <div class="col-md-4">
                            <section class="panel">
                                <header class="panel-heading">
                                    <h5>LOADED AT FACTORY</h5>
                                    <small><?php echo $formatted_date; ?></small>
                                    
                                </header>
                                <div class="panel-body">
                                    <?php if (in_array('finance', $this->modules)) { ?>
                                        <div class="home_section">
                                            <p>
                                            <b>Bags:</b> <?php
                                                
                                                $sql = "SELECT sum(bags) AS bags FROM factory_production WHERE date_inputed = '$today'";
                                                $result = $this->db->query($sql);
                                                echo $result->row()->bags; 
                                            ?>
                                            </p><hr>

                                            <p>
                                            <b>Packs :</b> <?php
                                               
                                                $sql = "SELECT sum(packs) AS packs FROM factory_production WHERE date_inputed = '$today'";
                                                $result = $this->db->query($sql);
                                                echo $result->row()->packs; 
                                            ?>
                                            </p><hr>

                                            <p>
                                            <b>Jugs :</b> <?php
                                              
                                                $sql = "SELECT sum(jugs) AS jugs FROM factory_production WHERE date_inputed = '$today'";
                                                $result = $this->db->query($sql);
                                                echo $result->row()->jugs; 
                                            ?>
                                            </p><hr>
                                            
                                        </div>
                                    <?php } ?>
                                </div>
                            </section>

                            <section class="panel">
                                <header class="panel-heading">
                                    <h5>SOLD BY FACTORY</h5>
                                    <small><?php echo $formatted_date; ?></small>
                                    
                                </header>
                                <div class="panel-body">
                                    <?php if (in_array('finance', $this->modules)) { ?>
                                        <div class="home_section">
                                            <p>
                                            <b>Bags:</b> <?php
                                               
                                                $sql = "SELECT sum(bags) AS bags FROM factory_production WHERE date_inputed = '$today'";
                                                $sql2 = "SELECT sum(bags) AS bags FROM returned_to_factory WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                $result2 = $this->db->query($sql2);
                                                echo ($result->row()->bags) - ($result2->row()->bags); 
                                            ?>
                                            </p><hr>

                                            <p>
                                            <b>Packs :</b> <?php
                                                
                                                $sql = "SELECT sum(packs) AS packs FROM factory_production WHERE date_inputed = '$today'";
                                                $sql2 = "SELECT sum(packs) AS packs FROM returned_to_factory WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                $result2 = $this->db->query($sql2);
                                                echo ($result->row()->packs) - ($result2->row()->packs);
                                            ?>
                                            </p><hr>

                                            <p>
                                            <b>Jugs :</b> <?php
                                               
                                                $sql = "SELECT sum(jugs) AS jugs FROM factory_production WHERE date_inputed = '$today'";
                                                $sql2 = "SELECT sum(jugs) AS jugs FROM returned_to_factory WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                $result2 = $this->db->query($sql2);
                                                echo ($result->row()->jugs) - ($result2->row()->jugs); 
                                            ?>
                                            </p><hr>
                                            
                                        </div>
                                    <?php } ?>
                                </div>
                            </section>

                        </div>
                    <?php } ?>  
                    <?php if ($this->ion_auth->in_group(array('admin'))) { ?>

                        <div class="col-md-4">
                            <section class="panel">
                                <header class="panel-heading">
                                    <h5>LOADED AT FACTORY</h5>
                                    <small><?php echo $formatted_date; ?></small>
                                    
                                </header>
                                <div class="panel-body">
                                    <?php if (in_array('finance', $this->modules)) { ?>
                                        <div class="home_section">
                                            <p>
                                            <b>Bags:</b> <?php
                                                $sql = "SELECT sum(bags) AS bags FROM factory_production WHERE date_inputed = '$today'";
                                                $result = $this->db->query($sql);
                                                echo $result->row()->bags; 
                                            ?>
                                            </p><hr>

                                            <p>
                                            <b>Packs :</b> <?php
                                                $sql = "SELECT sum(packs) AS packs FROM factory_production WHERE date_inputed = '$today'";
                                                $result = $this->db->query($sql);
                                                echo $result->row()->packs; 
                                            ?>
                                            </p><hr>

                                            <p>
                                            <b>Jugs :</b> <?php
                                                $sql = "SELECT sum(jugs) AS jugs FROM factory_production WHERE date_inputed = '$today'";
                                                $result = $this->db->query($sql);
                                                echo $result->row()->jugs; 
                                            ?>
                                            </p><hr>
                                            
                                        </div>
                                    <?php } ?>
                                </div>
                            </section>

                            <section class="panel">
                                <header class="panel-heading">
                                    <h5>SOLD BY FACTORY</h5>
                                    <small><?php echo $formatted_date; ?></small>
                                    
                                </header>
                                <div class="panel-body">
                                    <?php if (in_array('finance', $this->modules)) { ?>
                                        <div class="home_section">
                                            <p>
                                            <b>Bags:</b> <?php
                                               
                                                $sql = "SELECT sum(bags) AS bags FROM factory_production WHERE date_inputed = '$today'";
                                                $sql2 = "SELECT sum(bags) AS bags FROM returned_to_factory WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                $result2 = $this->db->query($sql2);
                                                $factory_bags_sold = ($result->row()->bags) - ($result2->row()->bags);
                                                echo $factory_bags_sold;
                                            ?>
                                            </p><hr>

                                            <p>
                                            <b>Packs :</b> <?php
                                                
                                                $sql = "SELECT sum(packs) AS packs FROM factory_production WHERE date_inputed = '$today'";
                                                $sql2 = "SELECT sum(packs) AS packs FROM returned_to_factory WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                $result2 = $this->db->query($sql2);
                                                $factory_packs_sold = ($result->row()->packs) - ($result2->row()->packs);
                                                echo $factory_packs_sold
                                            ?>
                                            </p><hr>

                                            <p>
                                            <b>Jugs :</b> <?php
                                               
                                                $sql = "SELECT sum(jugs) AS jugs FROM factory_production WHERE date_inputed = '$today'";
                                                $sql2 = "SELECT sum(jugs) AS jugs FROM returned_to_factory WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                $result2 = $this->db->query($sql2);
                                                $factory_jugs_sold = ($result->row()->jugs) - ($result2->row()->jugs);
                                                echo $factory_jugs_sold;
                                            ?>
                                            </p><hr>
                                            
                                        </div>
                                    <?php } ?>
                                </div>
                            </section>

                        </div>

                        <div class="col-md-4">
                            <section class="panel">
                                <header class="panel-heading">
                                    <h5>DROPPED AT DEPOT 1 (LOCATION)</h5>
                                    <small><?php echo $formatted_date; ?></small>
                                    
                                </header>
                                <div class="panel-body">
                                    <?php if (in_array('finance', $this->modules)) { ?>
                                        <div class="home_section">
                                            <p>
                                            <b>Bags:</b> <?php
                                                
                                                $sql = "SELECT sum(bags) AS bags FROM received_at_depot_1 WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                echo $result->row()->bags; 
                                            ?>
                                            </p><hr>

                                            <p>
                                            <b>Packs :</b> <?php
                                               
                                                $sql = "SELECT sum(packs) AS packs FROM received_at_depot_1 WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                echo $result->row()->packs; 
                                            ?>
                                            </p><hr>

                                            <p>
                                            <b>Jugs :</b> <?php
                                                
                                                $sql = "SELECT sum(jugs) AS jugs FROM received_at_depot_1 WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                echo $result->row()->jugs; 
                                            ?>
                                            </p><hr>
                                            
                                        </div>
                                    <?php } ?>
                                </div>
                            </section>

                            <section class="panel">
                                <header class="panel-heading">
                                    <h5>SOLD BY DEPOT 1 (LOCATION)</h5>
                                    <small><?php echo $formatted_date; ?></small>
                                    
                                </header>
                                <div class="panel-body">
                                    <?php if (in_array('finance', $this->modules)) { ?>
                                        <div class="home_section">
                                            <p>
                                            <b>Bags:</b> <?php
                                               
                                                $sql = "SELECT sum(bags) AS bags FROM received_at_depot_1 WHERE date_returned = '$today'";
                                                $sql2 = "SELECT sum(bags) AS bags FROM returned_by_depot_1 WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                $result2 = $this->db->query($sql2);
                                                $depot1_bags_sold = ($result->row()->bags) - ($result2->row()->bags);
                                                echo $depot1_bags_sold; 
                                            ?>
                                            </p><hr>

                                            <p>
                                            <b>Packs :</b> <?php
                                                
                                                $sql = "SELECT sum(packs) AS packs FROM received_at_depot_1 WHERE date_returned = '$today'";
                                                $sql2 = "SELECT sum(packs) AS packs FROM returned_by_depot_1 WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                $result2 = $this->db->query($sql2);
                                                $depot1_packs_sold = ($result->row()->packs) - ($result2->row()->packs);
                                                echo $depot1_packs_sold;
                                            ?>
                                            </p><hr>

                                            <p>
                                            <b>Jugs :</b> <?php
                                                
                                                $sql = "SELECT sum(jugs) AS jugs FROM received_at_depot_1 WHERE date_returned = '$today'";
                                                $sql2 = "SELECT sum(jugs) AS jugs FROM returned_by_depot_1 WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                $result2 = $this->db->query($sql2);
                                                $depot1_jugs_sold = ($result->row()->jugs) - ($result2->row()->jugs);
                                                echo $depot1_jugs_sold;
                                            ?>
                                            </p><hr>
                                            
                                        </div>
                                    <?php } ?>
                                </div>
                            </section>

                        </div>

                        <div class="col-md-4">
                            <section class="panel">
                                <header class="panel-heading">
                                    <h5>DROPPED AT DEPOT 2 (LOCATION)</h5>
                                    <small><?php echo $formatted_date; ?></small>
                                    
                                </header>
                                <div class="panel-body">
                                    <?php if (in_array('finance', $this->modules)) { ?>
                                        <div class="home_section">
                                            <p>
                                            <b>Bags:</b> <?php
                                               
                                                $sql = "SELECT sum(bags) AS bags FROM received_at_depot_2 WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                echo $result->row()->bags; 
                                            ?>
                                            </p><hr>

                                            <p>
                                            <b>Packs :</b> <?php
                                                
                                                $sql = "SELECT sum(packs) AS packs FROM received_at_depot_2 WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                echo $result->row()->packs; 
                                            ?>
                                            </p><hr>

                                            <p>
                                            <b>Jugs :</b> <?php
                                                
                                                $sql = "SELECT sum(jugs) AS jugs FROM received_at_depot_2 WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                echo $result->row()->jugs; 
                                            ?>
                                            </p><hr>
                                            
                                        </div>
                                    <?php } ?>
                                </div>
                            </section>

                            <section class="panel">
                                <header class="panel-heading">
                                    <h5>SOLD BY DEPOT 2 (LOCATION)</h5>
                                    <small><?php echo $formatted_date; ?></small>
                                    
                                </header>
                                <div class="panel-body">
                                    <?php if (in_array('finance', $this->modules)) { ?>
                                        <div class="home_section">
                                            <p>
                                            <b>Bags:</b> <?php
                                                
                                                $sql = "SELECT sum(bags) AS bags FROM received_at_depot_2 WHERE date_returned = '$today'";
                                                $sql2 = "SELECT sum(bags) AS bags FROM returned_by_depot_2 WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                $result2 = $this->db->query($sql2);
                                                $depot2_bags_sold = ($result->row()->bags) - ($result2->row()->bags);
                                                echo $depot2_bags_sold; 
                                            ?>
                                            </p><hr>

                                            <p>
                                            <b>Packs :</b> <?php
                                                
                                                $sql = "SELECT sum(packs) AS packs FROM received_at_depot_2 WHERE date_returned = '$today'";
                                                $sql2 = "SELECT sum(packs) AS packs FROM returned_by_depot_2 WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                $result2 = $this->db->query($sql2);
                                                $depot2_packs_sold = ($result->row()->packs) - ($result2->row()->packs);
                                                echo $depot2_packs_sold;
                                            ?>
                                            </p><hr>

                                            <p>
                                            <b>Jugs :</b> <?php
                                          
                                                $sql = "SELECT sum(jugs) AS jugs FROM received_at_depot_2 WHERE date_returned = '$today'";
                                                $sql2 = "SELECT sum(jugs) AS jugs FROM returned_by_depot_2 WHERE date_returned = '$today'";
                                                $result = $this->db->query($sql);
                                                $result2 = $this->db->query($sql2);
                                                $depot2_jugs_sold = ($result->row()->jugs) - ($result2->row()->jugs);
                                                echo $depot2_jugs_sold;
                                            ?>
                                            </p><hr>
                                            
                                        </div>
                                    <?php } ?>
                                </div>
                            </section>

                        </div>

                        

                    <?php } ?>
                </div>
                <?php if ($this->ion_auth->in_group(array('admin'))) { ?>
                    <?php
                    $bag_price = $settings->bags;
                    $pack_price = $settings->packs;
                    $jug_price = $settings->jugs;

                    $factory_sales = ($factory_bags_sold * $bag_price)+($factory_packs_sold * $pack_price)+($factory_jugs_sold * $jug_price);
                    $depot1_sales = ($depot1_bags_sold * $bag_price)+($depot1_packs_sold * $pack_price)+($depot1_jugs_sold * $jug_price);
                    $depot2_sales = ($depot2_bags_sold * $bag_price)+($depot2_packs_sold * $pack_price)+($depot2_jugs_sold * $jug_price);
                    $total_sales = $factory_sales + $depot1_sales + $depot2_sales;
                    ?>
                    <div class="state-overview col-md-12">
                        <h2 class="text-center">SALES</h2>
                        <section class="panel">
                                <header class="panel-heading">
                                    <h4>TOTAL SALES</h4>
                                    <small><?php echo $formatted_date; ?></small>
                                    
                                </header>
                                <div class="panel-body">
                                    <h3 class="text-center"><?php echo $settings->currency; ?><?php echo number_format($total_sales, 2, '.', ',');?></h3>
                                    
                                </div>
                        </section>
                        <div class="row">
                            <div class="col-md-4">
                                <section class="panel">
                                    <header class="panel-heading">
                                        <h4>FROM FACTORY</h4>
                                        <small><?php echo $formatted_date; ?></small>
                                        
                                    </header>
                                    <div class="panel-body">
                                        <h3 class="text-center"><?php echo $settings->currency; ?><?php echo number_format($factory_sales, 2, '.', ',');?></h3>
                                        
                                    </div>
                                </section>
                            </div>

                            <div class="col-md-4">
                                <section class="panel">
                                    <header class="panel-heading">
                                        <h4>FROM DEPOT I</h4>
                                        <small><?php echo $formatted_date; ?></small>
                                        
                                    </header>
                                    <div class="panel-body">
                                        <h3 class="text-center"><?php echo $settings->currency; ?><?php echo number_format($depot1_sales, 2, '.', ',');?></h3>
                                        
                                    </div>
                                </section>
                            </div>

                            <div class="col-md-4">
                                <section class="panel">
                                    <header class="panel-heading">
                                        <h4>FROM DEPOT II</h4>
                                        <small><?php echo $formatted_date; ?></small>
                                        
                                    </header>
                                    <div class="panel-body">
                                        <h3 class="text-center"><?php echo $settings->currency; ?><?php echo number_format($depot2_sales, 2, '.', ',');?></h3>
                                        
                                    </div>
                                </section>
                            </div>
                        </div>
        
                    </div>
                <?php } ?>







        <style>

            table{
                box-shadow: none;
            }

            .fc-head{

                box-shadow: 0 2px 5px 0 rgba(0, 0, 0, .16), 0 2px 10px 0 rgba(0, 0, 0, .12);

            }

            .panel-body{
                background: #fff;
            }

            thead{
                background: #fff;
            }

            .panel-body {
                background: #fff;
            }

            .panel-heading {
                border-radius: 0px;
                background: #fff !important;
                color: #000;
                padding-left: 10px;
                font-size: 13px !important;
                margin-top: 3px;
                text-align: center;
            }

            .add_patient{
                background: #009988;
            }

            .add_appointment{
                background: #f8d347;
            }

            .add_prescription{
                background: blue;
            }

            .add_lab_report{

            }

            .y-axis li span {
                display: block;
                margin: -20px 0 0 -25px;
                padding: 0 20px;
                width: 40px;
            }

            .sale_color{
                background: #69D2E7 !important;
                padding: 10px !important;
                font-size: 5px;
                margin-right: 10px;
            }

            .expense_color{
                background: #F38630 !important;
                padding: 10px !important;
                font-size: 5px;
                margin-right: 10px;
            }

            audio, canvas, progress, video {
                display: inline-block;
                vertical-align: baseline;
                width: 100% !important;
                height: 101% !important;
                margin-bottom: 18%;
            }  


            .panel-heading{
                margin-top: 0px;
            }


        </style>


        <!--state overview end-->
    </section>
</section>
<!--main content end-->
<!--footer start-->
<!--footer end-->
</section>

<!-- js placed at the end of the document so the pages load faster -->







<script type="text/javascript">
    google.charts.load("current", {packages: ["corechart"]});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {

        var months = ["January", "February", "March", "April", "May", "June",
            "July", "August", "September", "October", "November", "December"];

        var d = new Date();
        var selectedMonthName = months[d.getMonth()] + ', ' + d.getFullYear();


        var data = google.visualization.arrayToDataTable([
            ['Task', 'Hours per Day'],
            ['Income', <?php
        if (!empty($this_month['payment'])) {
            echo $this_month['payment'];
        } else {
            echo '0';
        }
        ?>],
            ['Expense', <?php
        if (!empty($this_month['expense'])) {
            echo $this_month['expense'];
        } else {
            echo '0';
        }
        ?>],
        ]);

        var options = {
            title: selectedMonthName,
            is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
    }
</script>




<script type="text/javascript">
    google.charts.load("current", {packages: ["corechart"]});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {

        var months = ["January", "February", "March", "April", "May", "June",
            "July", "August", "September", "October", "November", "December"];

        var d = new Date();
        var selectedMonthName = months[d.getMonth()] + ', ' + d.getFullYear();

        var data = google.visualization.arrayToDataTable([
            ['Task', 'Hours per Day'],
            ['Treated', <?php
        if (!empty($this_month['appointment_treated'])) {
            echo $this_month['appointment_treated'];
        } else {
            echo '0';
        }
        ?>],
            ['cancelled', <?php
        if (!empty($this_month['appointment_cancelled'])) {
            echo $this_month['appointment_cancelled'];
        } else {
            echo '0';
        }
        ?>],
        ]);

        var options = {
            title: selectedMonthName + ' Appointment',
            pieHole: 0.4,
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
    }
</script>



<script type="text/javascript">
    google.charts.load('current', {'packages': ['corechart']});
    google.charts.setOnLoadCallback(drawVisualization);

    function drawVisualization() {
        // Some raw data (not necessarily accurate)
        var data = google.visualization.arrayToDataTable([
            ['Month', 'Income', 'Expense'],
            ['Jan', <?php echo $this_year['payment_per_month']['january']; ?>, <?php echo $this_year['expense_per_month']['january']; ?>],
            ['Feb', <?php echo $this_year['payment_per_month']['february']; ?>, <?php echo $this_year['expense_per_month']['february']; ?>],
            ['Mar', <?php echo $this_year['payment_per_month']['march']; ?>, <?php echo $this_year['expense_per_month']['march']; ?>],
            ['Apr', <?php echo $this_year['payment_per_month']['april']; ?>, <?php echo $this_year['expense_per_month']['april']; ?>],
            ['May', <?php echo $this_year['payment_per_month']['may']; ?>, <?php echo $this_year['expense_per_month']['may']; ?>],
            ['June', <?php echo $this_year['payment_per_month']['june']; ?>, <?php echo $this_year['expense_per_month']['june']; ?>],
            ['July', <?php echo $this_year['payment_per_month']['july']; ?>, <?php echo $this_year['expense_per_month']['july']; ?>],
            ['Aug', <?php echo $this_year['payment_per_month']['august']; ?>, <?php echo $this_year['expense_per_month']['august']; ?>],
            ['Sep', <?php echo $this_year['payment_per_month']['september']; ?>, <?php echo $this_year['expense_per_month']['september']; ?>],
            ['Oct', <?php echo $this_year['payment_per_month']['october']; ?>, <?php echo $this_year['expense_per_month']['october']; ?>],
            ['Nov', <?php echo $this_year['payment_per_month']['november']; ?>, <?php echo $this_year['expense_per_month']['november']; ?>],
            ['Dec', <?php echo $this_year['payment_per_month']['december']; ?>, <?php echo $this_year['expense_per_month']['december']; ?>],
        ]);

        var options = {
            title: new Date().getFullYear() + ' <?php echo lang('per_month_income_expense'); ?>',
            vAxis: {title: '<?php echo $settings->currency; ?>'},
            hAxis: {title: '<?php echo lang('months'); ?>'},
            seriesType: 'bars',
            series: {5: {type: 'line'}}
        };

        var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
        chart.draw(data, options);
    }
</script>









