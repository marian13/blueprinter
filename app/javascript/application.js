// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import '@hotwired/turbo-rails'
import 'controllers'

import { displayToast } from 'tools/toast'

window.addEventListener(
  'turbo:before-stream-render',
  event => {
    const fallbackToDefaultActions = event.detail.render

    event.detail.render = streamElement => {
      if (streamElement.action === 'toast') {
        displayToast()
      } else {
        fallbackToDefaultActions(streamElement)
      }
    }
  }
)
