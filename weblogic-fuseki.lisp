(in-package :weblogic-fuseki)

(defclass java-server (cl-fuseki::server)
  ()
  (:documentation "endpoint managed by making abcl java calls"))

(defclass java-repository (cl-fuseki::virtuoso-repository)
  ()
  (:documentation "repository for endpoints managed by java"))

(ah:import-java-function "com.tenforce.esco.communication.Sparql" sparql-query)
(ah:import-java-function "com.tenforce.esco.communication.Sparql" sparql-update)

(defmethod cl-fuseki::query-raw ((repos java-repository) (query string) &rest options &key &allow-other-keys)
  (cl-fuseki::flush-updates repos)
  (let ((full-query (apply #'cl-fuseki::query-update-prefixes query options)))
    (cl-fuseki::maybe-log-query full-query)
    (sparql-query full-query)))

(defmethod cl-fuseki::update-now ((repos java-repository) (update string))
  (sparql-update update))
