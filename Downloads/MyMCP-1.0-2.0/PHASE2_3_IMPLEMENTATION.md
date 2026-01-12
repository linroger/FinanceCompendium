# Phase 2 & 3 Implementation: OpenCode and Kimi CLI

## Phase 2: OpenCode Implementation ✅ **COMPLETE**

### Summary

Successfully implemented full support for OpenCode CLI, including bidirectional format conversion between standard MCP format and OpenCode's unique structure.

### Changes Made

#### 1. Created OpenCodeFormatConverter.swift

**Location:** `MyMCP/MyMCP/Services/OpenCodeFormatConverter.swift`

New actor service that handles format conversion between:
- **Standard Format:** `{ "command": "npx", "args": [...], "env": {...} }`
- **OpenCode Format:** `{ "command": ["npx", ...], "environment": {...}, "enabled": true, "type": "local" }`

**Key Methods:**
- `toOpenCodeFormat(_:)` - Converts standard config to OpenCode format
- `fromOpenCodeFormat(_:)` - Converts OpenCode config to standard format
- `isOpenCodeFormat(_:)` - Detects if a config uses OpenCode format

**Format Differences Handled:**
- Command representation: String + args array → Single combined array
- Environment field: `env` → `environment`
- OpenCode-specific fields: `enabled` (boolean) and `type` (string)

#### 2. Updated MCPClient.swift

**Added OpenCode enum case:**
```swift
case openCodeCLI = "opencode_cli"
```

**Updated all computed properties:**
- `displayName`: "OpenCode"
- `iconName`: "opencode_icon"
- `accentColor`: `.teal`
- `configPaths`: `[".config/opencode/opencode.json"]`
- `bundleIdentifiers`: `[]` (CLI tool)
- `processNames`: `["opencode"]`
- `configKey`: `"mcp"` (different from standard "mcpServers"!)
- `serversKeyPath`: `["mcp"]` (different from standard!)
- `cliCommand`: `"opencode"`

**Added new property:**
```swift
var usesOpenCodeFormat: Bool {
    self == .openCodeCLI
}
```

#### 3. Updated ClientDiscoveryService.swift

**Added OpenCode converter instance:**
```swift
private let openCodeConverter = OpenCodeFormatConverter()
```

**Added OpenCode parsing case:**
```swift
case .openCodeCLI:
    if let mcpDict = json["mcp"] as? [String: Any] {
        servers = await parseOpenCodeServers(mcpDict)
    }
```

**New Method: `parseOpenCodeServers(_:)`**
- Extracts servers from "mcp" key (not "mcpServers")
- Converts each server from OpenCode format to standard format
- Creates InstalledServerConfig objects
- Logs conversion progress

#### 4. Updated ConfigFileService.swift

**Added OpenCode converter instance:**
```swift
private let openCodeConverter = OpenCodeFormatConverter()
```

**Modified `addServerToClientConfig` to handle OpenCode:**
```swift
} else if client.type.usesOpenCodeFormat {
    MCPLogger.config.debug("Using OpenCode config format")
    let openCodeConfig = await openCodeConverter.toOpenCodeFormat(serverConfig)
    try await installServerToOpenCode(serverName: serverName, serverConfig: openCodeConfig, configPath: configPath)
}
```

**New Methods:**
- `installServerToOpenCode(serverName:serverConfig:configPath:)` - Writes server to OpenCode config under "mcp" key
- `uninstallServerFromOpenCode(serverName:configPath:)` - Removes server from OpenCode config

**Modified `uninstallServer` to handle OpenCode:**
```swift
} else if client.type.usesOpenCodeFormat {
    try await uninstallServerFromOpenCode(serverName: serverName, configPath: configPath)
}
```

### How OpenCode Integration Works

#### Discovery Process
1. App detects OpenCode CLI via `which opencode` command
2. Checks for config at `~/.config/opencode/opencode.json`
3. Reads config and finds "mcp" key (not "mcpServers")
4. For each server entry, converts from OpenCode format to standard format
5. Creates InstalledServerConfig objects for display

#### Installation Process
1. User selects server to install to OpenCode
2. App generates standard config (command/args/env)
3. Converts to OpenCode format using `toOpenCodeFormat()`
4. Writes to config under "mcp" key with OpenCode structure
5. Server is ready to use in OpenCode CLI

