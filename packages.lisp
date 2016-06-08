(defpackage weblogic-fuseki
  (:use :cl :cl-fuseki)
  (:shadowing-import-from :cl :delete)
  (:export :java-server :java-repository))
