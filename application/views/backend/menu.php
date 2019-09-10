<!-- ========== Left Sidebar Start ========== -->
           <div class="left-side-menu" style="background: linear-gradient(135deg,#0F2027 0,#2C5364 60%) !important;">

               <div class="slimscroll-menu">

                   <!-- LOGO -->
                   <a href="<?php echo base_url('index.php?admin'); ?>" class="logo text-center">
                       <span class="logo-lg">
                           <img src="<?php echo base_url();?>/assets/global/logo.png" alt="" height="40">
                       </span>

                       <!-- We should use a small logo for this image tag -->
                       <span class="logo-sm">
                           <img src="<?php echo base_url();?>/assets/global/neonton 5 shadow.png" alt="" height="40">
                       </span>
                   </a>

                   <!--- Sidemenu -->
                   <ul class="metismenu side-nav">
                       <li class="side-nav-item <?php if ($page_name == 'dashboard')echo 'active';?>">
                           <a href="<?php echo base_url();?>index.php?admin/dashboard" class="side-nav-link <?php if ($page_name == 'dashboard')echo 'active';?>">
                               <!-- <i class="dripicons-meter"></i> -->
                               <span> <?php echo get_phrase('dashboard'); ?> </span>
                           </a>
                       </li>

                        <li
                       <?php
                       $is_active = '';
                       if ( $page_name == 'genre_list'    ||
                        $page_name == 'genre_edit'    ||
                        $page_name == 'genre_create'    ||
                        $page_name == 'actor_list'    ||
                        $page_name == 'actor_edit'    ||
                        $page_name == 'actor_create'    ||
                        $page_name == 'movie_list'    ||
                        $page_name == 'movie_edit'    ||
                        $page_name == 'movie_create'    ||
                        $page_name == 'series_list'    ||
                        $page_name == 'series_edit'    ||
                        $page_name == 'series_create'  ||
                        $page_name == 'reality_list'    ||
                        $page_name == 'reality_edit'    ||
                        $page_name == 'reality_create'  ||
                        $page_name == 'documentary_list'    ||
                        $page_name == 'documentary_edit'    ||
                        $page_name == 'documentary_create'    ) $is_active = 'active'; ?>
                        class="side-nav-item <?php echo $is_active; ?>">
                           <a href="javascript: void(0);" class="side-nav-link <?php echo $is_active; ?>">
                               <!-- <i class="dripicons-view-apps"></i> -->
                               <span> <?php echo get_phrase('Entertainment'); ?> </span>
                               <span class="menu-arrow"></span>
                           </a>
                           <ul class="side-nav-second-level" aria-expanded="false">
                               <li class = "<?php if($page_name == 'genre_list') echo 'active'; ?>">
                                   <a href="<?php echo base_url();?>index.php?admin/genre_list" class = ""><?php echo get_phrase('genre'); ?></a>
                               </li>

                               <li class = "<?php if($page_name == 'actor_list') echo 'active'; ?>">
                                   <a href="<?php echo base_url();?>index.php?admin/actor_list" class = ""><?php echo get_phrase('actor'); ?></a>
                               </li>

                               <li class = "<?php if($page_name == 'movie_list') echo 'active'; ?>">
                                   <a href="<?php echo base_url();?>index.php?admin/movie_list" class = ""><?php echo get_phrase('movie'); ?></a>
                               </li>

                               <li class = "<?php if($page_name == 'series_list') echo 'active'; ?>">
                                   <a href="<?php echo base_url();?>index.php?admin/series_list" class = ""><?php echo get_phrase('TV series'); ?></a>
                               </li>

                               <li class = "<?php if($page_name == 'documentary_list') echo 'active'; ?>">
                                   <a href="<?php echo base_url();?>index.php?admin/documentary_list" class = ""><?php echo get_phrase('documentary'); ?></a>
                               </li>

                               <li class = "<?php if($page_name == 'reality_list') echo 'active'; ?>">
                                   <a href="<?php echo base_url();?>index.php?admin/reality_list" class = ""><?php echo get_phrase('reality show'); ?></a>
                               </li>
                           </ul>
                       </li>

                       <li
                       <?php
                       $is_active = '';
                       if ( $page_name == 'material_list'    ||
                        $page_name == 'material_edit'    ||
                        $page_name == 'material_create'    ||
                        $page_name == 'question_list'    ||
                        $page_name == 'question_edit'    ||
                        $page_name == 'question_create'    ||
                        $page_name == 'video_list'    ||
                        $page_name == 'video_edit'    ||
                        $page_name == 'video_create'    ||
                        $page_name == 'bimbel_list'    ||
                        $page_name == 'bimbel_edit'    ||
                        $page_name == 'bimbel_create'  ||
                        $page_name == 'ecourse_list'    ||
                        $page_name == 'ecourse_edit'    ||
                        $page_name == 'ecourse_create'     ) $is_active = 'active'; ?>
                        class="side-nav-item <?php echo $is_active; ?>">
                           <a href="javascript: void(0);" class="side-nav-link <?php echo $is_active; ?>">
                               <!-- <i class="dripicons-view-apps"></i> -->
                               <span> <?php echo get_phrase('Education'); ?> </span>
                               <span class="menu-arrow"></span>
                           </a>
                           <ul class="side-nav-second-level" aria-expanded="false">
                               <li class = "<?php if($page_name == 'material_list') echo 'active'; ?>">
                                   <a href="<?php echo base_url();?>index.php?admin/material_list" class = ""><?php echo get_phrase('material study'); ?></a>
                               </li>

                               <li class = "<?php if($page_name == 'question_list') echo 'active'; ?>">
                                   <a href="<?php echo base_url();?>index.php?admin/question_list" class = ""><?php echo get_phrase('question'); ?></a>
                               </li>

                               <li class = "<?php if($page_name == 'video_list') echo 'active'; ?>">
                                   <a href="<?php echo base_url();?>index.php?admin/video_list" class = ""><?php echo get_phrase('video'); ?></a>
                               </li>

                               <li class = "<?php if($page_name == 'bimbel_list') echo 'active'; ?>">
                                   <a href="<?php echo base_url();?>index.php?admin/bimbel_list" class = ""><?php echo get_phrase('bimbel'); ?></a>
                               </li>

                               <li class = "<?php if($page_name == 'ecourse_list') echo 'active'; ?>">
                                   <a href="<?php echo base_url();?>index.php?admin/ecourse_list" class = ""><?php echo get_phrase('ecourse'); ?></a>
                               </li>
                           </ul>
                       </li>

                       <li class="side-nav-item <?php if ($page_name == 'user_list' || $page_name == 'user_edit' || $page_name == 'user_create')echo 'active';?>">
                           <a href="<?php echo base_url();?>index.php?admin/user_list" class="side-nav-link <?php if ($page_name == 'user_list' || $page_name == 'user_edit' || $page_name == 'user_create')echo 'active';?>">
                               <!-- <i class="mdi mdi-account-multiple"></i> -->
                               <span> <?php echo get_phrase('users'); ?> </span>
                           </a>
                       </li>

                       <li class="side-nav-item <?php if ($page_name == 'plan_list' || $page_name == 'plan_edit')echo 'active';?>">
                           <a href="<?php echo base_url();?>index.php?admin/plan_list" class="side-nav-link <?php if ($page_name == 'plan_list' || $page_name == 'plan_edit')echo 'active';?>">
                               <!-- <i class="mdi mdi-wallet-membership"></i> -->
                               <span> <?php echo get_phrase('membership_package'); ?> </span>
                           </a>
                       </li>

                       <li class="side-nav-item <?php if ($page_name == 'report')echo 'active';?>">
                           <a href="<?php echo base_url();?>index.php?admin/report" class="side-nav-link <?php if ($page_name == 'report')echo 'active';?>">
                               <!-- <i class="dripicons-archive"></i> -->
                               <span> <?php echo get_phrase('report'); ?> </span>
                           </a>
                       </li>

                       <li
                       <?php
                       $is_active = '';
                       if ( $page_name == 'faq_list' 		||
                    		$page_name == 'faq_edit' 		||
                    		$page_name == 'faq_create' 		||
                    		$page_name == 'manage_language' ||
                    		$page_name == 'settings' ) $is_active = 'active'; ?>
                        class="side-nav-item <?php echo $is_active; ?>">
                           <a href="javascript: void(0);" class="side-nav-link <?php echo $is_active; ?>">
                               <!-- <i class="dripicons-view-apps"></i> -->
                               <span> <?php echo get_phrase('configuration'); ?> </span>
                               <span class="menu-arrow"></span>
                           </a>
                           <ul class="side-nav-second-level" aria-expanded="false">
                               <li class = "<?php if($page_name == 'settings') echo 'active'; ?>">
                                   <a href="<?php echo base_url();?>index.php?admin/settings" class = ""><?php echo get_phrase('website_settings'); ?></a>
                               </li>

                               <li class = "<?php if($page_name == 'manage_language') echo 'active'; ?>">
                                   <a href="<?php echo base_url();?>index.php?admin/manage_language" class = ""><?php echo get_phrase('language_settings'); ?></a>
                               </li>

                               <li class = "<?php if($page_name == 'faq_list') echo 'active'; ?>">
                                   <a href="<?php echo base_url();?>index.php?admin/faq_list" class = ""><?php echo get_phrase('customer_faq'); ?></a>
                               </li>
                           </ul>
                       </li>

                       <li class="side-nav-item <?php if($page_name == 'account')echo 'active';?>">
                           <a href="<?php echo base_url();?>index.php?admin/account" class="side-nav-link <?php if($page_name == 'account')echo 'active';?>">
                               <!-- <i class="dripicons-meter"></i> -->
                               <span> <?php echo get_phrase('account'); ?> </span>
                           </a>
                       </li>
                   </ul>
                   <div class="clearfix"></div>
               </div>
               <!-- Sidebar -left -->
           </div>
           <!-- Left Sidebar End -->