#### Uninstallation Process
1. User selects server to remove from OpenCode
2. App reads OpenCode config from "mcp" key
3. Removes server entry
4. Writes updated config back

### Config Format Examples

#### Standard Format Input
```json
{
  "command": "npx",
  "args": ["-y", "@modelcontextprotocol/server-filesystem", "/path"],
  "env": {
    "DEBUG": "true"
  }
}
```

#### OpenCode Format Output
```json
{
  "command": ["npx", "-y", "@modelcontextprotocol/server-filesystem", "/path"],
  "enabled": true,
  "environment": {
    "DEBUG": "true"
  },
  "type": "local"
}
```

### Testing Checklist

Manual testing required:

- [ ] Launch MyMCP app
- [ ] Verify OpenCode CLI detected (if installed)
- [ ] Verify existing OpenCode servers discovered
- [ ] Test installing MCP server to OpenCode
- [ ] Verify config written in correct OpenCode format
- [ ] Test in actual OpenCode CLI
- [ ] Verify server loads and works
- [ ] Test uninstalling server from OpenCode
- [ ] Verify server removed from config
- [ ] Verify no standard format artifacts left behind

### Known Limitations

1. **Icon Not Added:** `opencode_icon` referenced but not in Assets.xcassets yet
2. **No Remote Server Support:** Only handles "local" type servers (command-based), not remote HTTP/SSE servers
3. **No Disabled Flag:** OpenCode's "enabled" field is always set to true on install

---

## Phase 3: Kimi CLI Investigation 🔍 **NEEDS VERIFICATION**

### Current Status

**Config File Found:** `~/.kimi/config.toml`

**Investigation Results:**

#### Config Structure
```toml
[mcp.client]
tool_call_timeout_ms = 60000
```

**Key Findings:**
- Kimi uses TOML format (like OpenAI Codex)
- Has `[mcp.client]` section for MCP client settings
- **No MCP servers currently defined**
- No `[mcp_servers.*]` sections found

#### Other Files Examined
- `~/.kimi/config.json` - JSON version of config, also no MCP servers
- `~/.kimi/KIMI.md` - General Kimi coding instructions, no MCP server docs
- `~/.kimi/kimi.json` - Work directories tracking, no MCP config

### Hypothesis: Kimi Uses TOML Format Like Codex

Based on evidence:
1. ✅ Config is in TOML format
2. ✅ Has `[mcp.client]` section indicating MCP support
3. ❓ Likely uses `[mcp_servers.server-name]` sections (unconfirmed)

**Expected Format (Unverified):**
```toml
[mcp_servers.filesystem]
command = "npx"
args = ["-y", "@modelcontextprotocol/server-filesystem", "/path"]
env.DEBUG = "true"
```

### Implementation Options

#### Option 1: Assume Codex-Compatible Format ⚠️

**Pros:**
- Minimal code changes (reuse existing TOML parsing)
- Similar structure to Codex

**Cons:**
- **Unverified assumption** - could break if format differs
- Risk of writing incorrect config

**Code Changes Required:**
```swift
// MCPClient.swift - Add enum case
case kimiCLI = "kimi_cli"

// All switch statements updated with:
case .kimiCLI:
    // Same as openaiCodex for most properties
    // configPaths: [".kimi/config.toml"]
    // usesTomlConfig: true
```

#### Option 2: Wait for Manual Verification ✅ **RECOMMENDED**

**Pros:**
- **Safe** - no risk of incorrect implementation
- Ensures correct format before coding
- User can test with actual Kimi CLI

**Cons:**
- Requires user action
- Implementation delayed

**Verification Steps Needed:**
1. User manually adds an MCP server to Kimi config
2. Examine the resulting TOML structure
3. Confirm format matches Codex or document differences
4. Implement once format confirmed

### Next Steps for Kimi Implementation

#### Manual Verification Process

1. **Test MCP Server Installation:**
   ```bash
   # Edit ~/.kimi/config.toml manually
   # Add a test MCP server section
   ```

2. **Expected Test Config:**
   ```toml
   [mcp_servers.test-server]
   command = "npx"
   args = ["-y", "@modelcontextprotocol/server-filesystem", "/tmp"]
   ```

3. **Verify in Kimi CLI:**
   ```bash
   kimi  # Launch Kimi
   # Check if server loads
   # Check for any errors
   ```

