import { Controller } from '@hotwired/stimulus'
import Logger from 'tools/logger'

import { currentBaseUrl, currentQueryParams } from 'tools/currentLocation'
import { appendQueryParams } from 'tools/queryParams'
import { DEFAULT_LOCALE } from 'tools/locale'
import { navigateTo } from 'tools/navigation'

/**
 * NOTE: If controller file is named `language_selection_controller.js`	its identifier will be `language-selection`.
 * - https://stimulus.hotwired.dev/reference/controllers
 */
export default class extends Controller {
  static targets = ['modal', 'englishOption', 'ukrainianOption']

  connect () {
    Logger.info(`Connected ${this.identifier} controller`)
  }

  open () {
    Logger.info(`Triggered ${this.identifier}#open action`)

    if (!this.modal.open) this.modal.open = true
  }

  cancel () {
    Logger.info(`Triggered ${this.identifier}#cancel action`)

    if (this.modal.open) this.modal.open = false
  }

  confirm () {
    Logger.info(`Triggered ${this.identifier}#confirm action`)

    navigateTo(this.currentUrlWithCheckedLocale)
  }

  get currentUrlWithCheckedLocale () {
    return appendQueryParams(currentBaseUrl(), this.queryParamsWithLocale)
  }

  get queryParamsWithLocale () {
    return { ...currentQueryParams(), locale: this.checkedLocaleOptionValue }
  }

  get checkedLocaleOptionValue () {
    return this.checkedLocaleOption?.value || DEFAULT_LOCALE
  }

  get checkedLocaleOption () {
    return this.localeOptions.find(option => option.checked)
  }

  get localeOptions () {
    return [this.englishOptionTarget, this.ukrainianOptionTarget]
  }

  get modal () {
    return this.modalTarget
  }
}
