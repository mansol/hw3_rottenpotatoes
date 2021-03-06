# Add a declarative step here for populating the DB with movies.

#Given /the following movies exist/ do |movies_table|
#  movies_table.hashes.each do |movie|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
#                                                                                                                                                                                                                                                                                                                     
Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    movie.title
    movie.rating
    movie.release_date
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.  
    
    
#    | title                   | rating | release_date |
#  | Aladdin                 | G      | 25-Nov-1992  |
#  | When Harry Met Sally    | R      | 21-Jul-1989  |
#  | Chocolat                | PG-13  | 5-Jan-2001   |
#  | 2001: A Space Odyssey   | G      | 6-Apr-1968   |
#  | The Incredibles         | PG     | 5-Nov-2004   |
#  | Raiders of the Lost Ark | PG     | 12-Jun-1981  |
#  | Chicken Run             | G      | 21-Jun-2000  |
         
   Movie.create(:title => 'Alladin', :rating => 'G', :release_date => '25-Nov-1992')
   Movie.create(:title => 'When Harry Met Sally', :rating => 'R', :release_date => '21-Jul-1989')
   Movie.create(:title => 'Chocolat', :rating => 'PG-13', :release_date => '5-Jan-2001')
   Movie.create(:title => '2001: A Space Odyssey', :rating => 'G', :release_date => '6-Apr-1968') 
    
    
   Movie.create!(movie) 
  end
 # flunk "Unimplemented"
end

# Make sure that one string (regexp) occurs before or after another one
#   on the same page

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  page.content  is the entire content of the page as a string.
  flunk "Unimplemented"
end

# Make it easier to express checking or unchecking several boxes at once
#  "When I uncheck the following ratings: PG, G, R"
#  "When I check the following ratings: G"

When /I (un)?check the following ratings: (.*)/ do |uncheck, rating_list|
  # HINT: use String#split to split up the rating_list, then
  #   iterate over the ratings and reuse the "When I check..." or
  #   "When I uncheck..." steps in lines 89-95 of web_steps.rb
end
