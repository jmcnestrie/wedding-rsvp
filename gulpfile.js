'use strict'

let gulp = require('gulp')
let gutil = require('gulp-util')
let browserify = require('browserify')
let watchify = require('watchify')
let source = require('vinyl-source-stream')
let plugins = require('gulp-load-plugins')()
let browserSync = require('browser-sync').create()

let reload = browserSync.reload

/**
 * Asset pipeline
 */
let bundleOptions = {
    entries: ['app/assets/javascripts/app.js'],
    debug: true
}

function bundleFile(file) {
    
    let bundler = watchify(browserify({
        entries: [`app/assets/javascripts/${file}.js`],
        debug: true
    }))
    
    bundler.transform(require('babelify'))
    
    bundler.on('update', () => {
        gutil.log(`Bundling ${file}.js..`)
        bundle()
    })	

    return bundler.bundle()
        .on('error', gutil.log.bind(gutil, 'Browserify error'))
        .pipe(source(`${file}.js`))
        .pipe(gulp.dest('public/js'))
}

function bundle() {    
    let files = ['app']
    
    files.forEach(bundleFile)
}

gulp.task('bundle', bundle)

/**
 * Sass
 */

gulp.task('sass', () => 
    gulp.src('app/assets/stylesheets/*.scss')
        .pipe(plugins.sass().on('error', plugins.sass.logError))
        .pipe(gulp.dest('public/css'))
        .pipe(browserSync.stream())
)

gulp.task('sass:watch', () => 
    gulp.watch('app/assets/stylesheets/*.scss', ['sass']))
    
/**
 * BrowserSync
 */
gulp.task('browser-sync', () => {
    browserSync.init({
        proxy: 'localhost:3000',
        port: 3001,
        open: false,
        ui: {
            port: 3002
        }
    })
    
    gulp.watch('public/js/*.js', reload)
    gulp.watch('app/views/**/*.html.erb').on('change', reload)
})

/**
 * Server task
 */
gulp.task('server', ['bundle', 'sass:watch', 'browser-sync'], plugins.shell.task([
    'rails server'
]))