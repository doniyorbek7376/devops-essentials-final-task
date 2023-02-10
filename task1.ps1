param(
    [parameter(Mandatory)] [ipaddress] $ip_address_1,
    [parameter(Mandatory)] [ipaddress] $ip_address_2,
    [parameter(Mandatory)] [object] $network_mask
)

# Validates network-mask and converts to [ipadress]
function Test-NetworkMask([object] $mask) {
    if ($mask.GetType() -eq [int]) {
        # If mask is an integer, it should be in range [0, 32]
        if ($mask -lt 0 -or $mask -gt 32) {
            Throw "network_mask should be in range [0, 32]"
        }
        # convert integer to ip address
        [ipaddress] $subnet=0
        $shift = 64 - $mask
        
        if ($mask -ne 0) {
            $subnet = [ipaddress]::HostToNetworkOrder([int64]::MaxValue -shl $shift)
        }

        return $subnet
    }  
    
    # if mask is not an integer, it should be valid ipaddress
    # throws error if cannot convert
    try {
        return [ipaddress] $mask
    }
    catch {
        Throw "Invalid network mask"
    }
    
}

#check if two ip addresses share the network
function Test-SameNetwork([ipaddress] $ip1, [ipaddress] $ip2, [ipaddress] $subnet) {
    return ($ip1.Address -band $subnet.Address) -eq ($ip2.Address -band $subnet.Address)
}

[ipaddress] $subnet = Test-NetworkMask $network_mask

if (Test-SameNetwork $ip_address_1 $ip_address_2 $subnet) {
    Write-Output yes
} else {
    Write-Output no
}