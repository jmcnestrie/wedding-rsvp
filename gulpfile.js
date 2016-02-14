'use strict'

let gulp = require('gulp')
let gutil = require('gulp-util')
let browserify = require('browserify')
let watchify = require('watchify')
let source = require('vinyl-source-stream')
let plugins = require('gulp-load-plugins')()

let bundleJs = (watch) => {
     
    let opts = { cache: {}, packageCache: {}, fullPaths: true }
    let b = browserify(opts)
    let bundler = watch ? watchify(b) : b
    
    bundler.transform(require('babelify'))
    
    let rebundle = () => {
        
        let stream = bundler.bundle()
        
        return stream.on('error', () => gutil.log('error'))
            .pipe(source('bundle.js'))
            .pipe(gulp.dest('public/js'))
    }
    
    bundler.on('update', () => {
        rebundle()
    })
    
    return rebundle()  
}

gulp.task('bundle', () => bundleJs(false))
gulp.task('bundle:watch', () => bundleJs(true))