#!/bin/bash

###############################################################################
#
# Docker Search Command Reference
# Author: Md Toriqul Islam
# Description: Comprehensive reference for Docker search command patterns
# Note: This is a reference script. Do not execute directly.
#
###############################################################################

#------------------------------------------------------------------------------
# Basic Search Operations
#------------------------------------------------------------------------------

# Basic search for repositories
docker search nginx

# Search with result limit
docker search alpine --limit 50

# Search official repositories
docker search ubuntu --filter "is-official=true"

#------------------------------------------------------------------------------
# Advanced Filtering
#------------------------------------------------------------------------------

# Filter by minimum stars
docker search postgresql --filter "stars=100"

# Combine multiple filters
docker search nginx --filter "is-official=true" --filter "stars=1000"

# Search automated builds (Note: This feature is deprecated)
docker search alpine --filter "is-automated=true"

#------------------------------------------------------------------------------
# Output Formatting
#------------------------------------------------------------------------------

# Format output as table (default)
docker search --format "table {{.Name}}\t{{.Description}}\t{{.Stars}}" nginx

# Custom formatting
docker search --format "{{.Name}}: {{.Stars}} stars" alpine

#------------------------------------------------------------------------------
# Search Patterns
#------------------------------------------------------------------------------

# Search specific organization repositories
docker search organization/repo-name

# Search with specific tags (Note: Limited functionality)
docker search ubuntu:latest

# Search development versions
docker search node-development

#------------------------------------------------------------------------------
# Security Considerations
#------------------------------------------------------------------------------

# Search only official images (recommended for production)
docker search --filter "is-official=true" python

# Verify image details
docker search --no-trunc --filter "is-official=true" alpine

#------------------------------------------------------------------------------
# Best Practices
#------------------------------------------------------------------------------

# Use specific image names
docker search specific-image-name

# Include version information
docker search specific-image:version

# Filter for production-ready images
docker search --filter "stars=100" --filter "is-official=true" nginx

###############################################################################
# End of Command Reference
###############################################################################