#==================================RESOURCES ON RMARKDOWN_SITE=====================================#
#   https://bookdown.org/yihui/rmarkdown/rmarkdown-site.html
#   https://rmarkdown.rstudio.com/lesson-13.html
#==================================================================================================#



#=========================================== (start) ================================================#
#================================== Invoke build_site.R FROM SHELL ================================#
# ======= ./MexicoWaterSurvey/build_site.R DOES THE FOLLWOING: 
# ============== 1) list which files will be removed (all ".html(s)" + "site_libs/");
# ============== 2) actually remove the above files;
# ============== 3) Render again the ./MexicoWaterSurvey/ public site. 
cd ./MexicoWaterSurvey
pwd
Rscript build_site.R 
#=========================================== (end) ================================================#



# Go To (git) ./sub-folder (one below the Rproj wdir) 
#	cd ./MexicoWaterSurvey
	ls
	git remote show origin 

# check status
git status

# Add ALL changes to git Index.
git add -A

# Create Std commit "message"....
msg="rebuilt on `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi

# ... Commit Those changes.
git commit -m "$msg"

		# or git commit -m "Kable Table in SAMPLE2"
		# git commit -m "changed to _site"
		
# Push source and build repos.
git push origin master

# # Come Back up to the Project Root
# cd ..
# 
# # Delete the local repository in the shell:
# rm -rf myrepo/