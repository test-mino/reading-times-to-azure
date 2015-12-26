echo "Travis Commit: $TRAVIS_COMMIT"
echo "Travis Pull Request Number: $TRAVIS_PULL_REQUEST"

curl -H "Authorization: Token $TOKEN" -H "Accept: application/json" -H "Content-type: application/json" -X POST -d '{"state": "pending","target_url": "https://travis.octodemo.com/office-tools/reading-time-app","description": "Executing bogus status check","context": "bogus-status-check/travis-ci"}' https://octodemo.com/api/v3/repos/office-tools/reading-time-app/statuses/$TRAVIS_COMMIT

sleep 10

curl -H "Authorization: Token $TOKEN" -H "Accept: application/json" -H "Content-type: application/json" -X POST -d '{"state": "success","target_url": "https://travis.octodemo.com/office-tools/reading-time-app","description": "Executing bogus status check","context": "bogus-status-check/travis-ci"}' https://octodemo.com/api/v3/repos/office-tools/reading-time-app/statuses/$TRAVIS_COMMIT