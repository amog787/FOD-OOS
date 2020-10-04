.class public Lcom/android/server/connectivity/DnsManager;
.super Ljava/lang/Object;
.source "DnsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;,
        Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;
    }
.end annotation


# static fields
.field private static final DNS_RESOLVER_DEFAULT_MAX_SAMPLES:I = 0x40

.field private static final DNS_RESOLVER_DEFAULT_MIN_SAMPLES:I = 0x8

.field private static final DNS_RESOLVER_DEFAULT_SAMPLE_VALIDITY_SECONDS:I = 0x708

.field private static final DNS_RESOLVER_DEFAULT_SUCCESS_THRESHOLD_PERCENT:I = 0x19

.field private static final PRIVATE_DNS_OFF:Landroid/net/shared/PrivateDnsConfig;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDnsResolver:Landroid/net/IDnsResolver;

.field private mMaxSamples:I

.field private mMinSamples:I

.field private mNumDnsEntries:I

.field private final mPrivateDnsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/net/shared/PrivateDnsConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivateDnsMode:Ljava/lang/String;

.field private mPrivateDnsSpecifier:Ljava/lang/String;

.field private final mPrivateDnsValidationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleValidity:I

.field private mSuccessThreshold:I

.field private final mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    const-class v0, Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    .line 116
    new-instance v0, Landroid/net/shared/PrivateDnsConfig;

    invoke-direct {v0}, Landroid/net/shared/PrivateDnsConfig;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/DnsManager;->PRIVATE_DNS_OFF:Landroid/net/shared/PrivateDnsConfig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/IDnsResolver;Lcom/android/server/connectivity/MockableSystemProperties;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "dnsResolver"    # Landroid/net/IDnsResolver;
    .param p3, "sp"    # Lcom/android/server/connectivity/MockableSystemProperties;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/android/server/connectivity/DnsManager;->mContext:Landroid/content/Context;

    .line 251
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 252
    iput-object p2, p0, Lcom/android/server/connectivity/DnsManager;->mDnsResolver:Landroid/net/IDnsResolver;

    .line 253
    iput-object p3, p0, Lcom/android/server/connectivity/DnsManager;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/Map;

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    .line 259
    return-void
.end method

