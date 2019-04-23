'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class PlacesSchema extends Schema {
  up () {
    this.create('places', (table) => {
      table.increments()
      table.integer('type_id').unsigned().index().references('id').inTable('types')
      table.string('nama')
      table.integer('bangunan')
      table.integer('jarak_sungai').unsigned()
      table.double('latitude', 8, 6)
      table.double('longitude', 200, 6)
      table.string('status')
      table.double('sungai_latitude', 8, 6)
      table.double('sungai_longitude', 200, 6)
      table.timestamps()
    })
  }

  down () {
    this.drop('places')
  }
}

module.exports = PlacesSchema
