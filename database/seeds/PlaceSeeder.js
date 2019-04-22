'use strict'

const data = use('App/data')
const Type = use('App/Models/Type')
const Place = use('App/Models/Place')
const Rule = use('App/Traits/ClassificationRules')

class PlaceSeeder {
  
  constructor () {
    this.data = data
    this.data.forEach(item => {
      Rule.rules(item, item.bangunan, item.jarak_sungai)
    })
  }

  async run () {
    await Type.createMany([{ type: 'Bisnis' }, { type: 'Pendidikan' }]);
    await Place.createMany(this.data)
  }
}

module.exports = PlaceSeeder
