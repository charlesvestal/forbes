
googleimagesdownload --keywords_from_file books.csv --limit 1 --no_directory

a=1

for i in downloads/*.jpg; do
  let a=a+1
done

echo '<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Masonry with Flexbox + JS</title>
  <link rel="stylesheet" href="./style.css">

</head>
<body>' > output/index.html
    
echo `slimrb --locals '{"covers":'$a'}' index.slim` >> output/index.html

echo '<script  src="./script.js"></script>

</body>
</html>
' >> output/index.html

sass style.scss output/style.css
cp script.js output/script.js