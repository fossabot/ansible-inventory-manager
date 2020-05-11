# Ansible Inventory Manager [![Build Status](https://travis-ci.org/pgolm/ansible-inventory-manager.png)](https://travis-ci.org/pgolm/ansible-inventory-manager) [![Coverage Status](https://coveralls.io/repos/pgolm/ansible-inventory-manager/badge.png?branch=master)](https://coveralls.io/r/pgolm/ansible-inventory-manager?branch=master)
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fpgolm%2Fansible-inventory-manager.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2Fpgolm%2Fansible-inventory-manager?ref=badge_shield)

A Web UI to manage ansible inventories.

[DEMO](http://ansible-inventory-manager-demo.herokuapp.com/)

## Deploy on Heroku

```
heroku create <app-name>
heroku addons:add heroku-postgresql:dev 
git push heroku master 
heroku run rake db:setup
```

Login with:

```
User: admin@example.com
Password: admin
```

## Configuration

### Allow user registration
Set ```config.registration = true``` in *config/application.rb*.


## License
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fpgolm%2Fansible-inventory-manager.svg?type=large)](https://app.fossa.io/projects/git%2Bgithub.com%2Fpgolm%2Fansible-inventory-manager?ref=badge_large)