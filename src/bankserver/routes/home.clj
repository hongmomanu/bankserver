(ns bankserver.routes.home
  (:require [bankserver.layout :as layout]
            [compojure.core :refer [defroutes GET]]
            [ring.util.http-response :refer [ok]]
            [bankserver.controller.home :as home ]

            [clojure.java.io :as io]))

(defn home-page []
  (layout/render
    "home.html" {:docs (-> "docs/docs.md" io/resource slurp)}))

(defn about-page []
  (layout/render "about.html"))

(defroutes home-routes
  (GET "/" [] (home-page))
  (GET "/getbanksbytype" [type] (home/getbanksbytype type))
  (GET "/about" [] (about-page)))

