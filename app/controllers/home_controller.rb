class HomeController < ApplicationController
  def index
    x = PolygonTest.find_by_sql("SELECT *
    FROM polygon_tests
    WHERE ST_Contains(polygon_tests.polygon, 'POINT(127.06930941564056 37.545445392890244)');")
  
    puts x[0].id
  end
end
