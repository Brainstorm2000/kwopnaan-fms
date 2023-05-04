<!DOCTYPE html>


<html lang="en" <?php
if (!$this->ion_auth->in_group(array('superadmin'))) {
    $this->db->where('hospital_id', $this->hospital_id);
    $settings_lang = $this->db->get('settings')->row()->language;
    if ($settings_lang == 'arabic') {
        ?>     
              dir="rtl"
          <?php } else { ?>
              dir="ltr"
              <?php
          }
      } else {
          $this->db->where('hospital_id', 'superadmin');
          $settings_lang = $this->db->get('settings')->row()->language;
          if ($settings_lang == 'arabic') {
              ?>
              dir="rtl"     
          <?php } else { ?> 
              dir="ltr"
              <?php
          }
      }
      ?>>
    <head>
        <base href="<?php echo base_url(); ?>">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <link rel="shortcut icon" href="uploads/kDrop.png">
        <title> <?php echo $this->router->fetch_class(); ?> | 
            <?php
            if ($this->ion_auth->in_group(array('superadmin'))) {
                $this->db->where('hospital_id', 'superadmin');
            } else {
                $this->db->where('hospital_id', $this->hospital_id);
            }
            ?>
            <?php
            echo $this->db->get('settings')->row()->system_vendor;
            ?>  </title>
        <!-- Bootstrap core CSS -->
        <link href="common/css/bootstrap.min.css" rel="stylesheet">
        <link href="common/css/bootstrap-reset.css" rel="stylesheet">
        <!--external css-->
        <link href="common/assets/DataTables/datatables.min.css" rel="stylesheet" />
        <link href="common/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <!-- Custom styles for this template -->
        <link href="common/css/style.css" rel="stylesheet">
        <link href="common/css/style-responsive.css" rel="stylesheet" />
        <link rel="stylesheet" href="common/assets/bootstrap-datepicker/css/datepicker.css" />
        <link rel="stylesheet" type="text/css" href="common/assets/bootstrap-daterangepicker/daterangepicker-bs3.css" />
        <link rel="stylesheet" type="text/css" href="common/assets/bootstrap-datetimepicker/css/datetimepicker.css" />
        <link rel="stylesheet" type="text/css" href="common/assets/bootstrap-timepicker/compiled/timepicker.css">
        <link rel="stylesheet" type="text/css" href="common/assets/jquery-multi-select/css/multi-select.css" />
        <link href="common/css/invoice-print.css" rel="stylesheet" media="print">
        <link href="common/assets/fullcalendar/fullcalendar.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="common/assets/select2/css/select2.min.css"/>
        <link rel="stylesheet" type="text/css" href="common/assets/bootstrap-fileupload/bootstrap-fileupload.css" />
        <link rel="stylesheet" type="text/css" href="common/assets/bootstrap-wysihtml5/bootstrap-wysihtml5.css" />





        <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
        <!--[if lt IE 9]>
          <script src="js/html5shiv.js"></script>
          <script src="js/respond.min.js"></script>
        <![endif]-->


        <?php
        if (!$this->ion_auth->in_group(array('superadmin'))) {
            if ($settings_lang == 'arabic') {
                ?>
                <style>
                    #main-content {
                        margin-right: 211px;
                        margin-left: 0px; 
                    }

                    body {
                        background: #f1f1f1;

                    }
                </style>

                <?php
            }
        } else {
            if ($settings_lang == 'arabic') {
                ?>
                <style>
                    #main-content {
                        margin-right: 211px;
                        margin-left: 0px; 
                    }

                    body {
                        background: #f1f1f1;

                    }
                </style>

                <?php
            }
        }
        ?>

    </head>
    <body>
        <section id="container" class="">
            <!--header start-->
            <header class="header white-bg" style="background-color: #112233;">
                <div class="sidebar-toggle-box">
                    <div data-original-title="Toggle Navigation" data-placement="right" class="fa fa-dedent fa-bars tooltips"></div>
                </div>
                <!--logo start-->
                <?php
                if (!$this->ion_auth->in_group(array('superadmin'))) {
                    $this->db->where('hospital_id', $this->hospital_id);
                    $settings_title = $this->db->get('settings')->row()->title;
                    $settings_title = explode(' ', $settings_title);
                    ?>
                    <a href="" class="logo">
                        <strong>
                            <?php echo $settings_title[0]; ?><span><?php
                                if (!empty($settings_title[1])) {
                                    echo $settings_title[1];
                                }
                                ?></span>
                        </strong>
                    </a>
 
                <?php } else { ?>

                    <a href="" class="logo">
                        <strong>
                            Factory
                            <span>
                                System
                            </span>
                        </strong>
                    </a>

                <?php } ?>
                <!--logo end-->
                <div class="nav notify-row" id="top_menu">
                    <!--  notification start -->
                    <ul class="nav top-menu heade">  
                          
                    </ul>
                </div>
                <div class="top-nav ">
                    <style>
                        
                    </style>

                    <ul class="nav pull-right top-menu">
                        <!-- user login dropdown start-->
                        <li class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="username" style="color: gray;"><?php echo $this->ion_auth->user()->row()->username; ?></span>
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu extended logout">
                                <div class="log-arrow-up"></div>
                                <?php if (!$this->ion_auth->in_group('admin')) { ?> 
                                    <li><a href=""><i class="fa fa-dashboard"></i> <?php echo lang('dashboard'); ?></a></li>
                                <?php } ?>
                                <li><a href="profile"><i class=" fa fa-suitcase"></i><?php echo lang('profile'); ?></a></li>
                                <?php if ($this->ion_auth->in_group('admin')) { ?> 
                                    <li><a href="settings"><i class="fa fa-cog"></i> <?php echo lang('settings'); ?></a></li>
                                <?php } ?>

                                <li><a><i class="fa fa-user"></i> <?php echo $this->ion_auth->get_users_groups()->row()->name ?></a></li>
                                <li><a href="auth/logout"><i class="fa fa-key"></i> <?php echo lang('log_out'); ?></a></li>
                            </ul>
                        </li>
                        <!-- user login dropdown end -->
                    </ul>
                    <?php
                    $message = $this->session->flashdata('feedback');
                    if (!empty($message)) {
                        ?>
                        <code class="flashmessage pull-right"> <?php echo $message; ?></code>
                    <?php } ?> 
                </div>
            </header>
            <!--header end-->
            <!--sidebar start-->

            <!--sidebar start-->
            <aside>
                <div id="sidebar"  class="nav-collapse">
                    <!-- sidebar menu start-->
                    <ul class="sidebar-menu" id="nav-accordion">
                        <li>
                            <a href="home"> 
                                <i class="fa fa-dashboard"></i>
                                <span><?php echo lang('dashboard'); ?></span>
                            </a>
                        </li>
                        
                        
                        <?php if ($this->ion_auth->in_group('admin')) { ?>
                            <li> <li class="sub-menu">
                                <a href="javascript:;" >
                                    <i class="fa fa-users"></i>
                                    <span>Users</span>
                                </a>
                                <ul class="sub">
                                    <?php if (in_array('nurse', $this->modules)) { ?>
                                        <li><a href="depot-1-users"><i class="fa fa-user"></i>Depot I</a></li>
                                    <?php } ?>
                                    <?php if (in_array('pharmacist', $this->modules)) { ?>
                                        <li><a href="depot-2-users"><i class="fa fa-user"></i>Depot II</a></li>
                                    <?php } ?>
                                    <?php if (in_array('laboratorist', $this->modules)) { ?>
                                        <li><a href="factory-users"><i class="fa fa-user"></i>Factory</a></li>
                                    <?php } ?>
                                </ul>
                            </li>
                        <?php } ?>
                            
                        <?php if ($this->ion_auth->in_group(array('admin', 'Factory'))) { ?>
                            <?php if (in_array('donor', $this->modules)) { ?>
                                <li class="sub-menu">
                                    <a href="javascript:;" >
                                        <i class="fa  fa-circle"></i>
                                        <span>Factory</span>
                                    </a>
                                    <ul class="sub">
                                        <li><a  href="factory-production"><i class="fa fa-circle-o"></i>Load at Factory</a></li>
                                        <li><a  href="factory-return"><i class="fa fa-circle-o"></i>Return to Factory</a></li>
                                        <!-- <li><a  href="factory-inventory"><i class="fa fa-sign-out"></i>Factory Inventory</a></li> -->
                                    </ul>
                                </li>
                            <?php } ?>
                        <?php } ?>
                        <?php if ($this->ion_auth->in_group(array('admin', 'Depot1'))) { ?>
                            <?php if (in_array('donor', $this->modules)) { ?>
                                <li class="sub-menu">
                                    <a href="javascript:;" >
                                        <i class="fa  fa-circle"></i>
                                        <span>Depot I (Location)</span>
                                    </a>
                                    <ul class="sub">
                                        <li><a  href="depot-1-receive"><i class="fa fa-circle-o"></i>Receive at Depot</a></li>
                                        <li><a  href="depot-1-return"><i class="fa fa-circle-o"></i>Return to Factory</a></li>
                                    </ul>
                                </li>
                            <?php } ?>
                        <?php } ?>
                         <?php if ($this->ion_auth->in_group(array('admin', 'Depot2'))) { ?>
                            <?php if (in_array('donor', $this->modules)) { ?>
                                <li class="sub-menu">
                                    <a href="javascript:;" >
                                        <i class="fa  fa-circle"></i>
                                        <span>Depot II (Location)</span>
                                    </a>
                                    <ul class="sub">
                                        <li><a  href="depot-2-receive"><i class="fa fa-circle-o"></i>Receive at Depot</a></li>
                                        <li><a  href="depot-2-return"><i class="fa fa-circle-o"></i>Return to Factory</a></li>
                                    </ul>
                                </li>
                            <?php } ?>
                        <?php } ?>
                        

                        <?php if ($this->ion_auth->in_group(array('admin'))) { ?>
                            <li> <li class="sub-menu">
                                <a href="javascript:;" >
                                    <i class="fa fa-cogs"></i>
                                    <span><?php echo lang('settings'); ?></span>
                                </a>
                                <ul class="sub">
                                    <li><a href="settings"><i class="fa fa-gear"></i><?php echo lang('system_settings'); ?></a></li>
                                </ul>
                            </li>
                        <?php } ?>







                        <?php if ($this->ion_auth->in_group('Accountant')) { ?>
                            <?php if (in_array('finance', $this->modules)) { ?>
                                <li class="sub-menu">
                                    <a href="javascript:;" >
                                        <i class="fa  fa-hospital-o"></i>
                                        <span><?php echo lang('payments'); ?></span>
                                    </a>
                                    <ul class="sub">
                                        <li>
                                            <a href="finance/payment" >
                                                <i class="fa fa-money"></i>
                                                <span> <?php echo lang('payments'); ?> </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="finance/addPaymentView" >
                                                <i class="fa fa-plus-circle"></i>
                                                <span> <?php echo lang('add_payment'); ?> </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="finance/paymentCategory" >
                                                <i class="fa fa-edit"></i>
                                                <span> <?php echo lang('payment_procedures'); ?> </span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="finance/expense" >
                                        <i class="fa fa-money"></i>
                                        <span> <?php echo lang('expense'); ?> </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="finance/addExpenseView" >
                                        <i class="fa fa-plus-circle"></i>
                                        <span> <?php echo lang('add_expense'); ?> </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="finance/expenseCategory" >
                                        <i class="fa fa-edit"></i>
                                        <span> <?php echo lang('expense_categories'); ?> </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="finance/doctorsCommission" >
                                        <i class="fa fa-edit"></i>
                                        <span> <?php echo lang('doctors_commission'); ?> </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="finance/financialReport" >
                                        <i class="fa fa-book"></i>
                                        <span> <?php echo lang('financial_report'); ?> </span>
                                    </a>
                                </li>
                            <?php } ?>
                        <?php } ?>

                        <?php if ($this->ion_auth->in_group('Pharmacist')) { ?>
                            <?php if (in_array('medicine', $this->modules)) { ?>
                                <li>
                                    <a href="medicine" >
                                        <i class="fa fa-medkit"></i>
                                        <span> <?php echo lang('medicine_list'); ?> </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="medicine/addMedicineView" >
                                        <i class="fa fa-plus-circle"></i>
                                        <span> <?php echo lang('add_medicine'); ?> </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="medicine/medicineCategory" >
                                        <i class="fa fa-medkit"></i>
                                        <span> <?php echo lang('medicine_category'); ?> </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="medicine/addCategoryView" >
                                        <i class="fa fa-plus-circle"></i>
                                        <span> <?php echo lang('add_medicine_category'); ?> </span>
                                    </a>
                                </li>
                            <?php } ?>
                        <?php } ?>
                        <?php if ($this->ion_auth->in_group('Nurse')) { ?>
                            <?php if (in_array('bed', $this->modules)) { ?>
                                <li>
                                    <a href="bed" >
                                        <i class="fa fa-hdd-o"></i>
                                        <span> <?php echo lang('bed_list'); ?> </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="bed/bedCategory" >
                                        <i class="fa fa-edit"></i>
                                        <span> <?php echo lang('bed_category'); ?> </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="bed/bedAllotment" >
                                        <i class="fa fa-plus-square-o"></i>
                                        <span> <?php echo lang('bed_allotments'); ?> </span>
                                    </a>
                                </li>
                            <?php } ?>

                            <?php if (in_array('donor', $this->modules)) { ?>
                                <li>
                                    <a href="donor" >
                                        <i class="fa fa-medkit"></i>
                                        <span> <?php echo lang('donor'); ?> </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="donor/bloodBank" >
                                        <i class="fa fa-tint"></i>
                                        <span> <?php echo lang('blood_bank'); ?> </span>
                                    </a>
                                </li>
                            <?php } ?>
                        <?php } ?>

                        <?php if ($this->ion_auth->in_group('Patient')) { ?>
                            <?php if (in_array('donor', $this->modules)) { ?>
                                <li>
                                    <a href="donor" >
                                        <i class="fa fa-user"></i>
                                        <span><?php echo lang('donor'); ?></span>
                                    </a>
                                </li>
                            <?php } ?>
                            <?php if (in_array('report', $this->modules)) { ?>
                                <li>
                                    <a href="report/myreports" >
                                        <i class="fa fa-file-o"></i>
                                        <span> <?php echo lang('my_report'); ?> </span>
                                    </a>
                                </li>
                            <?php } ?>
                            <?php if (in_array('appointment', $this->modules)) { ?>
                                <li>
                                    <a href="patient/calendar" >
                                        <i class="fa fa-calendar-o"></i>
                                        <span> <?php echo lang('appointment'); ?> <?php echo lang('calendar'); ?> </span>
                                    </a>
                                </li>
                            <?php } ?>
                            <?php if (in_array('patient', $this->modules)) { ?>
                                <li>
                                    <a href="patient/myCaseList" >
                                        <i class="fa fa-file-text"></i>
                                        <span>  <?php echo lang('cases'); ?> </span>
                                    </a>
                                </li>
                            <?php } ?>
                            <?php if (in_array('prescription', $this->modules)) { ?>
                                <li>
                                    <a href="patient/myPrescription" >
                                        <i class="fa fa-medkit"></i>
                                        <span> <?php echo lang('prescription'); ?>  </span>
                                    </a>
                                </li>

                            <?php } ?>

                            <?php if (in_array('patient', $this->modules)) { ?>

                                <li>
                                    <a href="patient/myDocuments" >
                                        <i class="fa fa-file-o"></i>
                                        <span> <?php echo lang('documents'); ?> </span>
                                    </a>
                                </li>

                            <?php } ?>

                            <?php if (in_array('finance', $this->modules)) { ?>
                                <li>
                                    <a href="patient/myPaymentHistory" >
                                        <i class="fa fa-money"></i>
                                        <span> <?php echo lang('payment'); ?> </span>
                                    </a>
                                </li>
                            <?php } ?>
                        <?php } ?>

                        <?php if ($this->ion_auth->in_group('im')) { ?>
                            <li>
                                <a href="patient/addNewView" >
                                    <i class="fa fa-user"></i>
                                    <span> <?php echo lang('add_patient'); ?> </span>
                                </a>
                            </li>
                            <li>
                                <a href="finance/addPaymentView" >
                                    <i class="fa fa-user"></i>
                                    <span> <?php echo lang('add_payment'); ?>  </span>
                                </a>
                            </li>
                        <?php } ?>

                        <?php if ($this->ion_auth->in_group('superadmin')) { ?>

                            <li>
                                <a href="hospital">
                                    <i class="fa fa-sitemap"></i>
                                    <span><?php echo lang('all_hospitals'); ?></span>
                                </a>
                            </li>
                            <li>
                                <a href="hospital/addNewView">
                                    <i class="fa fa-plus-circle"></i>
                                    <span><?php echo lang('create_new_hospital'); ?></span>
                                </a>
                            </li>



                            <li>
                                <a href="hospital/package">
                                    <i class="fa fa-sitemap"></i>
                                    <span><?php echo lang('packages'); ?></span>
                                </a>
                            </li>
                            <li>
                                <a href="hospital/package/addNewView">
                                    <i class="fa fa-plus-circle"></i>
                                    <span><?php echo lang('add_new_package'); ?></span>
                                </a>
                            </li>

                            <li>
                                <a href="request">
                                    <i class="fa fa-sitemap"></i>
                                    <span><?php echo lang('requests'); ?></span>
                                </a>
                            </li>


                            <li class="sub-menu">
                                <a href="javascript:;" >
                                    <i class="fa fa-cogs"></i>
                                    <span><?php echo lang('website'); ?></span>
                                </a>
                                <ul class="sub">
                                    <li><a href="frontend" target="_blank" ><i class="fa fa-gear"></i><?php echo lang('visit_site'); ?></a></li>
                                    <li><a href="frontend/settings"><i class="fa fa-gear"></i><?php echo lang('website_settings'); ?></a></li>
                                    <li><a href="slide"><i class="fa fa-wrench"></i><?php echo lang('slides'); ?></a></li>
                                    <li><a href="service"><i class="fa fa-smile-o"></i><?php echo lang('services'); ?></a></li>
                                </ul>
                            </li>

                        <?php } ?>



                        <?php if ($this->ion_auth->in_group(array('superadmin'))) { ?>
                            <li><a href="settings"><i class="fa fa-gear"></i><?php echo lang('system_settings'); ?></a></li>
                            <li><a href="settings/language"><i class="fa fa-gear"></i><?php echo lang('language'); ?></a></li>
                        <?php } ?>


                        <li>
                            <a href="profile" >
                                <i class="fa fa-user"></i>
                                <span> <?php echo lang('profile'); ?> </span>
                            </a>
                        </li>


                        <!--multi level menu start-->

                        <!--multi level menu end-->

                    </ul>
                    <!-- sidebar menu end-->
                </div>
            </aside>
            <!--sidebar end-->




