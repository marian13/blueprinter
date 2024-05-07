/**
 * Lightweight, unobtrusive, configurable JavaScript logger.
 * - https://github.com/jonnyreeves/js-logger
 */
import Logger from 'js-logger'

/**
 * NOTE:
 *   Sets js-Logger default logging level.
 *   Prefixes log message with a timestamp.
 * - https://github.com/jonnyreeves/js-logger?tab=readme-ov-file#usage
 * - https://github.com/jonnyreeves/js-logger?tab=readme-ov-file#default-log-handler-function
 * - https://github.com/jonnyreeves/js-logger?tab=readme-ov-file#usedefaults
 * - https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toISOString
 *
 * NOTE: js-Logger does NOT support custom colors.
 * - https://github.com/jonnyreeves/js-logger/blob/master/src/logger.js
 */
Logger.useDefaults({
  defaultLevel: Logger.INFO,
  formatter: messages => messages.unshift(`[${new Date().toISOString()}]`)
})

/**
 * NOTE: Exposes js-Logger globally in order to have a way to change log levels from browser console.
 * For example:
 *
 *   Logger.setLevel(Logger.OFF);
 *
 */
window.Logger = Logger

export default Logger