.method private flushVmDnsCache()V
    .locals 5

    .line 392
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLEAR_DNS_CACHE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 397
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 398
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 400
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/DnsManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 403
    nop

    .line 404
    return-void

    .line 402
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private static getDomainStrings(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "domains"    # Ljava/lang/String;

    .line 462
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getIntSetting(Ljava/lang/String;I)I
    .locals 1
    .param p1, "which"    # Ljava/lang/String;
    .param p2, "dflt"    # I

    .line 437
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPrivateDnsConfig(Landroid/content/ContentResolver;)Landroid/net/shared/PrivateDnsConfig;
    .locals 5
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 125
    invoke-static {p0}, Lcom/android/server/connectivity/DnsManager;->getPrivateDnsMode(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "mode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 129
    .local v1, "useTls":Z
    :goto_0
    const-string v2, "hostname"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    const-string/jumbo v2, "private_dns_specifier"

    invoke-static {p0, v2}, Lcom/android/server/connectivity/DnsManager;->getStringSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "specifier":Ljava/lang/String;
    new-instance v3, Landroid/net/shared/PrivateDnsConfig;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/net/shared/PrivateDnsConfig;-><init>(Ljava/lang/String;[Ljava/net/InetAddress;)V

    return-object v3

    .line 134
    .end local v2    # "specifier":Ljava/lang/String;
    :cond_1
    new-instance v2, Landroid/net/shared/PrivateDnsConfig;

    invoke-direct {v2, v1}, Landroid/net/shared/PrivateDnsConfig;-><init>(Z)V

    return-object v2
.end method

.method private static getPrivateDnsMode(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 451
    const-string/jumbo v0, "private_dns_mode"

    invoke-static {p0, v0}, Lcom/android/server/connectivity/DnsManager;->getStringSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "mode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "private_dns_default_mode"

    invoke-static {p0, v1}, Lcom/android/server/connectivity/DnsManager;->getStringSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "off"

    .line 454
    :cond_1
    return-object v0
.end method

.method public static getPrivateDnsSettingsUris()[Landroid/net/Uri;
    .locals 3

    .line 138
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/Uri;

    .line 139
    const-string/jumbo v1, "private_dns_default_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 140
    const-string/jumbo v1, "private_dns_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 141
    const-string/jumbo v1, "private_dns_specifier"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 138
    return-object v0
.end method

.method private static getStringSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "which"    # Ljava/lang/String;

    .line 458
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setDnsConfigurationForNetwork$0(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    .locals 1
    .param p0, "lp"    # Landroid/net/LinkProperties;
    .param p1, "ip"    # Ljava/net/InetAddress;

    .line 336
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties;->isReachable(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method private setNetDnsProperty(ILjava/lang/String;)V
    .locals 4
    .param p1, "which"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "net.dns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "key":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/DnsManager;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/connectivity/MockableSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    goto :goto_0

    .line 445
    :catch_0
    move-exception v1

    .line 446
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    const-string v3, "Error setting unsupported net.dns property: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private updateParametersSettings()V
    .locals 6

    .line 407
    const/16 v0, 0x708

    const-string v1, "dns_resolver_sample_validity_seconds"

    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/DnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/DnsManager;->mSampleValidity:I

    .line 410
    iget v1, p0, Lcom/android/server/connectivity/DnsManager;->mSampleValidity:I

    const-string v2, ", using default="

    if-ltz v1, :cond_0

    const v3, 0xffff

    if-le v1, v3, :cond_1

    .line 411
    :cond_0
    sget-object v1, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid sampleValidity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/connectivity/DnsManager;->mSampleValidity:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iput v0, p0, Lcom/android/server/connectivity/DnsManager;->mSampleValidity:I

    .line 416
    :cond_1
    const/16 v0, 0x19

    const-string v1, "dns_resolver_success_threshold_percent"

    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/DnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/DnsManager;->mSuccessThreshold:I

    .line 419
    iget v1, p0, Lcom/android/server/connectivity/DnsManager;->mSuccessThreshold:I

    if-ltz v1, :cond_2

    const/16 v3, 0x64

    if-le v1, v3, :cond_3

    .line 420
    :cond_2
    sget-object v1, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid successThreshold="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/connectivity/DnsManager;->mSuccessThreshold:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iput v0, p0, Lcom/android/server/connectivity/DnsManager;->mSuccessThreshold:I

    .line 425
    :cond_3
    const/16 v0, 0x8

    const-string v1, "dns_resolver_min_samples"

    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/DnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/DnsManager;->mMinSamples:I

    .line 426
    const/16 v1, 0x40

    const-string v2, "dns_resolver_max_samples"

    invoke-direct {p0, v2, v1}, Lcom/android/server/connectivity/DnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/connectivity/DnsManager;->mMaxSamples:I

    .line 427
    iget v2, p0, Lcom/android/server/connectivity/DnsManager;->mMinSamples:I

    if-ltz v2, :cond_4

    iget v3, p0, Lcom/android/server/connectivity/DnsManager;->mMaxSamples:I

    if-gt v2, v3, :cond_4

    if-le v3, v1, :cond_5

    .line 428
    :cond_4
    sget-object v2, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid sample count (min, max)=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/connectivity/DnsManager;->mMinSamples:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/connectivity/DnsManager;->mMaxSamples:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "), using default=("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iput v0, p0, Lcom/android/server/connectivity/DnsManager;->mMinSamples:I

    .line 432
    iput v1, p0, Lcom/android/server/connectivity/DnsManager;->mMaxSamples:I

    .line 434
    :cond_5
    return-void
.end method


# virtual methods
.method public getPrivateDnsConfig()Landroid/net/shared/PrivateDnsConfig;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/server/connectivity/DnsManager;->getPrivateDnsConfig(Landroid/content/ContentResolver;)Landroid/net/shared/PrivateDnsConfig;

    move-result-object v0

    return-object v0
.end method

.method public removeNetwork(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 266
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/Map;

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    return-void
.end method

.method public setDefaultDnsSystemProperties(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 377
    .local p1, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v0, 0x0

    .line 378
    .local v0, "last":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 379
    .local v2, "dns":Ljava/net/InetAddress;
    add-int/lit8 v0, v0, 0x1

    .line 380
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/connectivity/DnsManager;->setNetDnsProperty(ILjava/lang/String;)V

    .line 381
    .end local v2    # "dns":Ljava/net/InetAddress;
    goto :goto_0

    .line 382
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/android/server/connectivity/DnsManager;->mNumDnsEntries:I

    if-gt v1, v2, :cond_1

    .line 383
    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/DnsManager;->setNetDnsProperty(ILjava/lang/String;)V

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 385
    .end local v1    # "i":I
    :cond_1
    iput v0, p0, Lcom/android/server/connectivity/DnsManager;->mNumDnsEntries:I

    .line 386
    return-void
.end method

.method public setDnsConfigurationForNetwork(ILandroid/net/LinkProperties;Z)V
    .locals 9
    .param p1, "netId"    # I
    .param p2, "lp"    # Landroid/net/LinkProperties;
    .param p3, "isDefaultNetwork"    # Z

    .line 310
    invoke-direct {p0}, Lcom/android/server/connectivity/DnsManager;->updateParametersSettings()V

    .line 311
    new-instance v0, Landroid/net/ResolverParamsParcel;

    invoke-direct {v0}, Landroid/net/ResolverParamsParcel;-><init>()V

    .line 320
    .local v0, "paramsParcel":Landroid/net/ResolverParamsParcel;
    iget-object v1, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/server/connectivity/DnsManager;->PRIVATE_DNS_OFF:Landroid/net/shared/PrivateDnsConfig;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/shared/PrivateDnsConfig;

    .line 323
    .local v1, "privateDnsCfg":Landroid/net/shared/PrivateDnsConfig;
    iget-boolean v2, v1, Landroid/net/shared/PrivateDnsConfig;->useTls:Z

    .line 324
    .local v2, "useTls":Z
    invoke-virtual {v1}, Landroid/net/shared/PrivateDnsConfig;->inStrictMode()Z

    move-result v3

    .line 325
    .local v3, "strictMode":Z
    iput p1, v0, Landroid/net/ResolverParamsParcel;->netId:I

    .line 326
    iget v4, p0, Lcom/android/server/connectivity/DnsManager;->mSampleValidity:I

    iput v4, v0, Landroid/net/ResolverParamsParcel;->sampleValiditySeconds:I

    .line 327
    iget v4, p0, Lcom/android/server/connectivity/DnsManager;->mSuccessThreshold:I

    iput v4, v0, Landroid/net/ResolverParamsParcel;->successThreshold:I

    .line 328
    iget v4, p0, Lcom/android/server/connectivity/DnsManager;->mMinSamples:I

    iput v4, v0, Landroid/net/ResolverParamsParcel;->minSamples:I

    .line 329
    iget v4, p0, Lcom/android/server/connectivity/DnsManager;->mMaxSamples:I

    iput v4, v0, Landroid/net/ResolverParamsParcel;->maxSamples:I

    .line 330
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/ResolverParamsParcel;->servers:[Ljava/lang/String;

    .line 331
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/connectivity/DnsManager;->getDomainStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/ResolverParamsParcel;->domains:[Ljava/lang/String;

    .line 332
    if-eqz v3, :cond_0

    iget-object v4, v1, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    iput-object v4, v0, Landroid/net/ResolverParamsParcel;->tlsName:Ljava/lang/String;

    .line 333
    nop

    .line 334
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v5, v1, Landroid/net/shared/PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    .line 335
    invoke-static {v5}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/server/connectivity/-$$Lambda$DnsManager$Z_oEyRSp0wthIcVTcqKDoAJRe6Q;

    invoke-direct {v6, p2}, Lcom/android/server/connectivity/-$$Lambda$DnsManager$Z_oEyRSp0wthIcVTcqKDoAJRe6Q;-><init>(Landroid/net/LinkProperties;)V

    .line 336
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 337
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 334
    invoke-static {v5}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 338
    :cond_1
    if-eqz v2, :cond_2

    iget-object v5, v0, Landroid/net/ResolverParamsParcel;->servers:[Ljava/lang/String;

    goto :goto_1

    .line 339
    :cond_2
    new-array v5, v4, [Ljava/lang/String;

    :goto_1
    iput-object v5, v0, Landroid/net/ResolverParamsParcel;->tlsServers:[Ljava/lang/String;

    .line 340
    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, v0, Landroid/net/ResolverParamsParcel;->tlsFingerprints:[Ljava/lang/String;

    .line 343
    if-eqz v2, :cond_4

    .line 344
    iget-object v5, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 345
    iget-object v5, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;-><init>(Lcom/android/server/connectivity/DnsManager$1;)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_3
    iget-object v5, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;

    iget-object v6, v0, Landroid/net/ResolverParamsParcel;->tlsServers:[Ljava/lang/String;

    iget-object v7, v0, Landroid/net/ResolverParamsParcel;->tlsName:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->access$400(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 350
    :cond_4
    iget-object v5, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :goto_2
    sget-object v5, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    const/16 v6, 0xb

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v0, Landroid/net/ResolverParamsParcel;->netId:I

    .line 354
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x1

    iget-object v7, v0, Landroid/net/ResolverParamsParcel;->servers:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x2

    iget-object v7, v0, Landroid/net/ResolverParamsParcel;->domains:[Ljava/lang/String;

    .line 355
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x3

    iget v7, v0, Landroid/net/ResolverParamsParcel;->sampleValiditySeconds:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x4

    iget v7, v0, Landroid/net/ResolverParamsParcel;->successThreshold:I

    .line 356
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x5

    iget v7, v0, Landroid/net/ResolverParamsParcel;->minSamples:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x6

    iget v7, v0, Landroid/net/ResolverParamsParcel;->maxSamples:I

    .line 357
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x7

    iget v7, v0, Landroid/net/ResolverParamsParcel;->baseTimeoutMsec:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/16 v4, 0x8

    iget v7, v0, Landroid/net/ResolverParamsParcel;->retryCount:I

    .line 358
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/16 v4, 0x9

    iget-object v7, v0, Landroid/net/ResolverParamsParcel;->tlsName:Ljava/lang/String;

    aput-object v7, v6, v4

    const/16 v4, 0xa

    iget-object v7, v0, Landroid/net/ResolverParamsParcel;->tlsServers:[Ljava/lang/String;

    .line 359
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 353
    const-string/jumbo v4, "setDnsConfigurationForNetwork(%d, %s, %s, %d, %d, %d, %d, %d, %d, %s, %s)"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/DnsManager;->mDnsResolver:Landroid/net/IDnsResolver;

    invoke-interface {v4, v0}, Landroid/net/IDnsResolver;->setResolverConfiguration(Landroid/net/ResolverParamsParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    nop

    .line 372
    if-eqz p3, :cond_5

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/connectivity/DnsManager;->setDefaultDnsSystemProperties(Ljava/util/Collection;)V

    .line 373
    :cond_5
    invoke-direct {p0}, Lcom/android/server/connectivity/DnsManager;->flushVmDnsCache()V

    .line 374
    return-void

    .line 363
    :catch_0
    move-exception v4

    .line 364
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error setting DNS configuration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-void
.end method

.method public updatePrivateDns(Landroid/net/Network;Landroid/net/shared/PrivateDnsConfig;)Landroid/net/shared/PrivateDnsConfig;
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "cfg"    # Landroid/net/shared/PrivateDnsConfig;

    .line 271
    sget-object v0, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePrivateDns("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    if-eqz p2, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/Map;

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/shared/PrivateDnsConfig;

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/Map;

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/shared/PrivateDnsConfig;

    .line 272
    :goto_0
    return-object v0
.end method

.method public updatePrivateDnsStatus(ILandroid/net/LinkProperties;)V
    .locals 8
    .param p1, "netId"    # I
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .line 280
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/connectivity/DnsManager;->PRIVATE_DNS_OFF:Landroid/net/shared/PrivateDnsConfig;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/shared/PrivateDnsConfig;

    .line 283
    .local v0, "privateDnsCfg":Landroid/net/shared/PrivateDnsConfig;
    iget-boolean v1, v0, Landroid/net/shared/PrivateDnsConfig;->useTls:Z

    .line 285
    .local v1, "useTls":Z
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 286
    .local v3, "statuses":Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;
    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->access$000(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v5

    .line 287
    .local v6, "validated":Z
    :goto_1
    invoke-virtual {v0}, Landroid/net/shared/PrivateDnsConfig;->inStrictMode()Z

    move-result v7

    .line 288
    .local v7, "strictMode":Z
    if-eqz v7, :cond_2

    iget-object v2, v0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    .line 289
    .local v2, "tlsHostname":Ljava/lang/String;
    :cond_2
    if-nez v7, :cond_4

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    .line 291
    .local v4, "usingPrivateDns":Z
    :cond_4
    :goto_2
    invoke-virtual {p2, v4}, Landroid/net/LinkProperties;->setUsePrivateDns(Z)V

    .line 292
    invoke-virtual {p2, v2}, Landroid/net/LinkProperties;->setPrivateDnsServerName(Ljava/lang/String;)V

    .line 293
    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 294
    invoke-static {v3, p2}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->access$100(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    goto :goto_3

    .line 296
    :cond_5
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p2, v5}, Landroid/net/LinkProperties;->setValidatedPrivateDnsServers(Ljava/util/Collection;)V

    .line 298
    :goto_3
    return-void
.end method

.method public updatePrivateDnsValidation(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V
    .locals 2
    .param p1, "update"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;

    .line 301
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    iget v1, p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;->netId:I

    .line 302
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;

    .line 303
    .local v0, "statuses":Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;
    if-nez v0, :cond_0

    return-void

    .line 304
    :cond_0
    invoke-static {v0, p1}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->access$200(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V

    .line 305
    return-void
.end method
