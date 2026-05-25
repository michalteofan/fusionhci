jq '.storage.files = (.storage.files // []) + [{
  "path": "/etc/containers/containers.conf",
  "mode": 420,
  "overwrite": true,
  "contents": {
    "source": "data:text/plain;charset=utf-8;base64,W25ldHdvcmtdCmRlZmF1bHRfc3VibmV0ID0gIjEwMC4xMTEuMC4wLzE2Igo="
  }
}]' bootstrap.ign > bootstrap-patched.ign
