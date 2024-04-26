/**
 * Parse and stringify URL query strings.
 * - https://github.com/sindresorhus/query-string
 */
import queryString from "query-string";

import _ from "lodash";

/**
 * NOTE: Parses URL query strings.
 * - https://github.com/sindresorhus/query-string?tab=readme-ov-file#parsestring-options
 */
const parseQueryParams = string => queryString.parse(string);

/**
 * NOTE: Generates URL query strings.
 * - https://github.com/sindresorhus/query-string?tab=readme-ov-file#stringifyobject-options
 */
const stringifyQueryParams = object => queryString.stringify(object);

const appendQueryParams = (url, queryParams) => {
  if (_.isEmpty(queryParams)) return url;
  if (_.isString(queryParams)) return `${url}?${stringifyQueryParams(parseQueryParams(queryParams))}`;
  if (_.isPlainObject(queryParams)) return `${url}?${stringifyQueryParams(queryParams)}`;

  return url;
};

export {
  parseQueryParams,
  stringifyQueryParams,
  appendQueryParams
};
