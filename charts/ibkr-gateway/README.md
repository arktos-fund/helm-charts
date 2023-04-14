# ibkr-gateway

![Version: 0.2.2](https://img.shields.io/badge/Version-0.2.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 10.19.1k](https://img.shields.io/badge/AppVersion-10.19.1k-informational?style=flat-square)

A Helm chart IBKR Gateway for Kubernetes

**Homepage:** <https://github.com/arktos-fund/helm-charts>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| perriea | <aperrier@arktos.fund> |  |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"kubernetes.io/arch"` |  |
| affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"amd64"` |  |
| gateway | object | `{"config":{"credentials":"credentials","live":true},"debug":false,"env":[],"fullnameOverride":"","image":{"pullPolicy":"IfNotPresent","repository":"quay.io/arktos-venture/ibkr-gateway","tag":""},"imagePullSecrets":[],"jvm":{"XX":{"ConcGCThreads":5,"InitiatingHeapOccupancyPercent":70,"MaxGCPauseMillis":200,"ParallelGCThreads":20},"Xms":"2G","Xmx":"2G","installer":{"uuid":"3046c7e3-ffbd-4699-a848-117342ff43ee"}},"nameOverride":"","podAnnotations":{},"podSecurityContext":{"fsGroup":10001},"resources":{"limits":{"cpu":"300m","memory":"2100Mi"},"requests":{"cpu":"300m","memory":"2100Mi"}},"securityContext":{"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":false,"runAsNonRoot":true,"runAsUser":10001}}` | Gateway configuration |
| gateway.config | object | `{"credentials":"credentials","live":true}` | config is a list of parameters to pass to the gateway |
| gateway.debug | bool | `false` | debug enables debug mode |
| gateway.env | list | `[]` | env is a list of environment variables to set in the container. |
| gateway.fullnameOverride | string | `""` | fullnameOverride is an optional string to substitute for the full names of resources |
| gateway.image | object | `{"pullPolicy":"IfNotPresent","repository":"quay.io/arktos-venture/ibkr-gateway","tag":""}` | Specifies whether a Gateway should be created |
| gateway.image.pullPolicy | string | `"IfNotPresent"` | The image pull policy |
| gateway.image.repository | string | `"quay.io/arktos-venture/ibkr-gateway"` | The image repository |
| gateway.image.tag | string | `""` | The image tag |
| gateway.imagePullSecrets | list | `[]` | imagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this Chart. |
| gateway.jvm | object | `{"XX":{"ConcGCThreads":5,"InitiatingHeapOccupancyPercent":70,"MaxGCPauseMillis":200,"ParallelGCThreads":20},"Xms":"2G","Xmx":"2G","installer":{"uuid":"3046c7e3-ffbd-4699-a848-117342ff43ee"}}` | jvm is a list of parameters to pass to the JVM |
| gateway.jvm.XX | object | `{"ConcGCThreads":5,"InitiatingHeapOccupancyPercent":70,"MaxGCPauseMillis":200,"ParallelGCThreads":20}` | Xmn is the minimum heap size |
| gateway.jvm.Xms | string | `"2G"` | Xms is the initial heap size |
| gateway.jvm.Xmx | string | `"2G"` | Xmx is the maximum heap size |
| gateway.nameOverride | string | `""` | nameOverride is an optional string to substitute for the full names of resources |
| gateway.podAnnotations | object | `{}` | podAnnotations is an optional list of annotations to add to the pod |
| gateway.podSecurityContext | object | `{"fsGroup":10001}` | podSecurityContext is an optional security context to add to the pod |
| gateway.resources | object | `{"limits":{"cpu":"300m","memory":"2100Mi"},"requests":{"cpu":"300m","memory":"2100Mi"}}` | resources is an optional list of resources to set for the container |
| gateway.securityContext | object | `{"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":false,"runAsNonRoot":true,"runAsUser":10001}` | securityContext is an optional security context to add to the container |
| nodeSelector."kubernetes.io/os" | string | `"linux"` |  |
| serviceAccount | object | `{"annotations":{},"create":false,"name":""}` | ServiceAccount configuration |
| serviceAccount.annotations | object | `{}` | Annotations to add to the ServiceAccount |
| serviceAccount.create | bool | `false` | Specifies whether a ServiceAccount should be created |
| serviceAccount.name | string | `""` | The name of the ServiceAccount to use. |
| sidecars | object | `{"containers":[{"image":"rg.nl-ams.scw.cloud/arktos-venture/ibkr-worker:0.0.1","imagePullPolicy":"IfNotPresent","name":"data-worker-config","resources":{"limits":{"cpu":"50m","memory":"64Mi"},"requests":{"cpu":"50m","memory":"64Mi"}},"securityContext":{"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":false,"runAsNonRoot":true,"runAsUser":10001},"volumeMounts":[{"mountPath":"/home/noroot/config.yaml","name":"data-worker-config","subPath":"config.yaml"}]}],"volumes":[{"name":"data-worker-config","secret":{"secretName":"data-worker-config"}}]}` | sidecars workers configuration |
| sidecars.containers | list | `[{"image":"rg.nl-ams.scw.cloud/arktos-venture/ibkr-worker:0.0.1","imagePullPolicy":"IfNotPresent","name":"data-worker-config","resources":{"limits":{"cpu":"50m","memory":"64Mi"},"requests":{"cpu":"50m","memory":"64Mi"}},"securityContext":{"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":false,"runAsNonRoot":true,"runAsUser":10001},"volumeMounts":[{"mountPath":"/home/noroot/config.yaml","name":"data-worker-config","subPath":"config.yaml"}]}]` | containers is an optional list of containers to add to the pod |
| sidecars.volumes | list | `[{"name":"data-worker-config","secret":{"secretName":"data-worker-config"}}]` | volumeMounts is an optional list of volume mounts to add to the container |
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
