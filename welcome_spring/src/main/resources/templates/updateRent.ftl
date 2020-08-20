<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Rent</title>
    <link rel="stylesheet"
          type="text/css" href="<@spring.url '/css/style.css'/>"/>
</head>
<body>
<div>
    <fieldset>
        <legend>Update rent</legend>
        <form name="rent" action="" method="POST">
            Space:<@spring.formInput "rentForm.name" "" "text"/>
            <br>
            Client:<@spring.formInput "rentForm.description" "" "text"/>
            <br>
            <#--    Address:<@spring.formInput "clientForm.address" "" "text"/>
                <br>-->
            <input type="submit" value="Update"/>
        </form>
    </fieldset>
</div>
</body>
</html>