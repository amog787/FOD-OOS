.class public Landroid/net/shared/ProvisioningConfiguration;
.super Ljava/lang/Object;
.source "ProvisioningConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;,
        Landroid/net/shared/ProvisioningConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT_MS:I = 0x4650

.field private static final TAG:Ljava/lang/String; = "ProvisioningConfiguration"


# instance fields
.field public mApfCapabilities:Landroid/net/apf/ApfCapabilities;

.field public mDisplayName:Ljava/lang/String;

.field public mEnableIPv4:Z

.field public mEnableIPv6:Z

.field public mEnablePreconnection:Z

.field public mIPv6AddrGenMode:I

.field public mInitialConfig:Landroid/net/shared/InitialConfiguration;

.field public mLayer2Info:Landroid/net/shared/Layer2Information;

.field public mNetwork:Landroid/net/Network;

.field public mProvisioningTimeoutMs:I

.field public mRequestedPreDhcpActionMs:I

.field public mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

.field public mStaticIpConfig:Landroid/net/StaticIpConfiguration;

.field public mUsingIpReachabilityMonitor:Z

.field public mUsingMultinetworkPolicyTracker:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    .line 419
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    .line 420
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    .line 421
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 422
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 427
    const/16 v0, 0x4650

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 428
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 430
    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 434
    return-void
.end method

.method public constructor <init>(Landroid/net/shared/ProvisioningConfiguration;)V
    .locals 2
    .param p1, "other"    # Landroid/net/shared/ProvisioningConfiguration;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    .line 419
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    .line 420
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    .line 421
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 422
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 427
    const/16 v0, 0x4650

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 428
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 430
    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 437
    iget-boolean v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    iput-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    .line 438
    iget-boolean v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    iput-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    .line 439
    iget-boolean v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    iput-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    .line 440
    iget-boolean v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    iput-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 441
    iget-boolean v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    iput-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 442
    iget v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    iput v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    .line 443
    iget-object v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    invoke-static {v1}, Landroid/net/shared/InitialConfiguration;->copy(Landroid/net/shared/InitialConfiguration;)Landroid/net/shared/InitialConfiguration;

    move-result-object v1

    iput-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    .line 444
    iget-object v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    if-nez v1, :cond_0

    .line 445
    goto :goto_0

    .line 446
    :cond_0
    new-instance v0, Landroid/net/StaticIpConfiguration;

    iget-object v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-direct {v0, v1}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    :goto_0
    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 447
    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 448
    iget v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 449
    iget v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 450
    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 451
    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 452
    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    .line 453
    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    .line 454
    return-void
.end method

