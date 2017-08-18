clone-all
=========

Usage:
=====

1. Go to bitbucket.com and log in with your company account. 
2. Go to https://bitbucket.org/!api/2.0/repositories/<company group>?pagelen=100&page=1 and paste data to data1.json
3. Go to https://bitbucket.org/!api/2.0/repositories/<company group>?pagelen=100&page=2 and paste data to data2.json (if there are more repos)
4. ruby go.rb
5. chmod +x clone_all_repos.sh
6. ./clone_all_repos.sh 


Purpose:
========

Wow do we have a lot of code and yes I need to search through all of it at the same time sometimes. 