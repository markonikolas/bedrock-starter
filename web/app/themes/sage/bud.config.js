/**
 * Build configuration
 *
 * @see {@link https://roots.io/docs/sage/ sage documentation}
 * @see {@link https://bud.js.org/guides/configure/ bud.js configuration guide}
 *
 * @typedef {import('@roots/bud').Bud} Bud
 * @param {Bud} app
 */
export default async (app) => {
  /**
   * Application entrypoints
   * @see {@link https://bud.js.org/docs/bud.entry/}
   */
  app
    .entry('app', ['@scripts/app', '@styles/app'])
    .entry('editor', ['@scripts/editor', '@styles/editor'])
    .assets(['images'])

    /**
     * Set public path
     *
     * @see {@link https://bud.js.org/docs/bud.setPublicPath}
     */
    .setPublicPath('/app/themes/sage/public/');

  /**
   * Development server settings
   *
   * @see {@link https://bud.js.org/docs/bud.setUrl}
   * @see {@link https://bud.js.org/docs/bud.setProxyUrl}
   * @see {@link https://bud.js.org/docs/bud.watch}
   */
  app
    .watch([
      'resources/views',
      'app',
      'tailwind.config.js',
      'index.php',
      'functions.php',
    ])
    .proxy('http://bedrock.lndo.site')
    .serve('http://0.0.0.0:3000');
};
