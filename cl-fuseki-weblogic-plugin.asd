(asdf:defsystem :cl-fuseki-weblogic-plugin
  :name "cl-fuseki-weblogic-plugin"
  :author "Aad Versteden <madnificent@gmail.com>"
  :version "0.0.1"
  :maintainer "Aad Versteden <madnificent@gmail.com>"
  :licence "MIT"
  :description "Plugin for getting cl-fuseki to run on WebLogic"
  :serial t
  :depends-on (:cl-fuseki :abcl-java-helpers)
  :components ((:file "packages")
               (:file "weblogic-fuseki")))
