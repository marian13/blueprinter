/**
 * NOTE:
 *   `axios` does NOT work with importmap for now.
 *    That is why CDN version is used instead.
 *   It has almost the outcome expect it exposes `axios` globally as `window.axios`.
 * - https://github.com/axios/axios/issues/5495
 * - https://github.com/axios/axios/issues/5201
 * - https://generator.jspm.io/#U2NiYGBkDM0rySzJSU1hSKzIzC92MNQz0zMHAKMi6gwaAA
 * - https://axios-http.com/docs/intro
 * - `<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>`
 *
 * IMPORTANT: Do NOT use `axios` directly. Use `httpClient` wrapper.
 */
const httpClient = window.axios;

export default httpClient;
