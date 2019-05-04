### WebGIS

Mapping schools and business places for potential damage if an earthquake occurs. This project is used as a college assignment. Built using Adonisjs framework.

### Setup Project

1. Copy `.env.example` to `.env` and configure your database.
2. Run `npm install`.
3. Run `adonis key:generate`.
4. Run migration and seeder with command `adonis migration:refresh --seed`.
5. Run development server `adonis serve --dev`.
6. Application running on `http://localhost:3333`.
7. Done.

Note: Don't forget to set your `Google Map API KEY` in `resources/views/layouts/dashboard.edge` line `161`.