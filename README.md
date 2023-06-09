# quarkus-developer-image

Used to describe the process of creating custom images in a cicd way for OpenShift Dev Spaces.

1. fork this project
2. `helm upgrade -i quarkus-developer-image helm`
3. `oc get route quarkus-developer-image-el-route -o go-template='{{.spec.host}}'`
   - get the route of the event listener
   - go into your github project settings > WebHooks, add the url and set the content type to json
4. `oc apply -f argoapp-yaml`
   - namesapce name is devspaces-demo 