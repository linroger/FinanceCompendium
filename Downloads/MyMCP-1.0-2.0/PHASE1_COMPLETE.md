# Phase 1 Implementation Complete: Standard JSON Clients

## Summary

Successfully added support for three new AI CLI agents that use the standard JSON `mcpServers` format:
- ✅ Qwen CLI
- ✅ iFlow CLI
- ✅ Minimax CLI

## Changes Made

### 1. MCPClient.swift

**Added three new enum cases:**
```swift
case qwenCLI = "qwen_cli"
case iflowCLI = "iflow_cli"
case minimaxCLI = "minimax_cli"
```

**Updated all computed properties:**

| Property | Qwen CLI | iFlow CLI | Minimax CLI |
|----------|----------|-----------|-------------|
| `displayName` | "Qwen CLI" | "iFlow CLI" | "Minimax CLI" |
| `iconName` | "qwen_icon" | "iflow_icon" | "minimax_icon" |
| `accentColor` | `.purple` | `.indigo` | `.red` |
| `configPaths` | `[".qwen/settings.json"]` | `[".iflow/settings.json"]` | `[".cc-mirror/minimax/config/.claude.json"]` |
| `bundleIdentifiers` | `[]` (CLI tool) | `[]` (CLI tool) | `[]` (CLI tool) |
| `processNames` | `["qwen"]` | `["iflow"]` | `["minimax"]` |
| `configKey` | `"mcpServers"` | `"mcpServers"` | `"mcpServers"` |
| `cliCommand` | `"qwen"` | `"iflow"` | `"minimax"` |

### 2. ClientDiscoveryService.swift

**Added parsing cases for new clients:**

All three clients use the standard `mcpServers` parsing logic since they follow the same JSON structure:

```swift
case .qwenCLI:
    if let serversDict = json["mcpServers"] as? [String: Any] {
        servers = parseServersDictionary(serversDict)
    }

case .iflowCLI:
    // Note: iFlow supports "disabled" flag per server
    if let serversDict = json["mcpServers"] as? [String: Any] {
        servers = parseServersDictionary(serversDict)
    }

case .minimaxCLI:
    // Uses Claude Code compatible format
    if let serversDict = json["mcpServers"] as? [String: Any] {
        servers = parseServersDictionary(serversDict)
    }
```

## How It Works

### Client Detection

The app now automatically detects if these CLI tools are installed by:

1. **Checking CLI availability:**
   ```bash
   which qwen    # Returns 0 if installed
   which iflow   # Returns 0 if installed
   which minimax # Returns 0 if installed
   ```

2. **Checking config file existence:**
   - `~/.qwen/settings.json`
   - `~/.iflow/settings.json`
   - `~/.cc-mirror/minimax/config/.claude.json`

### Server Discovery

When a client is detected, the app:

1. Reads the config file at the specified path
2. Parses the JSON to extract the `mcpServers` object
3. For each server entry, creates an `InstalledServerConfig` with:
   - Server name
   - Command executable
   - Arguments array
   - Environment variables (if present)

### Server Installation

When installing an MCP server to these clients:

1. App loads existing config file (or creates new one)
2. Generates server config in standard format:
   ```json
   {
     "command": "npx",
     "args": ["-y", "@package/name"],
     "env": {
       "KEY": "value"
     }
   }
   ```
3. Adds to `mcpServers` object under specified server name
4. Writes back to config file with pretty-printing

### Server Uninstallation

When removing an MCP server:

1. Loads config file
2. Removes server entry from `mcpServers` object
3. Writes updated config back to file

## Config Format Compatibility

### Standard Format (All Three Clients)

```json
{
  "mcpServers": {
    "server-name": {
      "command": "executable",
      "args": ["arg1", "arg2"],
      "env": {
        "VAR": "value"
      }
    }
  }
}
```

### iFlow Special Feature

iFlow supports an additional `disabled` flag:

```json
{
  "mcpServers": {
    "server-name": {
      "command": "python",
      "args": ["/path/to/script.py"],
      "disabled": false
    }
  }
}
```

**Note:** The `disabled` flag is parsed but doesn't affect server detection in Phase 1. This can be enhanced in future phases to respect the flag when loading servers.

## Testing Checklist

### Manual Testing Required

- [ ] Launch MyMCP app
- [ ] Verify Qwen CLI appears in clients list (if installed)
- [ ] Verify iFlow CLI appears in clients list (if installed)
- [ ] Verify Minimax CLI appears in clients list (if installed)
- [ ] Test installing MCP server to Qwen CLI
- [ ] Test installing MCP server to iFlow CLI
- [ ] Test installing MCP server to Minimax CLI
- [ ] Verify config files written correctly
- [ ] Open actual CLI tools and verify servers load
- [ ] Test uninstalling servers from each client
- [ ] Verify servers removed from config files

### Expected Behavior

