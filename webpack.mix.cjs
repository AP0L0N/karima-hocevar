const mix = require('laravel-mix');

// Set public path to CraftCMS web directory
mix.setPublicPath('public_html');

// Compile CSS/JS
mix.js('src/js/app.js', 'public_html/assets/js')
    .js('src/js/cookie-banner.js', 'public_html/assets/js')
    .sass('src/sass/main.scss', 'public_html/assets/css');

// Enable versioning (cache busting) for production
if (mix.inProduction()) {
    mix.sass('src/sass/plugins.scss', 'public_html/assets/css');
    mix.version();
}
