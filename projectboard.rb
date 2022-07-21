
require 'octokit'

# Provide authentication credentials
client = Octokit::Client.new(:access_token => $api_key)


#list all user's repos
# repos = client.repositories('jrussell416')
# for repo in repos do
#   puts repo.name
#   puts repo.id
# end

# 1. Get a project
#create a project
#client.create_project('jrussell416/project-repo', 'project1')

# 2.Get a project column
#-list project board names and id
#   projects = client.projects('jrussell416/project-repo')
#   for project in projects do
#     puts project.name
#     puts project.id
#   end
#
# #-create project column
# client.create_project_column(14596395, 'Test Complete')
#list project columns id
columns = client.project_columns(14596395)
for column in columns do
  puts column.id
  puts column.name
end

# 3.Get a project card

# Move a project card to another column
# write a query to fetch all the pull requests under a specified column in a specified project
# Move X number of cards from one column to another