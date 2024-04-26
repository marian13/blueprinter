import { parseQueryParams } from "tools/queryParams";

/**
 * NOTE: Returns current page base URL.
 * - https://www.rubydoc.info/gems/rack/Rack%2FRequest%2FHelpers:base_url
 * - https://developer.mozilla.org/en-US/docs/Web/API/Location/origin
 */
const currentBaseUrl = () => window.location.origin;

/**
 * NOTE: Returns current page query params as object.
 * - https://api.rubyonrails.org/classes/ActionDispatch/Request.html#method-i-query_parameters
 * - https://developer.mozilla.org/en-US/docs/Web/API/Location/search
 */
const currentQueryParams = () => parseQueryParams(window.location.search);

export {
  currentBaseUrl,
  currentQueryParams
};
