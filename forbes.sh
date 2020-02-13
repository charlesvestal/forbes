googleimagesdownload --keywords_from_file books.csv --limit 1 --no_directory
a=1

echo "<!DOCTYPE html>
<head>
<link rel="stylesheet" href="./style.css">
</head>
<body>
<ul>" > test.html

for i in downloads/*.jpg; do
  new=$(printf "%04d.jpg" "$a") #04 pad to length of 4
  mv -- "$i" "downloads/$new"

  echo "<li>
    <img src='downloads/$new'>
  </li>" >> test.html

  let a=a+1
done

echo "</ul>
<!-- partial -->
  
</body>
</html>" >> test.html