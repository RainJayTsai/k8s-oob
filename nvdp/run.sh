kubectl create ns nvidia-device-plugin

kubectl create cm -n nvidia-device-plugin nvidia-plugin-configs \
    --from-file=config=nvdp-config0.yaml

helm upgrade -i nvdp nvdp/nvidia-device-plugin     --version=0.12.3     --namespace nvidia-device-plugin     --create-namespace     --set config.name=nvidia-plugin-configs
