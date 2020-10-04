.class public Landroid/net/shared/ProvisioningConfiguration;
.super Ljava/lang/Object;
.source "ProvisioningConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/shared/ProvisioningConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT_MS:I = 0x8ca0


# instance fields
.field public mApfCapabilities:Landroid/net/apf/ApfCapabilities;

.field public mDiscoverSent:Z

.field public mDisplayName:Ljava/lang/String;

.field public mEnableIPv4:Z

.field public mEnableIPv6:Z

.field public mIPv6AddrGenMode:I

.field public mInitialConfig:Landroid/net/shared/InitialConfiguration;

.field public mNetwork:Landroid/net/Network;

.field public mProvisioningTimeoutMs:I

.field public mRapidCommit:Z

.field public mRequestedPreDhcpActionMs:I

.field public mStaticIpConfig:Landroid/net/StaticIpConfiguration;

.field public mUsingIpReachabilityMonitor:Z

.field public mUsingMultinetworkPolicyTracker:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    .line 196
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    .line 197
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 198
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 203
    const v0, 0x8ca0

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 204
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 208
    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/net/shared/ProvisioningConfiguration;)V
    .locals 2
    .param p1, "other"    # Landroid/net/shared/ProvisioningConfiguration;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    .line 196
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    .line 197
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 198
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 203
    const v0, 0x8ca0

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 204
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 208
    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 213
    iget-boolean v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    iput-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    .line 214
    iget-boolean v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    iput-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    .line 215
    iget-boolean v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    iput-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 216
    iget-boolean v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    iput-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 217
    iget v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    iput v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    .line 218
    iget-object v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    invoke-static {v1}, Landroid/net/shared/InitialConfiguration;->copy(Landroid/net/shared/InitialConfiguration;)Landroid/net/shared/InitialConfiguration;

    move-result-object v1

    iput-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    .line 219
    iget-object v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    if-nez v1, :cond_0

    .line 220
    goto :goto_0

    .line 221
    :cond_0
    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0, v1}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    :goto_0
    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 222
    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 223
    iget v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 224
    iget-boolean v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mRapidCommit:Z

    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mRapidCommit:Z

    .line 225
    iget-boolean v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mDiscoverSent:Z

    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mDiscoverSent:Z

    .line 226
    iget v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 227
    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 228
    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public static fromStableParcelable(Landroid/net/ProvisioningConfigurationParcelable;)Landroid/net/shared/ProvisioningConfiguration;
    .locals 3
    .param p0, "p"    # Landroid/net/ProvisioningConfigurationParcelable;

    .line 258
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 259
    :cond_0
    new-instance v1, Landroid/net/shared/ProvisioningConfiguration;

    invoke-direct {v1}, Landroid/net/shared/ProvisioningConfiguration;-><init>()V

    .line 260
    .local v1, "config":Landroid/net/shared/ProvisioningConfiguration;
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv4:Z

    iput-boolean v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    .line 261
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv6:Z

    iput-boolean v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    .line 262
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingMultinetworkPolicyTracker:Z

    iput-boolean v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 263
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingIpReachabilityMonitor:Z

    iput-boolean v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 264
    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->requestedPreDhcpActionMs:I

    iput v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    .line 265
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->initialConfig:Landroid/net/InitialConfigurationParcelable;

    invoke-static {v2}, Landroid/net/shared/InitialConfiguration;->fromStableParcelable(Landroid/net/InitialConfigurationParcelable;)Landroid/net/shared/InitialConfiguration;

    move-result-object v2

    iput-object v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    .line 266
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    if-nez v2, :cond_1

    .line 267
    goto :goto_0

    .line 268
    :cond_1
    new-instance v0, Landroid/net/StaticIpConfiguration;

    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-direct {v0, v2}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    :goto_0
    iput-object v0, v1, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 269
    iget-object v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    iput-object v0, v1, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 270
    iget v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->provisioningTimeoutMs:I

    iput v0, v1, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 271
    iget v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6AddrGenMode:I

    iput v0, v1, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 272
    iget-object v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->network:Landroid/net/Network;

    iput-object v0, v1, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 273
    iget-object v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->displayName:Ljava/lang/String;

    iput-object v0, v1, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 274
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 297
    instance-of v0, p1, Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 298
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/shared/ProvisioningConfiguration;

    .line 299
    .local v0, "other":Landroid/net/shared/ProvisioningConfiguration;
    iget-boolean v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    iget-boolean v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    iget-boolean v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    iget-boolean v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    iget-boolean v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    iget v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    iget-object v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    .line 304
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    iget-object v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 305
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget-object v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 306
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    iget v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    iget v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    iget-object v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 309
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 310
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 299
    :goto_0
    return v1
.end method

.method public isValid()Z
    .locals 1

    .line 314
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/shared/InitialConfiguration;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toStableParcelable()Landroid/net/ProvisioningConfigurationParcelable;
    .locals 3

    .line 235
    new-instance v0, Landroid/net/ProvisioningConfigurationParcelable;

    invoke-direct {v0}, Landroid/net/ProvisioningConfigurationParcelable;-><init>()V

    .line 236
    .local v0, "p":Landroid/net/ProvisioningConfigurationParcelable;
    iget-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    iput-boolean v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv4:Z

    .line 237
    iget-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    iput-boolean v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv6:Z

    .line 238
    iget-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    iput-boolean v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->usingMultinetworkPolicyTracker:Z

    .line 239
    iget-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    iput-boolean v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->usingIpReachabilityMonitor:Z

    .line 240
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    iput v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->requestedPreDhcpActionMs:I

    .line 241
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/net/shared/InitialConfiguration;->toStableParcelable()Landroid/net/InitialConfigurationParcelable;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->initialConfig:Landroid/net/InitialConfigurationParcelable;

    .line 242
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    if-nez v1, :cond_1

    .line 243
    goto :goto_1

    .line 244
    :cond_1
    new-instance v2, Landroid/net/StaticIpConfiguration;

    invoke-direct {v2, v1}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    :goto_1
    iput-object v2, v0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 245
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 246
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    iput v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->provisioningTimeoutMs:I

    .line 247
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    iput v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6AddrGenMode:I

    .line 248
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->network:Landroid/net/Network;

    .line 249
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->displayName:Ljava/lang/String;

    .line 250
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 279
    new-instance v0, Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", "

    const-string/jumbo v3, "}"

    invoke-direct {v0, v2, v1, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEnableIPv4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEnableIPv6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mUsingMultinetworkPolicyTracker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mUsingIpReachabilityMonitor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRequestedPreDhcpActionMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mInitialConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mStaticIpConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mApfCapabilities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mProvisioningTimeoutMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIPv6AddrGenMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mNetwork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDisplayName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    return-object v0
.end method
