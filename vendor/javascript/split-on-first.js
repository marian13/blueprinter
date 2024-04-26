function splitOnFirst(t,e){if(!("string"===typeof t&&"string"===typeof e))throw new TypeError("Expected the arguments to be of type `string`");if(""===t||""===e)return[];const r=t.indexOf(e);return-1===r?[]:[t.slice(0,r),t.slice(r+e.length)]}export default splitOnFirst;

