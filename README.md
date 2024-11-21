# SirKingBinx's Roblox Code
This is a lot of code that I felt would be useful for other developers and noobies learning how to code for the first time. I have been a solo developer for almost 6 years
and have learned the entire Luau language from scratch.

For new Roblox developers looking for information and history on Roblox's coding, the [Luau repository](https://github.com/luau-lang/luau) may help you.

## Games Included
- **Crossroads (2018-2024)**: *Note: This contains portions of code from the project, it is still an active game*. Crossroads is a sandbox shooter game.
- **sdaorssorC (2020-2024)**: *Note: This contains portions of code from the project, it is still an active game*. Testing place for Crossroads
- **lolxd (2024)**: Pretty much a clone of *dingus*
- **Dimension Battle (2022-2024)**: Minigame-style fights with swords
- **Clockwork VR (2024)**: VR-experiment using spheres as controllers.
- **Metallium (2020)**: Infinite shooter
- **Metallium 2 (2023)**: Infinite shooter (but better)

## Projects
Along with the games, these projects are also hosted in this repository because they run on Roblox
- **statistics**: A long-term statistic analyzer.

## Licensing
All code in this repository (including code from mostly closed-source projects) is released under the MIT License. Under this license, you are free to:
- use this code in your own games
- change/modify the code
- distribute the code, changed or unchanged

However, the code must be licensed under the same license if changed.

## READMEs
### Statistics module
```
Stats module
(Last updated: August 27, 2020)
=======================
This is really a server statistics tracker. For a server's lifespan, it will track and keep up with any values you want and store them for servers and clients to use.

It is used in Crossroads to provide the server statistics panel and was originally designed for that.
Here is it's use cases:

- Players, to track a number of kills across the whole server
- Admins, to track the amount of reports of a specific player in the server
- Developers, to count runtime errors that are understandable

It is essentially variables++.

Functions
===============================
statistics.set(stat_name: string, value: any) -- Sets the given statistic. Returns true or false based on if it was successful.

statistics.get(stat_name: string) -- Gets the value of a statistic. Return the value, or "nil" if not found.

statistics.list() -- Returns the whole statistics list

Usage
===============================
When requiring the module, it will return the module itself as well as a unique version identifier.
It will look like this:

"binx-statistics-iden-X.X.X"

It is useful to make sure that you are using the expected version. You can ignore it completely as well.

Example
===============================
local stats_module = require(game.ReplicatedStorage.statistics)

function kill_happened()
    stats_module.set("kills", stats_module.get("kills") + 1)
end

function bullet_happened()
    stats_module.set("bullets fired", stats_module.get("bullets fired") + 1)
end
```