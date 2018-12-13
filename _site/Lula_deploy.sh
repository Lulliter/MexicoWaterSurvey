	# Go To (git) ./sub-folder (one below the Rproj wdir) 
	cd ./08_DataMEX_site
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


# Push source and build repos.
git push origin master

# # Come Back up to the Project Root
# cd ..
# 
# # Delete the local repository in the shell:
# rm -rf myrepo/