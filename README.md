# mySQL PHP Server Connection for Flutter Projects
 These files help you to communicate with a php script that will be on your web server
 THis is an incomplete project, a few more things are to be done
 
## Dependencies required :
https://pub.dev/packages/http

## SETUP
1. Download the config.php file
2. Fill in the following details :
- `$DB_ADDRESS="localhost";`
- `$DB_USER="DATABASE USERNAME";`
- `$DB_PASS="DATABASE PASSWORD";`
- `$DB_NAME="DATABASE NAME";`
3. Fill in the secret key, This code is something you set in the APP so random people cant use it.
- `$SQLKEY="TYPE IN A SECRET KEY";`
4. Upload the config.php file to your webserver
5. Download the sendQuery.dart
6. Fill in the ROOT variable in every function in the file(3 times) with the link to your php file in the web server
7. Fill in the map['key'] variable with your secret key tht you gave in the php script, should be the same to work.
8. Import it into your flutter projects and use it

## How to use it?
- To send Select statements 
`sendQuery("select * from tablename;")`
- To send every other statement that does not have any response, you can use this :
`sendInsert("insert into tablename values("hello");")`

vere pani ilathonda
