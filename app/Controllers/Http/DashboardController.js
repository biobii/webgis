'use strict'

const Place = use('App/Models/Place')
const Rule = use('App/Traits/ClassificationRules')

class DashboardController {

  async index ({ view }) {
    const bisnis = {
      rendah: await Place.query().where('type_id', 1).where('status', 'Rendah').getCount(),
      sedang: await Place.query().where('type_id', 1).where('status', 'Sedang').getCount(),
      rawan: await Place.query().where('type_id', 1).where('status', 'Rawan').getCount()
    }
    const pendidikan = {
      rendah: await Place.query().where('type_id', 2).where('status', 'Rendah').getCount(),
      sedang: await Place.query().where('type_id', 2).where('status', 'Sedang').getCount(),
      rawan: await Place.query().where('type_id', 2).where('status', 'Rawan').getCount()
    }

    return view.render('dashboard.index', {
      bisnis, pendidikan
    })
  }

  async data ({ request, view }) {
    const bisnis = await Place.query().where('type_id', 1).fetch()
    const pendidikan = await Place.query().where('type_id', 2).fetch()

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

  async excel ({ view }) {
    return view.render('dashboard.excel')
  }

}

module.exports = DashboardController