.method public static fromStableParcelable(Landroid/net/ProvisioningConfigurationParcelable;)Landroid/net/shared/ProvisioningConfiguration;
    .locals 3
    .param p0, "p"    # Landroid/net/ProvisioningConfigurationParcelable;

    .line 486
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 487
    :cond_0
    new-instance v1, Landroid/net/shared/ProvisioningConfiguration;

    invoke-direct {v1}, Landroid/net/shared/ProvisioningConfiguration;-><init>()V

    .line 488
    .local v1, "config":Landroid/net/shared/ProvisioningConfiguration;
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv4:Z

    iput-boolean v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    .line 489
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv6:Z

    iput-boolean v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    .line 490
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enablePreconnection:Z

    iput-boolean v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    .line 491
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingMultinetworkPolicyTracker:Z

    iput-boolean v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 492
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingIpReachabilityMonitor:Z

    iput-boolean v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 493
    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->requestedPreDhcpActionMs:I

    iput v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    .line 494
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->initialConfig:Landroid/net/InitialConfigurationParcelable;

    invoke-static {v2}, Landroid/net/shared/InitialConfiguration;->fromStableParcelable(Landroid/net/InitialConfigurationParcelable;)Landroid/net/shared/InitialConfiguration;

    move-result-object v2

    iput-object v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    .line 495
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    if-nez v2, :cond_1

    .line 496
    goto :goto_0

    .line 497
    :cond_1
    new-instance v0, Landroid/net/StaticIpConfiguration;

    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-direct {v0, v2}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    :goto_0
    iput-object v0, v1, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 498
    iget-object v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    iput-object v0, v1, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 499
    iget v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->provisioningTimeoutMs:I

    iput v0, v1, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 500
    iget v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6AddrGenMode:I

    iput v0, v1, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 501
    iget-object v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->network:Landroid/net/Network;

    iput-object v0, v1, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 502
    iget-object v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->displayName:Ljava/lang/String;

    iput-object v0, v1, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 503
    iget-object v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->scanResultInfo:Landroid/net/ScanResultInfoParcelable;

    invoke-static {v0}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->fromStableParcelable(Landroid/net/ScanResultInfoParcelable;)Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    move-result-object v0

    iput-object v0, v1, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    .line 504
    iget-object v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->layer2Info:Landroid/net/Layer2InformationParcelable;

    invoke-static {v0}, Landroid/net/shared/Layer2Information;->fromStableParcelable(Landroid/net/Layer2InformationParcelable;)Landroid/net/shared/Layer2Information;

    move-result-object v0

    iput-object v0, v1, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    .line 505
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 531
    instance-of v0, p1, Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 532
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/shared/ProvisioningConfiguration;

    .line 533
    .local v0, "other":Landroid/net/shared/ProvisioningConfiguration;
    iget-boolean v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    iget-boolean v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    iget-boolean v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    iget-boolean v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

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

    .line 539
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    iget-object v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 540
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget-object v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 541
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

    .line 544
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 545
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    iget-object v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    .line 546
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    iget-object v3, v0, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    .line 547
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 533
    :goto_0
    return v1
.end method

.method public isValid()Z
    .locals 1

    .line 551
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
    .locals 4

    .line 460
    new-instance v0, Landroid/net/ProvisioningConfigurationParcelable;

    invoke-direct {v0}, Landroid/net/ProvisioningConfigurationParcelable;-><init>()V

    .line 461
    .local v0, "p":Landroid/net/ProvisioningConfigurationParcelable;
    iget-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    iput-boolean v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv4:Z

    .line 462
    iget-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    iput-boolean v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv6:Z

    .line 463
    iget-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    iput-boolean v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->enablePreconnection:Z

    .line 464
    iget-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    iput-boolean v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->usingMultinetworkPolicyTracker:Z

    .line 465
    iget-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    iput-boolean v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->usingIpReachabilityMonitor:Z

    .line 466
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    iput v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->requestedPreDhcpActionMs:I

    .line 467
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

    .line 468
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    if-nez v1, :cond_1

    .line 469
    move-object v1, v2

    goto :goto_1

    .line 470
    :cond_1
    new-instance v1, Landroid/net/StaticIpConfiguration;

    iget-object v3, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-direct {v1, v3}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    :goto_1
    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 471
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 472
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    iput v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->provisioningTimeoutMs:I

    .line 473
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    iput v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6AddrGenMode:I

    .line 474
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->network:Landroid/net/Network;

    .line 475
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->displayName:Ljava/lang/String;

    .line 476
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->toStableParcelable()Landroid/net/ScanResultInfoParcelable;

    move-result-object v1

    :goto_2
    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->scanResultInfo:Landroid/net/ScanResultInfoParcelable;

    .line 477
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroid/net/shared/Layer2Information;->toStableParcelable()Landroid/net/Layer2InformationParcelable;

    move-result-object v2

    :goto_3
    iput-object v2, v0, Landroid/net/ProvisioningConfigurationParcelable;->layer2Info:Landroid/net/Layer2InformationParcelable;

    .line 478
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 510
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

    .line 511
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

    .line 512
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEnablePreconnection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 513
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

    .line 514
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

    .line 515
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

    .line 516
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

    .line 517
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

    .line 518
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

    .line 519
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

    .line 520
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

    .line 521
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

    .line 522
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

    .line 523
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mScanResultInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 524
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLayer2Info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 525
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    .line 510
    return-object v0
.end method