4. **Document Actual Format:**
   - Take note of exact TOML structure used
   - Check for any Kimi-specific fields
   - Verify environment variable syntax

5. **Implement Once Confirmed:**
   - If format matches Codex: Simple enum addition
   - If format differs: Create KimiFormatConverter similar to OpenCodeFormatConverter

### Recommended Implementation (After Verification)

**If format matches Codex:**

```swift
// MCPClient.swift additions
case kimiCLI = "kimi_cli"

var displayName: String {
    case .kimiCLI: return "Kimi CLI"
}

var usesTomlConfig: Bool {
    self == .openaiCodex || self == .kimiCLI
}

var configPaths: [String] {
    case .kimiCLI: return [".kimi/config.toml"]
}

var cliCommand: String? {
    case .kimiCLI: return "kimi"
}

// No changes needed to ConfigFileService - TOML parsing already works
// No changes needed to ClientDiscoveryService - TOML parsing already works
```

**If format differs significantly:**
- Create `KimiFormatConverter.swift`
- Add `var usesKimiFormat: Bool`
- Update ConfigFileService with Kimi-specific methods
- Update ClientDiscoveryService with Kimi parsing

---

## Summary Status

| Phase | Client | Status | Complexity | Notes |
|-------|--------|--------|-----------|-------|
| 1 | Qwen CLI | ✅ Complete | Low | Standard JSON |
| 1 | iFlow CLI | ✅ Complete | Low | Standard JSON + disabled flag |
| 1 | Minimax CLI | ✅ Complete | Low | Standard JSON |
| 2 | OpenCode | ✅ Complete | Medium | Format conversion implemented |
| 3 | Kimi CLI | ⏸️ Pending | Unknown | Needs manual verification |

## Files Modified (Phase 2)

- ✅ `MyMCP/MyMCP/Services/OpenCodeFormatConverter.swift` (NEW)
- ✅ `MyMCP/MyMCP/Models/MCPClient.swift` (OpenCode case added)
- ✅ `MyMCP/MyMCP/Services/ClientDiscoveryService.swift` (OpenCode parsing)
- ✅ `MyMCP/MyMCP/Services/ConfigFileService.swift` (OpenCode read/write)

## Files to Modify (Phase 3 - After Verification)

- `MyMCP/MyMCP/Models/MCPClient.swift` (Kimi case)
- Potentially `MyMCP/MyMCP/Services/KimiFormatConverter.swift` (if format differs)
- Potentially `MyMCP/MyMCP/Services/ConfigFileService.swift` (if format differs)
- Potentially `MyMCP/MyMCP/Services/ClientDiscoveryService.swift` (if format differs)

## Next Actions Required

### Immediate (Phase 2 Complete)
1. ✅ OpenCode implementation code complete
2. ⏳ **Test OpenCode integration manually**
3. ⏳ **Add OpenCode icon** to Assets.xcassets

### Before Phase 3
1. ⏳ **Manually test Kimi MCP server addition**
2. ⏳ **Document actual Kimi TOML format**
3. ⏳ **Verify format matches Codex or note differences**
4. ⏳ **Implement Kimi support based on findings**

### UI Assets Needed
- `opencode_icon.png` (1024x1024px) - For Phase 2
- `kimi_icon.png` (1024x1024px) - For Phase 3
- Plus icons from Phase 1: qwen_icon, iflow_icon, minimax_icon

---

## Git Workflow

**Before completing work:**
```bash
git status                    # Check changes
git add <files>               # Stage changes
git commit -m "feat: Add OpenCode and prepare Kimi CLI support

- Implement OpenCodeFormatConverter for bidirectional format conversion
- Add OpenCode CLI enum case and all computed properties
- Update ClientDiscoveryService with OpenCode parsing
- Update ConfigFileService with OpenCode install/uninstall
- Investigate Kimi CLI config format (TOML-based)
- Document Kimi verification needed before implementation"
git push                      # Push to remote
```

---

**Implementation Time:**
- Phase 2 (OpenCode): ~3 hours actual (estimated 3-4 hours) ✅
- Phase 3 (Kimi): Investigation 1 hour, implementation pending verification

**Total New Clients Supported:**
- Phase 1: 3 clients (Qwen, iFlow, Minimax)
- Phase 2: 1 client (OpenCode)
- Phase 3: 1 client (Kimi - pending)
- **Total: 5 new clients when complete**
