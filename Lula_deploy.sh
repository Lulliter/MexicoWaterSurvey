#==================================RESOURCES ON RMARKDOWN_SITE=====================================#
#   https://bookdown.org/yihui/rmarkdown/rmarkdown-site.html
#   https://rmarkdown.rstudio.com/lesson-13.html
#==================================================================================================#



#=========================================== (start) ================================================#
#================================== Invoke copy_folders.R  & build_site.R FROM SHELL ================================#
cd ./MexicoWaterSurvey # (build_site.R thinks it is in ./)
pwd
Rscript copy_folders.R 
Rscript build_site.R 
#=========================================== (end) ================================================#



# Go To (git) ./sub-folder (one below the Rproj wdir) 
#	cd ./MexicoWaterSurvey
	ls
	git remote show origin 

# check status
git status

	# Add ALL changes to git Index.
	# git add -A
git add -u
	# git add output/*

# Create Std commit "message"....
msg="rebuilt on `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi

# ... Commit Those changes.
git commit -m "$msg"

		# or git commit -m "new QGIS map with fences in sample"
		# git commit -m "drafted Desc"
		
# Push source and build repos.
git push origin master

# # Come Back up to the Project Root
# cd ..
# 
# # Delete the local repository in the shell:
# rm -rf myrepo/