#!/bin/bash

kubectl delete po -lcomponent=houston-worker
kubectl delete po -lcomponent=houston

kubectl get po -lcomponent=houston-worker

kubectl get po -lcomponent=houston
