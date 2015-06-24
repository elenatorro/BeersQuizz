/* The following Gulp configuration has been created by Elena Torro */
var gulp       = require("gulp");
var concat     = require("gulp-concat");
var rename     = require("gulp-rename");


gulp.task("bundle", function() {
  gulp.src(["app/assets/scripts/app.js", 
  			"app/assets/scripts/**/*.js"])
  .pipe(concat("main.js"))
  .pipe(gulp.dest("./app/assets/javascripts"));
})