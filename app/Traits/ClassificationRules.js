'use strict'

class ClassificationRules {

  static rules (object, bangunan, sungai) {
    let status = null

    if (bangunan <= 2 && sungai > 30) status = 'Rendah'
    if (bangunan <= 2 && sungai > 15 && sungai <= 30) status = 'Rendah'
    if (bangunan <= 2 && sungai <= 15) status = 'Sedang'
    if (bangunan > 2 && bangunan <= 4 && sungai > 30) status = 'Sedang'
    if (bangunan > 2 && bangunan <= 4 && sungai > 15 && sungai <= 30) status = 'Sedang'
    if (bangunan > 2 && bangunan <= 4 && sungai <= 15) status = 'Sedang'
    if (bangunan > 4 && sungai > 30) status = 'Rawan'
    if (bangunan > 4 && sungai > 15 && sungai <= 30) status = 'Rawan'
    if (bangunan > 4 && sungai <= 15) status = 'Rawan'

    object.status = status
  }
}

module.exports = ClassificationRules
