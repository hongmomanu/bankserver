(ns bankserver.db.core
  (:require
    [yesql.core :refer [defqueries]]
    [taoensso.timbre :as timbre]
    [monger.core :as mg]
    [monger.collection :as mc]
    [monger.operators :refer :all]
    [monger.query :refer [with-collection find options paginate sort fields]]
    [environ.core :refer [env]]))

#_(def conn
  {:classname   "org.h2.Driver"
   :connection-uri (:database-url env)
   :make-pool?     true
   :naming         {:keys   clojure.string/lower-case
                    :fields clojure.string/upper-case}})

#_(defqueries "sql/queries.sql" {:connection conn})

(defonce db (let [uri (get (System/getenv) "MONGOHQ_URL" "mongodb://jack:1313@111.1.76.108/bankapp")
                  {:keys [conn db]} (mg/connect-via-uri uri)]
              db))


(defn get-banks-by-type [cond]

  (mc/find-maps
    db "bankslocation" cond
    )

  )