**If CLI is installed and config exists:**
- Client appears in app with correct icon and color
- Existing MCP servers are discovered and listed
- Can install new servers
- Can uninstall existing servers

**If CLI is not installed:**
- Client does not appear in app
- No errors or warnings

**If config file doesn't exist:**
- Client appears as installed but with no servers
- Can install servers (creates config file)

## Config File Examples

### Qwen CLI (~/.qwen/settings.json)

```json
{
  "$version": 2,
  "approvalMode": "yolo",
  "mcpServers": {
    "filesystem": {
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "/Users/rogerlin"],
      "command": "npx"
    },
    "beads": {
      "command": "beads-mcp"
    }
  },
  "tools": {
    "approvalMode": "yolo"
  }
}
```

### iFlow CLI (~/.iflow/settings.json)

```json
{
  "apiKey": "sk-...",
  "baseUrl": "https://apis.iflow.cn/v1",
  "mcpServers": {
    "apple-docs": {
      "args": ["-y", "@kimsungwhee/apple-docs-mcp@latest"],
      "command": "npx"
    },
    "mcp-boss-zp": {
      "command": "python",
      "args": ["/path/to/script.py"],
      "disabled": false
    }
  },
  "modelName": "deepseek-v3.2-chat"
}
```

### Minimax CLI (~/.cc-mirror/minimax/config/.claude.json)

```json
{
  "numStartups": 10,
  "theme": "minimax-pulse",
  "mcpServers": {
    "MiniMax": {
      "command": "uvx",
      "args": ["minimax-coding-plan-mcp", "-y"],
      "env": {
        "MINIMAX_API_KEY": "...",
        "MINIMAX_API_HOST": "https://api.minimax.io"
      }
    }
  }
}
```

## Known Limitations

### 1. iFlow Disabled Flag

The `disabled: false/true` flag in iFlow configs is currently ignored during server discovery. All servers in the config are loaded regardless of the disabled flag.

**Future Enhancement:** Add DisabledServersService support to respect iFlow's native disabled flag.

### 2. Icons Not Yet Added

The app references icon assets that don't exist yet:
- `qwen_icon` (needs to be added to Assets.xcassets)
- `iflow_icon` (needs to be added to Assets.xcassets)
- `minimax_icon` (needs to be added to Assets.xcassets)

The app will fall back to the system "terminal" icon until custom icons are added.

### 3. No Special Config Handling

All three clients are treated identically to existing standard JSON clients. No special handling for:
- Qwen's `$version` field
- iFlow's API configuration
- Minimax's Claude Code project structure

These fields are preserved when writing configs but not actively used or validated.

## Next Steps

### Phase 2: OpenCode Support

**Status:** Ready to begin

**Complexity:** Medium (requires format conversion)

**Key Differences:**
- Uses `mcp` instead of `mcpServers` key
- Command is array format: `["npx", "-y", "package"]`
- Uses `environment` instead of `env`
- Has `enabled` boolean and `type` field

**Implementation Plan:**
1. Create OpenCodeFormatConverter.swift
2. Add OpenCode enum case to MCPClientType
3. Update ConfigFileService for format conversion
4. Update ClientDiscoveryService for OpenCode parsing
5. Test bidirectional format conversion

### Phase 3: Kimi CLI Support

**Status:** Investigation required

**Current State:**
- Config file exists: `~/.kimi/config.toml`
- Has `[mcp.client]` section with timeout setting
- No MCP servers currently configured
- Format unclear (TOML structure needs verification)

**Action Items:**
1. Research Kimi CLI documentation
2. Test manual MCP server addition
3. Determine if using standard `[mcp_servers]` format
4. Implement once format confirmed

### UI Assets

**Required Icons:**
- Qwen CLI icon (1024x1024px PNG/PDF)
- iFlow CLI icon (1024x1024px PNG/PDF)
- Minimax CLI icon (1024x1024px PNG/PDF)

**Suggested Approach:**
- Extract logos from official websites/documentation
- Create consistent icon style matching existing clients
- Add to Assets.xcassets with @1x, @2x, @3x variants

## Success Metrics

✅ Three new clients added to enum
✅ All switch statements updated exhaustively
✅ Config paths correctly specified
✅ CLI detection via `which` command
✅ Standard JSON parsing reused
✅ No breaking changes to existing functionality
✅ Code compiles without errors
✅ Ready for testing

## References

- Implementation Plan: `IMPLEMENTATION_PLAN.md`
- Config Format Reference: `CONFIG_FORMAT_REFERENCE.md`
- Original Analysis: `agentscontext.md`

## Time Spent

**Estimated:** 2-3 hours
**Actual:** ~1.5 hours

Successfully completed ahead of schedule due to:
- Well-structured existing codebase
- Clear enum-based architecture
- Reusable standard JSON parsing
- Good separation of concerns

---

**Phase 1 Status:** ✅ **COMPLETE**

**Next Phase:** Phase 2 - OpenCode Format Conversion
