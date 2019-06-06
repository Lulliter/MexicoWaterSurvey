#==================================================================================================#
#                             ./MexicoWaterSurvey/build_site.R       
#								{This is invoked by {MexicoWaterSurvey/Lula_deploy.sh}
#            										FILE INTENDED 2  
# ============== 1) list which files will be removed (all ".html(s)" + "site_libs/");
# ============== 2) actually remove the above files;
# ============== 3) Render again the ./BrazilWaterSurvey/ public site. 
#==================================================================================================#



#==================================================================================================#
#          {OKKIO, I am NOT in .Rproject, because the Lula_deploy.sh sets /DataMEX/MEXwatersurvey}
# ======= Set our working directory  {REDUNDANT: in the .sh file}. 
# setwd("./MexicoWaterSurvey")
# getwd()

# ======= list which files will be removed
rmarkdown::clean_site(preview = TRUE)
# 
# ======= actually remove the files
rmarkdown::clean_site()


# =======render your sweet site. 
rmarkdown::render_site()

# =======render just one page
# rmarkdown::render_site("index.Rmd")
