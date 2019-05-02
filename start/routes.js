'use strict'

/** @type {typeof import('@adonisjs/framework/src/Route/Manager')} */
const Route = use('Route')

Route.on('/').render('welcome')

Route.get('/dashboard', 'DashboardController.index').as('dashboard.index')
Route.get('/dashboard/create', 'DashboardController.create').as('dashboard.create')
Route.post('/dashboard/store', 'DashboardController.store').as('dashboard.store')
Route.get('/dashboard/data', 'DashboardController.data').as('dashboard.data')
Route.get('/dashboard/mapping', 'DashboardController.mapping').as('dashboard.mapping')
Route.get('/dashboard/rules', 'DashboardController.excel').as('dashboard.excel')
