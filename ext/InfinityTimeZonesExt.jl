module InfinityTimeZonesExt

using Dates: TimeType
using Infinity: InfExtendedTime
using TimeZones: ZonedDateTime

# Promote Rule for ZonedDateTime and InfExtendedTime
Base.promote_rule(::Type{InfExtendedTime{T}}, ::Type{S}) where {T<:TimeType, S<:ZonedDateTime} = InfExtendedTime(promote_type(T, S))

end
