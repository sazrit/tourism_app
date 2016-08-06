

<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Tourist Spot Input</title>
</head>
<body>
  <form action="place_input" method="post" enctype="multipart/form-data">
     <input type="text" id="a_id" name="a_id" value="place Id" />
    <input type="file" id="file" name="files[]" multiple="multiple" accept="image/*" />
  <input type="submit" value="Upload!" />
</form>
</body>
</html>