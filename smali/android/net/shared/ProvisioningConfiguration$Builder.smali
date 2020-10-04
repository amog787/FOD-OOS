.class public Landroid/net/shared/ProvisioningConfiguration$Builder;
.super Ljava/lang/Object;
.source "ProvisioningConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/shared/ProvisioningConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected mConfig:Landroid/net/shared/ProvisioningConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/net/shared/ProvisioningConfiguration;

    invoke-direct {v0}, Landroid/net/shared/ProvisioningConfiguration;-><init>()V

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    return-void
.end method


# virtual methods
.method public build()Landroid/net/shared/ProvisioningConfiguration;
    .locals 2

    .line 191
    new-instance v0, Landroid/net/shared/ProvisioningConfiguration;

    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    invoke-direct {v0, v1}, Landroid/net/shared/ProvisioningConfiguration;-><init>(Landroid/net/shared/ProvisioningConfiguration;)V

    return-object v0
.end method

.method public withApfCapabilities(Landroid/net/apf/ApfCapabilities;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1
    .param p1, "apfCapabilities"    # Landroid/net/apf/ApfCapabilities;

    .line 143
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 144
    return-object p0
.end method

.method public withDisplayName(Ljava/lang/String;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1
    .param p1, "displayName"    # Ljava/lang/String;

    .line 183
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 184
    return-object p0
.end method

.method public withInitialConfiguration(Landroid/net/shared/InitialConfiguration;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1
    .param p1, "initialConfig"    # Landroid/net/shared/InitialConfiguration;

    .line 127
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    .line 128
    return-object p0
.end method

.method public withNetwork(Landroid/net/Network;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .line 175
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 176
    return-object p0
.end method

.method public withPreDhcpAction()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 2

    .line 108
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    const v1, 0x8ca0

    iput v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    .line 109
    return-object p0
.end method

.method public withPreDhcpAction(I)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1
    .param p1, "dhcpActionTimeoutMs"    # I

    .line 119
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iput p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    .line 120
    return-object p0
.end method

.method public withProvisioningTimeoutMs(I)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1
    .param p1, "timeoutMs"    # I

    .line 151
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iput p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 152
    return-object p0
.end method

.method public withRandomMacAddress()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 2

    .line 159
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x0

    iput v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 160
    return-object p0
.end method

.method public withStableMacAddress()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 2

    .line 167
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x2

    iput v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 168
    return-object p0
.end method

.method public withStaticConfiguration(Landroid/net/StaticIpConfiguration;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1
    .param p1, "staticConfig"    # Landroid/net/StaticIpConfiguration;

    .line 135
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 136
    return-object p0
.end method

.method public withoutIPv4()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 2

    .line 73
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    .line 74
    return-object p0
.end method

.method public withoutIPv6()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 2

    .line 81
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    .line 82
    return-object p0
.end method

.method public withoutIpReachabilityMonitor()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 2

    .line 99
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 100
    return-object p0
.end method

.method public withoutMultinetworkPolicyTracker()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 2

    .line 90
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 91
    return-object p0
.end method
