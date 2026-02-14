# Available Tools

This document describes the tools available to picobot.

## File Operations

### filesystem
Read, write, and list files in the workspace.
- action: "read", "write", "list"
- path: file or directory path (relative to workspace)
- content: (for "write" action) the content to write

Examples:
- Read: {"action": "read", "path": "data.csv"}
- Write: {"action": "write", "path": "data.csv", "content": "Name\nBen\nKen\n"}
- List: {"action": "list", "path": "."}

## Shell Execution

### exec
Execute a shell command and return output.
- command: the shell command to run
- Commands have a timeout (default 60s)
- Dangerous commands are blocked

## Web Access

### web
Fetch and extract content from a URL.
- url: the URL to fetch
- Useful for checking websites, APIs, documentation

## Messaging

### message
Send a message to the current channel/chat.
- content: the message text

## Memory

### write_memory
Persist information to memory files.
- target: "today" (daily notes) or "long" (long-term memory)
- content: what to remember
- append: true to add, false to replace

## Skill Management

### create_skill
Create a new skill in the skills/ directory.
- name: skill name (used as folder name)
- description: brief description
- content: the skill's markdown content

### list_skills
List all available skills. No arguments needed.

### read_skill
Read a specific skill's content.
- name: the skill name to read

### delete_skill
Delete a skill from skills/.
- name: the skill name to delete

## Background Tasks

### spawn
Spawn a background subagent process.

### cron
Schedule or manage cron jobs.
