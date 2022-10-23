![SpaceX logo](docs/logo.jpg)

# SpaceX API Gateway

This API Gateway uses [SpaceX API](https://github.com/r-spacex/SpaceX-API) to get the SpaceX upcoming, last, next, and previous rocket launches.

Alternatively, the [Ruby SpaceX API](https://github.com/victorperez/spacex-api-ruby) gem could be used in this project. But this project's objective is to present a complete implementation.

# Features

## Launches

| Endpoint | Description                    | Status |
|----------|--------------------------------|--------|
| Upcoming | Show the upcoming launch       | TO DO  |
| Last     | Show the last launch           | TO DO  |
| Next     | List all the next launches     | TO DO  |
| Previous | List all the previous launches | TO DO  |

### Data

Array of OpenStruct or a OpenStruct\
├── Name\
├── Description\
├── Patch\
├── Liftoff\
├── Vehicle\
│   ├── Name\
│   └── Image\
└── Launchpad\
    └── Name

# Information

## Ruby version

Ruby 3.1.2 is used in this project. You can also see this information in the `.ruby-version` file.

## Configuration

Install [Ruby Version Manager (RVM)](https://rvm.io/) following your current operational system tutorial also available in RVM docs.

Be sure that you're using the correct ruby and gemset via RVM and run `bundle install` to configure your environment.

## Development

You can run this project locally using `rails serve -p PORT`, changing `PORT` by an unused port from 0 to 65536.

Run `bundle exec dotenv -t .env` when you add, remove or edit environment variables. Never commit your `.env` files!

## Deployment instructions

This project is configured to auto-deploy to Railway when a new commit is added to the main branch.

You can access the production project at this link: https://spacex-launches.up.railway.app/

---

© 2022 Space Exploration Technologies Corporation. SpaceX and SpaceX logo are trademarks and/or registered trademarks of Space Exploration Technologies Corporation in the US and/or other countries.