(ns clojure-assignment.env
  (:require
    [selmer.parser :as parser]
    [clojure.tools.logging :as log]
    [clojure-assignment.dev-middleware :refer [wrap-dev]]))

(def defaults
  {:init
   (fn []
     (parser/cache-off!)
     (log/info "\n-=[clojure-assignment started successfully using the development profile]=-"))
   :stop
   (fn []
     (log/info "\n-=[clojure-assignment has shut down successfully]=-"))
   :middleware wrap-dev})
