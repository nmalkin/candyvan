Candy Van
=========
Candy Van is an example of a sketchy site on the web that you probably shouldn't
trust with your email address.

### Okay, but what does it do?
It asks for your email address and then sends you a message.
It may or may not provide you with some free, delicious candy.

### Dependencies
You'll need [node.js](http://www.nodejs.org/) to run the server
and [CoffeeScript](http://coffeescript.org/) to compile it from source.

It also depends on:

- [express](http://expressjs.com/)
- [Nodemailer](https://github.com/andris9/Nodemailer)

You can get both of these by running `npm install`.

### Building
`make all`

### Configuration
Copy the file `config.json.dist` to `config.json`,
then edit it with your settings and credentials for the outgoing SMTP service.
You can use a
[known service](http://documentup.com/andris9/nodemailer/#setting-up-a-transport-method/well-known-services-for-smtp)
or [other SMTP options](http://documentup.com/andris9/nodemailer/#setting-up-a-transport-method/setting-up-smtp)
supported by Nodemailer.

### Running
`npm start`

The site runs on the port specified by environmental variable PORT,
or, by default, on port 8254.
