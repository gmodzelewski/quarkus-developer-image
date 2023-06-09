# quarkus-developer-image

Used to describe the process of creating custom images in a cicd way for OpenShift Dev Spaces.
Image gets pushed to quay, so a user secret is needed. 


1. fork this project
2. `oc create secret docker-registry quay-secret --docker-server=quay.io --docker-username=<your quay username> --docker-password=<generated cli password>`
   - navigate to quay user settings, generate CLI Password at the top
3. `oc secret link pipeline quay-secret`
4. `oc secret link pipeline github-oauth-config`
5. `helm upgrade -i quarkus-developer-image helm`
6. `oc get route quarkus-developer-image-el-route -o go-template='{{.spec.host}}'`
   - get the route of the event listener
   - go into your github project settings > WebHooks, add the url and set the content type to json
7. `oc apply -f argoapp-yaml`
   - namespace name is devspaces-demo 