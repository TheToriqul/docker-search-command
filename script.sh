#!/bin/bash

###############################################################################
#
# Docker Search Commands - Complete Reference Guide
# Author: Md Toriqul Islam
# Description: Comprehensive guide for Docker search command with examples
# Note: This is a reference script. Do not execute directly.
#
###############################################################################

#------------------------------------------------------------------------------
# 1. Basic Search Commands
#------------------------------------------------------------------------------

# Basic search syntax
docker search nginx                         # Basic search for nginx images
docker search ubuntu                        # Search for ubuntu images
docker search postgres                      # Search for postgres images

# Limiting search results
docker search nginx --limit 10              # Show only first 10 results
docker search ubuntu --limit 25             # Default limit is 25
docker search postgres --limit 100          # Maximum limit is 100

#------------------------------------------------------------------------------
# 2. Filtering Search Results
#------------------------------------------------------------------------------

# Filter official images
docker search alpine --filter "is-official=true"     # Show only official alpine images
docker search ubuntu --filter "is-official=true"     # Show only official ubuntu images

# Filter by stars
docker search nginx --filter "stars=100"             # Images with 100+ stars
docker search postgres --filter "stars=1000"         # Images with 1000+ stars
docker search redis --filter "stars=500"             # Images with 500+ stars

# Multiple filters
docker search nginx \
    --filter "is-official=true" \
    --filter "stars=1000"                           # Official images with 1000+ stars

#------------------------------------------------------------------------------
# 3. Output Formatting
#------------------------------------------------------------------------------

# Default columns
docker search --format "table {{.Name}}\t{{.Description}}\t{{.Stars}}\t{{.Official}}\t{{.Automated}}" nginx

# Custom output format
docker search --format "Image: {{.Name}} - Stars: {{.Stars}}" nginx
docker search --format "{{.Name}}: {{.Description}}" ubuntu
docker search --format "{{.Name}}\t{{.Stars}}" --filter "stars=1000" postgres

# No truncation
docker search --no-trunc ubuntu             # Show full description

#------------------------------------------------------------------------------
# 4. Organization/User Specific Searches
#------------------------------------------------------------------------------

# Search organization repositories
docker search microsoft/                    # Microsoft's repositories
docker search nginx/                        # Nginx's repositories
docker search alpine/                       # Alpine's repositories

# Search user repositories
docker search TheToriqul/                   # Search your repositories
docker search username/                     # Search specific user's repositories

#------------------------------------------------------------------------------
# 5. Advanced Search Patterns
#------------------------------------------------------------------------------

# Search with specific keywords
docker search "python web"                  # Search for Python web images
docker search "node api"                    # Search for Node.js API images
docker search "database postgres"           # Search for Postgres database images

# Version specific searches
docker search python:3.9                    # Search for Python 3.9 images
docker search node:latest                   # Search for latest Node.js images
docker search ubuntu:22.04                  # Search for Ubuntu 22.04 images

#------------------------------------------------------------------------------
# 6. Best Practices and Production Usage
#------------------------------------------------------------------------------

# Production-ready image search
docker search --filter "is-official=true" \
    --filter "stars=1000" \
    nginx                                   # Find trusted, popular images

# Security-focused search
docker search --no-trunc \
    --filter "is-official=true" \
    alpine                                  # Full details of official images

# Development image search
docker search --filter "stars=50" \
    node-development                        # Find development-focused images

#------------------------------------------------------------------------------
# 7. Specialized Searches
#------------------------------------------------------------------------------

# Base images
docker search scratch                       # Search for base images
docker search alpine                        # Search for minimal base images

# Language-specific images
docker search python                        # Python images
docker search golang                        # Go images
docker search node                          # Node.js images

# Database images
docker search mysql                         # MySQL images
docker search postgres                      # PostgreSQL images
docker search mongodb                       # MongoDB images

#------------------------------------------------------------------------------
# 8. Common Search Combinations
#------------------------------------------------------------------------------

# Popular official images
docker search --filter "is-official=true" \
    --filter "stars=500" \
    --format "{{.Name}}\t{{.Stars}}" \
    nginx

# Detailed image information
docker search --no-trunc \
    --filter "stars=100" \
    --format "table {{.Name}}\t{{.Description}}\t{{.Stars}}\t{{.Official}}" \
    ubuntu

# Development environment images
docker search --filter "stars=50" \
    --format "{{.Name}}: {{.Description}}" \
    node-development

###############################################################################
# Usage Examples and Common Patterns
###############################################################################

# Example 1: Find official Python images with high community trust
docker search --filter "is-official=true" --filter "stars=1000" python

# Example 2: Get detailed info about Alpine variants
docker search --no-trunc --format "table {{.Name}}\t{{.Description}}" alpine

# Example 3: Find popular Nginx images with custom output
docker search --filter "stars=500" --format "{{.Name}} ({{.Stars}} stars)" nginx

###############################################################################
# Notes and Best Practices
###############################################################################

# 1. Always check official images first for production use
# 2. Use star count as a general indicator of image quality
# 3. Review full descriptions with --no-trunc for better understanding
# 4. Combine filters to find the most suitable images
# 5. Use custom formatting for better readability
# 6. Remember to verify image details on Docker Hub
# 7. Consider automated builds for transparency
# 8. Check update frequency and maintenance status

###############################################################################
# End of Reference Guide
###############################################################################