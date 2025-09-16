pull:
# set specific branches for submodules
	git submodule set-branch -b 4.5 spine-godot/godot-cpp

# init & update submodules and checkout proper branches
	git submodule update --init --recursive --remote

# force reset each submodule to its remote branch
	git submodule foreach --recursive 'branch=$$(git rev-parse --abbrev-ref HEAD); git fetch origin; git reset --hard origin/$$branch'
