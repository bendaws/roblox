-- place in ReplicatedStorage
-- game.ReplicatedStorage.statistics (ModuleScript)

local statistics = {
    --[[
    Here is some example statistics syntax:

    {
        name = "coins",
        value = 0
    },
    ]]
}
local stats_to_track = {}

function statistics.set(stat_name: string, value: any): boolean
    local hasSet = false

    for _, stat in statistics do
        if stat.name == stat_name then
            stat.value = value or nil
            hasSet = true
        end
    end

    return hasSet
end

function statistics.get(stat_name: string): boolean
    for _, stat in statistics do
        if stat.name == stat_name then
            return stat.value
        end
    end

    return nil
end

function statistics.list()
    return stats_to_track
end

return statistics, "binx-statistics-iden-1.0.0"