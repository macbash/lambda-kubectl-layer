function handler () {
	  EVENT_DATA=$1
	    echo "$EVENT_DATA" 1>&2;
	      RESPONSE="Echoing request: '$EVENT_DATA'"

	        echo $RESPONSE
		cd /tmp	
		curl -O ${DEPLOYMENT_FILE}
		
	$LAMBDA_TASK_ROOT/bin/kubectl --kubeconfig $LAMBDA_TASK_ROOT/config/k3s.yaml apply -f /tmp/deployment.yaml

	}
