;;;;
;;;;
;;;;

(cl:in-package #:cl-user)
(defpackage #:proxyauth-test
  (:use #:cl
        #:qlqs-http
        #:prove))
(in-package #:proxyauth-test)

(plan 7)

(is (qlqs-http::base64-enc "a")       "YQ=="
    :test #'string=)
(is (qlqs-http::base64-enc "ab")      "YWI="
    :test #'string=)
(is (qlqs-http::base64-enc "abc")     "YWJj"
    :test #'string=)
(is (qlqs-http::base64-enc "abcd")    "YWJjZA=="
    :test #'string=)
(is (qlqs-http::base64-enc "abcde")   "YWJjZGU="
    :test #'string=)
(is (qlqs-http::base64-enc "abcdef")  "YWJjZGVm"
    :test #'string=)
(is (qlqs-http::base64-enc "abcdefg") "YWJjZGVmZw=="
    :test #'string=)

(finalize)
