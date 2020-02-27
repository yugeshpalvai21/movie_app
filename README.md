# README

### API END POINTS

- To Access All Movies

`http://localhost:3000/v1/movies`

- To Access Details Of Single Movie

`http://localhost:3000/v1/movies/1`

- To Access User Favorited Movies
    - it checks whether user available in the databse or not
    - if user not available with that username, then app creates user in our database with that username

`http://localhost:3000/v1/yugesh/movies`

- To Add Movie To User Favorited List

`http://localhost:3000/v1/yugesh/movies/1/add`


- To Remove Movie From User Favorited List

`http://localhost:3000/v1/yugesh/movies/1/remove`

### APP ROOT PAGE

- App Route page holds link to access admin section

`http://www.localhost:3000`

### ADMIN PAGES

- Admin home pages which holds links to Access movies and users pages

`http://www.localhost:3000/admin`

- Movies Page
  - link to create new movie
  - list of all movies
  - link to edit movie details
  - link to delete movie from databse
  - link to signout 
`http://www.localhost:3000/admin/movies`

- Users Page
  - list of all users with favorited list
  - link to single user details
  - link to delete user 

`http://www.localhost:3000/admin/users`
