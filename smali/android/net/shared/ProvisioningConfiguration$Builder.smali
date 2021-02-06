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

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/net/shared/ProvisioningConfiguration;

    invoke-direct {v0}, Landroid/net/shared/ProvisioningConfiguration;-><init>()V

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    return-void
.end method


# virtual methods
.method public build()Landroid/net/shared/ProvisioningConfiguration;
    .locals 2

    .line 233
    new-instance v0, Landroid/net/shared/ProvisioningConfiguration;

    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    invoke-direct {v0, v1}, Landroid/net/shared/ProvisioningConfiguration;-><init>(Landroid/net/shared/ProvisioningConfiguration;)V

    return-object v0
.end method

.method public withApfCapabilities(Landroid/net/apf/ApfCapabilities;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1
    .param p1, "apfCapabilities"    # Landroid/net/apf/ApfCapabilities;

    .line 166
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 167
    return-object p0
.end method

.method public withDisplayName(Ljava/lang/String;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1
    .param p1, "displayName"    # Ljava/lang/String;

    .line 206
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method public withInitialConfiguration(Landroid/net/shared/InitialConfiguration;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1
    .param p1, "initialConfig"    # Landroid/net/shared/InitialConfiguration;

    .line 150
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    .line 151
    return-object p0
.end method

.method public withLayer2Information(Landroid/net/shared/Layer2Information;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1
    .param p1, "layer2Info"    # Landroid/net/shared/Layer2Information;

    .line 225
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    .line 226
    return-object p0
.end method

.method public withNetwork(Landroid/net/Network;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .line 198
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 199
    return-object p0
.end method

.method public withPreDhcpAction()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 2

    .line 123
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    const/16 v1, 0x4650

    iput v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    .line 124
    return-object p0
.end method

.method public withPreDhcpAction(I)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1
    .param p1, "dhcpActionTimeoutMs"    # I

    .line 134
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iput p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    .line 135
    return-object p0
.end method

.method public withPreconnection()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 2

    .line 142
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    .line 143
    return-object p0
.end method

.method public withProvisioningTimeoutMs(I)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1
    .param p1, "timeoutMs"    # I

    .line 174
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iput p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 175
    return-object p0
.end method

.method public withRandomMacAddress()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 2

    .line 182
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x0

    iput v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 183
    return-object p0
.end method

.method public withScanResultInfo(Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1
    .param p1, "scanResultInfo"    # Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    .line 217
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    .line 218
    return-object p0
.end method

.method public withStableMacAddress()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 2

    .line 190
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x2

    iput v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 191
    return-object p0
.end method

.method public withStaticConfiguration(Landroid/net/StaticIpConfiguration;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1
    .param p1, "staticConfig"    # Landroid/net/StaticIpConfiguration;

    .line 158
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 159
    return-object p0
.end method

.method public withoutIPv4()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 2

    .line 88
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    .line 89
    return-object p0
.end method

.method public withoutIPv6()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 2

    .line 96
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    .line 97
    return-object p0
.end method

.method public withoutIpReachabilityMonitor()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 2

    .line 114
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 115
    return-object p0
.end method

.method public withoutMultinetworkPolicyTracker()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 2

    .line 105
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 106
    return-object p0
.end method
