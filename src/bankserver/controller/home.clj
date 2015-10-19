(ns bankserver.controller.home
  (:use compojure.core)
  (:require [bankserver.db.core :as db]
            ;[doctorserver.public.common :as common]
            [ring.util.http-response :refer [ok]]
            [clojure.data.json :as json]
            [monger.json]
            )
  (:import [org.bson.types ObjectId]
           )
  )

(defn getbanksbytype [type]

  (try
    (if (nil? type )
      (ok (db/get-banks-by-type {}))
      (ok (db/get-banks-by-type {:banktype type})))

    (catch Exception ex
      (println (.getMessage ex))
      (ok {:success false :message (.getMessage ex)})
      )

    )

  )
