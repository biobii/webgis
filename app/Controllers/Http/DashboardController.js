'use strict'

const Place = use('App/Models/Place')
const Rule = use('App/Traits/ClassificationRules')

class DashboardController {

  async index ({ view }) {
    return view.render('dashboard.index')
  }

  async data ({ request, view }) {
    const binis_page = parseInt(request.get().bisnis_page) || 1
    const pendidikan_page = parseInt(request.get().pendidikan_page) || 1

    const bisnis = await Place.query().where('type_id', 1)
      .paginate(binis_page, 10)

    const pendidikan = await Place.query().where('type_id', 2)
      .paginate(pendidikan_page, 10)

    return view.render('dashboard.data', {
      bisnis: bisnis.toJSON(),
      pendidikan: pendidikan.toJSON()
    })
  }

  async create ({ view }) {
    return view.render('dashboard.create')
  }

  async store ({ request, response }) {
    let data = request.except('_csrf')
    Rule.rules(data, data.bangunan, data.jarak_sungai)

    await Place.create(data)
    return response.route('dashboard.data')
  }

  async mapping ({ view }) {
    const places = await Place.all()

    return view.render('dashboard.map-all', { places })
  }

}

module.exports = DashboardController
