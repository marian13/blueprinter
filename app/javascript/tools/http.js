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

/**
 * Sets `csrfToken` to `axios` default header.
 * - https://github.com/rails/webpacker/issues/1015
 *
 * IMPORTANT: Rails disable `csrf` protection in tests environements.
 * - https://github.com/rails/webpacker/issues/1015#issuecomment-386241735
 */
const setupCSRFToken = () => {
  const csrfToken = document.querySelector("meta[name=csrf-token]")?.content;

  if (!csrfToken) return;

  httpClient.defaults.headers.common["X-CSRF-Token"] = csrfToken;
};

const getHttpRequst = httpClient.get;
const postHttpRequst = httpClient.get;

window.addEventListener("DOMContentLoaded", setupCSRFToken);

export {
  getHttpRequst,
  postHttpRequst,
};
