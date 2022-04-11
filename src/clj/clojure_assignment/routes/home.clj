(ns clojure-assignment.routes.home
  (:require
    [clojure-assignment.sku :as sku]
   [clojure-assignment.layout :as layout]
   [clojure-assignment.db.core :as db]
   [clojure.java.io :as io]
   [clojure-assignment.middleware :as middleware]
   [ring.util.response]
   [ring.util.http-response :as response]))



(defn skus->items
  ([ ] (skus->items (db/get-items) []))
  ([skus items]
   (let [item (sku/sku-iterpreter (get (first skus) :sku ))]
     (let [map-items {:size    (nth item 0)
                      :colour  (nth item 1)
                      :quality (nth item 2)
                      :style (nth item 3)
                      :stock (get (first skus) :stock )}]
       (if (empty? (rest skus))
         (conj items map-items)
         (skus->items (rest skus) (conj items map-items)))


       ))


   ))







(defn about-page [request]
  (layout/render request "about.html"))

(defn dashboard-page [{:keys [flash] :as request}]
  (layout/render request "dashboard.html"
  (merge
    {:items (skus->items)}
    (select-keys flash [:size :colour :quality :style :stock :errors]))))

;Calling a function in sku
(sku/sku-iterpreter "00000000")


(defn home-page[{:keys [flash] :as request}]
  (layout/render
    request
    "home.html"
    (merge
      {:items (skus->items)}
      (select-keys flash [:size :colour :quality :style :stock :errors]))))


(defn home-routes []
  [ "" 
   {:middleware [middleware/wrap-csrf
                 middleware/wrap-formats]}
   ["/" {:get home-page}]
   ["/dashboard" {:get dashboard-page}]
   ["/about" {:get about-page}]])

