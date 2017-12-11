curl -i -X POST -d 'book[title]=Ring of Bright Water' -d 'book[author]=Emmie Thiel' -d 'book[genre]=Short story' -d 'book[publisher]=Butterworth-Heinemann' -d 'book[year]=1968' -d 'book[image_url]=/data/assets/default_book.svg' http://0.0.0.0:3000/books

curl -i -X POST -d 'book[title]=Scavenger Hunt' -H "Authorization: Token token=eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0LCJleHAiOjE1MTI1MDkzODF9.Vz0CLIDRxEX2zTZuLiYBrAvF87YIwrKiI9ZExZT4aB0" -d 'book[author]=Christopher Pike' -d 'book[genre]=other' -d 'book[publisher]=Pocket Books' -d 'book[year]=1989' -d 'book[image_url]=/data/assets/default_book.svg' http://0.0.0.0:3000/books

curl -i -X POST -d 'book[title]=Locked in time' -d 'book[author]=Lois Duncan' -d 'book[genre]=suspense' -d 'book[publisher]=Little, Brown' -d 'book[year]=1985' -d 'book[image_url]=http://wolox-training.s3.amazonaws.com/uploads/6942334-M.jpg' http://0.0.0.0:3000/books

curl -i -X POST -d 'book[title]=Scavenger Hunt' -d 'book[author]=Christopher Pike' -d 'book[genre]=suspense' -d 'book[publisher]=Pocket Books' -d 'book[year]=1989' -d 'book[image_url]=http://wolox-training.s3.amazonaws.com/uploads/6963511-M.jpg' http://0.0.0.0:3000/books

curl -i -X POST -d 'book[title]=Scavenger Hunt' -d 'book[author]=Christopher Pike' -d 'book[genre]=suspense' -d 'book[publisher]=Pocket Books' -d 'book[year]=1989' -d 'book[image_url]=http://wolox-training.s3.amazonaws.com/uploads/6963511-M.jpg' http://0.0.0.0:3000/books

curl -i -X POST -d 'book[title]=The Girl on the Train' -d 'book[author]=Paula Hawkins' -d 'book[genre]=suspense' -d 'book[publisher]=Riverhead Books' -d 'book[year]=2015' -d 'book[image_url]=http://wolox-training.s3.amazonaws.com/uploads/content.jpeg' http://0.0.0.0:3000/books

curl -i -X POST -d 'book[title]=All the Light We Cannot See' -d 'book[author]=Anthony Doerr' -d 'book[genre]=suspense' -d 'book[publisher]=Scribner' -d 'book[year]=2014' -d 'book[image_url]=http://wolox-training.s3.amazonaws.com/uploads/content.jpeg' http://0.0.0.0:3000/books

curl -i -X POST -d 'book[title]=The analyst' -d 'book[author]=John Katzenbach' -d 'book[genre]=thriller' -d 'book[publisher]=Ballantine Books' -d 'book[year]=2003' -d 'book[image_url]=http://wolox-training.s3.amazonaws.com/uploads/el-psicoanalista-analyst-john-katzenbach-paperback-cover-art.jpg' http://0.0.0.0:3000/books

curl -i -X POST -d 'book[title]=The Martian' -d 'book[author]=Andy Weir' -d 'book[genre]=fiction' -d 'book[publisher]=Crown Publishing Group' -d 'book[year]=2011' -d 'book[image_url]=http://wolox-training.s3.amazonaws.com/uploads/41DNuJfahyL._SX322_BO1_204_203_200_.jpg' http://0.0.0.0:3000/books


curl -v -H "Accept: application/json" -H "Content-type: application/json" -X POST -d ' {"book":{"title":"Ring of Bright Water","author":"lastname","genre":"email@email.com","publisher":"app123","year":"app123","image_url":""}}'  http://localhost:3000/api/1/users

curl -v -H -X POST -d ' {"book":{"title":"Ring of Bright Water","author":"Short story","genre":"short story","publisher":"Butterworth-Heinemann","year":"1968","image_url":"/data/assets/default_book.svg"}}'  http://0.0.0.0:3000/books


This works:

Authenticate:

curl -H 'Content-Type: application/json' \
-H 'Accept: application/json' \
-X POST http://localhost:3000/users/sign_in \
-d "{'user' : { 'email' : 'test@example.com', 'password' : 'password'}}" \
-c cookie

Show:

curl -H 'Content-Type: application/json' \
-H 'Accept: application/json' \
-X GET http://localhost:3000/pages/1.xml \
-b cookie
