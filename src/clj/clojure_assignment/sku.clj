(ns clojure-assignment.sku)


(defn sku-size
  [sku-size]
  (cond
    (= sku-size "00") "S"
    (= sku-size "01") "M"
    (= sku-size "02") "L"
    (= sku-size "03") "XL"
    (= sku-size "04") "XL"
    ))

(defn sku-colour
  [sku-colour]
  (cond
    (= sku-colour "00") "Black"
    (= sku-colour "01") "Red "
    ))

(defn sku-quality
  [sku-quality]
  (cond
    (= sku-quality "00") "Standard"
    (= sku-quality "01") "Premium"
    ))

(defn sku-style
  [sku-style]
  (cond
    (= sku-style "00") "T-shirt"
    (= sku-style "01") "Vest"
    ))


(defn sku-iterpreter
  [sku]

  (let [split (re-seq #".{1,2}" sku)]

    (let [item [(sku-size (nth split 0))
                (sku-colour (nth split 1))
                (sku-quality (nth split 2))
                (sku-style (nth split 3))
                ]]
      item)))

