<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet"
          type="text/css" href="<@spring.url '/css/style.css'/>"/>
</head>
<body>
<div>
    <fieldset>
        <legend>Update client</legend>
        <form name="client" action="" method="POST">
            Name:<@spring.formInput "clientForm.name" "" "text"/>
            <br>
            Description:<@spring.formInput "clientForm.description" "" "text"/>
            <br>
        <#--    Address:<@spring.formInput "clientForm.address" "" "text"/>
            <br>-->
            <input type="submit" value="Update"/>
        </form>
    </fieldset>
</div>
</body>
</html>