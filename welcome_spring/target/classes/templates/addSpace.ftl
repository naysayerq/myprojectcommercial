<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Space</title>
    <link rel="stylesheet"
          type="text/css" href="<@spring.url '/css/style.css'/>"/>
</head>
<body>

<div>
    <fieldset>
        <legend>Add space</legend>
        <form name="space" action="" method="POST">
            Name:<@spring.formInput "spaceForm.name" "" "text"/>
            <br>
            Area:<@spring.formInput "spaceForm.description" "" "text"/>
            <br>
            <#--          Address:<@spring.formInput "clientForm.address" "" "text"/>
                      <br>-->
            <input type="submit" value="Create"/>
        </form>
    </fieldset>
</div>

</body>
</html>