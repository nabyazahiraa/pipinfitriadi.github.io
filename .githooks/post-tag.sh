#!/bin/bash

# Copyright (C) Pipin Fitriadi - All Rights Reserved

# Unauthorized copying of this file, via any medium is strictly prohibited
# Proprietary and confidential
# Written by Pipin Fitriadi <pipinfitriadi@gmail.com>, 18 July 2024

echo "Tag created: $(git describe --tags $(git rev-list --tags --max-count=1))"

# Run npm update-version
git checkout main
npm run update-version
npm install --package-lock-only
git commit -am "fix: update version on package.json"
