import siiimpleToast from 'siiimple-toast'

import { isEmpty } from 'tools/lodash'

/**
 * NOTE: Example options are taken from official README.
 * - https://github.com/0xgabii/siiimple-toast?tab=readme-ov-file#options
 *
 * NOTE: Animation effect are taken from the following playground.
 * - https://www.cssscript.com/demo/animated-queued-toast-messages-pure-javascript-siiimple-toast
 */
const toast = siiimpleToast.default.setOptions({
  container: 'body',
  class: 'siiimpleToast',
  position: 'bottom|right',
  margin: 15,
  delay: 0,
  duration: 15000, // 15 seconds
  style: {
    transform: 'scale(0.5)',
    transition: 'all 0.4s ease-out'
  }
})

const withToastOptions = (toast, options) => isEmpty(options) ? toast : toast.setOptions(options)

/**
 * NOTE: `content` can be HTML content.
 * - https://github.com/0xgabii/siiimple-toast?tab=readme-ov-file#onther-examples
 */
const displaySuccessToast = (content, options) => withToastOptions(toast, options).success(content)
const displayFailureToast = (content, options) => withToastOptions(toast, options).alert(content)
const displayToast = (content, options) => withToastOptions(toast, options).message(content)

export {
  displayFailureToast,
  displaySuccessToast,
  displayToast
}
