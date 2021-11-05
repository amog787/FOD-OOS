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

.field private static final ONEPLUS_BACKUP_PATH_HOSTS:Ljava/lang/String; = "/data/opinstantapp/instant/backup_hosts.txt"

.field private static final PRIVATE_DNS_OFF:Landroid/net/shared/PrivateDnsConfig;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDnsResolver:Landroid/net/IDnsResolver;

.field private final mLinkPropertiesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/net/LinkProperties;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxSamples:I

.field private mMinSamples:I

.field private mNumDnsEntries:I

.field private final mPrivateDnsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/net/shared/PrivateDnsConfig;",
            ">;"
        }
    .end annotation
.end field

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

.field private final mTransportsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    const-class v0, Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    .line 133
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

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p1, p0, Lcom/android/server/connectivity/DnsManager;->mContext:Landroid/content/Context;

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 274
    iput-object p2, p0, Lcom/android/server/connectivity/DnsManager;->mDnsResolver:Landroid/net/IDnsResolver;

    .line 275
    iput-object p3, p0, Lcom/android/server/connectivity/DnsManager;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    .line 276
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mLinkPropertiesMap:Ljava/util/Map;

    .line 279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mTransportsMap:Ljava/util/Map;

    .line 283
    return-void
.end method

.method private static getDomainStrings(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "domains"    # Ljava/lang/String;

    .line 524
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

    .line 499
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPrivateDnsConfig(Landroid/content/ContentResolver;)Landroid/net/shared/PrivateDnsConfig;
    .locals 5
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 147
    invoke-static {p0}, Lcom/android/server/connectivity/DnsManager;->getPrivateDnsMode(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 149
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

    .line 151
    .local v1, "useTls":Z
    :goto_0
    const-string v2, "hostname"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    const-string/jumbo v2, "private_dns_specifier"

    invoke-static {p0, v2}, Lcom/android/server/connectivity/DnsManager;->getStringSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "specifier":Ljava/lang/String;
    new-instance v3, Landroid/net/shared/PrivateDnsConfig;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/net/shared/PrivateDnsConfig;-><init>(Ljava/lang/String;[Ljava/net/InetAddress;)V

    return-object v3

    .line 156
    .end local v2    # "specifier":Ljava/lang/String;
    :cond_1
    new-instance v2, Landroid/net/shared/PrivateDnsConfig;

    invoke-direct {v2, v1}, Landroid/net/shared/PrivateDnsConfig;-><init>(Z)V

    return-object v2
.end method

.method private static getPrivateDnsMode(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 513
    const-string/jumbo v0, "private_dns_mode"

    invoke-static {p0, v0}, Lcom/android/server/connectivity/DnsManager;->getStringSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "mode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "private_dns_default_mode"

    invoke-static {p0, v1}, Lcom/android/server/connectivity/DnsManager;->getStringSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "off"

    .line 516
    :cond_1
    return-object v0
.end method

.method public static getPrivateDnsSettingsUris()[Landroid/net/Uri;
    .locals 3

    .line 160
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/Uri;

    .line 161
    const-string/jumbo v1, "private_dns_default_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 162
    const-string/jumbo v1, "private_dns_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 163
    const-string/jumbo v1, "private_dns_specifier"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 160
    return-object v0
.end method

.method private static getStringSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "which"    # Ljava/lang/String;

    .line 520
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$sendDnsConfigurationForNetwork$0(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    .locals 1
    .param p0, "lp"    # Landroid/net/LinkProperties;
    .param p1, "ip"    # Ljava/net/InetAddress;

    .line 395
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties;->isReachable(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method private setDnsRomFileParam(Ljava/lang/String;Landroid/net/ResolverParamsParcel;)V
    .locals 13
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "paramsParcel"    # Landroid/net/ResolverParamsParcel;

    .line 530
    sget-object v0, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const/4 v0, 0x0

    .line 532
    .local v0, "fr":Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 534
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 535
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    .line 536
    new-instance v3, Landroid/net/ResolverOptionsParcel;

    invoke-direct {v3}, Landroid/net/ResolverOptionsParcel;-><init>()V

    .line 537
    .local v3, "initOption":Landroid/net/ResolverOptionsParcel;
    new-array v5, v5, [Landroid/net/ResolverHostsParcel;

    iput-object v5, v3, Landroid/net/ResolverOptionsParcel;->hosts:[Landroid/net/ResolverHostsParcel;

    .line 538
    iget-object v5, v3, Landroid/net/ResolverOptionsParcel;->hosts:[Landroid/net/ResolverHostsParcel;

    new-instance v6, Landroid/net/ResolverHostsParcel;

    invoke-direct {v6}, Landroid/net/ResolverHostsParcel;-><init>()V

    aput-object v6, v5, v4

    .line 539
    iget-object v5, v3, Landroid/net/ResolverOptionsParcel;->hosts:[Landroid/net/ResolverHostsParcel;

    aget-object v5, v5, v4

    const-string/jumbo v6, "pddsafeguard1001.com"

    iput-object v6, v5, Landroid/net/ResolverHostsParcel;->hostName:Ljava/lang/String;

    .line 540
    iget-object v5, v3, Landroid/net/ResolverOptionsParcel;->hosts:[Landroid/net/ResolverHostsParcel;

    aget-object v4, v5, v4

    const-string v5, "127.0.0.1"

    iput-object v5, v4, Landroid/net/ResolverHostsParcel;->ipAddr:Ljava/lang/String;

    .line 541
    iput-object v3, p2, Landroid/net/ResolverParamsParcel;->resolverOptions:Landroid/net/ResolverOptionsParcel;

    .line 542
    sget-object v4, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "initOption 1 file does not exist"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    if-eqz v1, :cond_0

    .line 589
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 592
    goto :goto_0

    .line 590
    :catch_0
    move-exception v4

    .line 591
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 543
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void

    .line 545
    .end local v3    # "initOption":Landroid/net/ResolverOptionsParcel;
    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 546
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v3

    .line 548
    const/4 v3, 0x0

    .line 549
    .local v3, "hosts_size":I
    const/4 v6, 0x2

    new-array v7, v6, [I

    aput v6, v7, v5

    const/16 v8, 0xa

    aput v8, v7, v4

    const-class v9, Ljava/lang/String;

    invoke-static {v9, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Ljava/lang/String;

    .line 550
    .local v7, "file_store":[[Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .local v10, "line":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 551
    const-string v9, "\\s+"

    invoke-virtual {v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 552
    .local v9, "arr":[Ljava/lang/String;
    array-length v11, v9

    if-ne v11, v6, :cond_2

    .line 553
    aget-object v11, v7, v3

    aget-object v12, v9, v4

    aput-object v12, v11, v4

    .line 554
    aget-object v11, v7, v3

    aget-object v12, v9, v5

    aput-object v12, v11, v5

    .line 555
    add-int/lit8 v3, v3, 0x1

    .line 557
    :cond_2
    if-lt v3, v8, :cond_3

    .line 558
    sget-object v6, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "string array is full now, exit while loop"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    goto :goto_2

    .line 561
    .end local v9    # "arr":[Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 563
    :cond_4
    :goto_2
    new-instance v6, Landroid/net/ResolverOptionsParcel;

    invoke-direct {v6}, Landroid/net/ResolverOptionsParcel;-><init>()V

    .line 564
    .local v6, "Option":Landroid/net/ResolverOptionsParcel;
    new-array v8, v3, [Landroid/net/ResolverHostsParcel;

    iput-object v8, v6, Landroid/net/ResolverOptionsParcel;->hosts:[Landroid/net/ResolverHostsParcel;

    .line 566
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v3, :cond_5

    .line 567
    iget-object v9, v6, Landroid/net/ResolverOptionsParcel;->hosts:[Landroid/net/ResolverHostsParcel;

    new-instance v11, Landroid/net/ResolverHostsParcel;

    invoke-direct {v11}, Landroid/net/ResolverHostsParcel;-><init>()V

    aput-object v11, v9, v8

    .line 566
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 570
    .end local v8    # "i":I
    :cond_5
    const/4 v8, 0x0

    .local v8, "n":I
    :goto_4
    if-ge v8, v3, :cond_6

    .line 571
    iget-object v9, v6, Landroid/net/ResolverOptionsParcel;->hosts:[Landroid/net/ResolverHostsParcel;

    aget-object v9, v9, v8

    aget-object v11, v7, v8

    aget-object v11, v11, v5

    iput-object v11, v9, Landroid/net/ResolverHostsParcel;->hostName:Ljava/lang/String;

    .line 572
    sget-object v9, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hostName:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v6, Landroid/net/ResolverOptionsParcel;->hosts:[Landroid/net/ResolverHostsParcel;

    aget-object v12, v12, v8

    iget-object v12, v12, Landroid/net/ResolverHostsParcel;->hostName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v9, v6, Landroid/net/ResolverOptionsParcel;->hosts:[Landroid/net/ResolverHostsParcel;

    aget-object v9, v9, v8

    aget-object v11, v7, v8

    aget-object v11, v11, v4

    iput-object v11, v9, Landroid/net/ResolverHostsParcel;->ipAddr:Ljava/lang/String;

    .line 574
    sget-object v9, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ipAddr"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v6, Landroid/net/ResolverOptionsParcel;->hosts:[Landroid/net/ResolverHostsParcel;

    aget-object v12, v12, v8

    iget-object v12, v12, Landroid/net/ResolverHostsParcel;->ipAddr:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 577
    .end local v8    # "n":I
    :cond_6
    nop

    .line 578
    iput-object v6, p2, Landroid/net/ResolverParamsParcel;->resolverOptions:Landroid/net/ResolverOptionsParcel;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 587
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "hosts_size":I
    .end local v6    # "Option":Landroid/net/ResolverOptionsParcel;
    .end local v7    # "file_store":[[Ljava/lang/String;
    .end local v10    # "line":Ljava/lang/String;
    nop

    .line 589
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 592
    :goto_5
    goto :goto_6

    .line 590
    :catch_1
    move-exception v2

    .line 591
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 587
    :catchall_0
    move-exception v2

    goto :goto_7

    .line 583
    :catch_2
    move-exception v2

    .line 584
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_4
    sget-object v3, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    const-string v4, "ArrayIndexOutOfBounds"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-virtual {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 587
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    if-eqz v1, :cond_7

    .line 589
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    .line 580
    :catch_3
    move-exception v2

    .line 581
    .local v2, "e":Ljava/io/IOException;
    :try_start_6
    sget-object v3, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    const-string v4, "file does not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 587
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_7

    .line 589
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    .line 595
    :cond_7
    :goto_6
    return-void

    .line 587
    :goto_7
    if-eqz v1, :cond_8

    .line 589
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 592
    goto :goto_8

    .line 590
    :catch_4
    move-exception v3

    .line 591
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 594
    .end local v3    # "e":Ljava/io/IOException;
    :cond_8
    :goto_8
    throw v2
.end method

.method private setNetDnsProperty(ILjava/lang/String;)V
    .locals 4
    .param p1, "which"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "net.dns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "key":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/DnsManager;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/connectivity/MockableSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    goto :goto_0

    .line 507
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    const-string v3, "Error setting unsupported net.dns property: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private updateParametersSettings()V
    .locals 6

    .line 469
    const-string v0, "dns_resolver_sample_validity_seconds"

    const/16 v1, 0x708

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/DnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/DnsManager;->mSampleValidity:I

    .line 472
    const-string v2, ", using default="

    if-ltz v0, :cond_0

    const v3, 0xffff

    if-le v0, v3, :cond_1

    .line 473
    :cond_0
    sget-object v0, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid sampleValidity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/connectivity/DnsManager;->mSampleValidity:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iput v1, p0, Lcom/android/server/connectivity/DnsManager;->mSampleValidity:I

    .line 478
    :cond_1
    const-string v0, "dns_resolver_success_threshold_percent"

    const/16 v1, 0x19

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/DnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/DnsManager;->mSuccessThreshold:I

    .line 481
    if-ltz v0, :cond_2

    const/16 v3, 0x64

    if-le v0, v3, :cond_3

    .line 482
    :cond_2
    sget-object v0, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid successThreshold="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/connectivity/DnsManager;->mSuccessThreshold:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iput v1, p0, Lcom/android/server/connectivity/DnsManager;->mSuccessThreshold:I

    .line 487
    :cond_3
    const-string v0, "dns_resolver_min_samples"

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/DnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/DnsManager;->mMinSamples:I

    .line 488
    const-string v0, "dns_resolver_max_samples"

    const/16 v2, 0x40

    invoke-direct {p0, v0, v2}, Lcom/android/server/connectivity/DnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/DnsManager;->mMaxSamples:I

    .line 489
    iget v3, p0, Lcom/android/server/connectivity/DnsManager;->mMinSamples:I

    if-ltz v3, :cond_4

    if-gt v3, v0, :cond_4

    if-le v0, v2, :cond_5

    .line 490
    :cond_4
    sget-object v0, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

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

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iput v1, p0, Lcom/android/server/connectivity/DnsManager;->mMinSamples:I

    .line 494
    iput v2, p0, Lcom/android/server/connectivity/DnsManager;->mMaxSamples:I

    .line 496
    :cond_5
    return-void
.end method


# virtual methods
.method public flushVmDnsCache()V
    .locals 5

    .line 454
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLEAR_DNS_CACHE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 459
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 460
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 462
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/DnsManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 465
    nop

    .line 466
    return-void

    .line 464
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 465
    throw v3
.end method

.method public getPrivateDnsConfig()Landroid/net/shared/PrivateDnsConfig;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/server/connectivity/DnsManager;->getPrivateDnsConfig(Landroid/content/ContentResolver;)Landroid/net/shared/PrivateDnsConfig;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateDnsConfig(Landroid/net/Network;)Landroid/net/shared/PrivateDnsConfig;
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 299
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/connectivity/DnsManager;->PRIVATE_DNS_OFF:Landroid/net/shared/PrivateDnsConfig;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/shared/PrivateDnsConfig;

    return-object v0
.end method

.method public noteDnsServersForNetwork(ILandroid/net/LinkProperties;)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .line 357
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mLinkPropertiesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/DnsManager;->sendDnsConfigurationForNetwork(I)V

    .line 359
    return-void
.end method

.method public removeNetwork(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 290
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mTransportsMap:Ljava/util/Map;

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mLinkPropertiesMap:Ljava/util/Map;

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    return-void
.end method

.method public sendDnsConfigurationForNetwork(I)V
    .locals 11
    .param p1, "netId"    # I

    .line 365
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mLinkPropertiesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    .line 366
    .local v0, "lp":Landroid/net/LinkProperties;
    iget-object v1, p0, Lcom/android/server/connectivity/DnsManager;->mTransportsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 367
    .local v1, "transportTypes":[I
    if-eqz v0, :cond_7

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 368
    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/DnsManager;->updateParametersSettings()V

    .line 369
    new-instance v2, Landroid/net/ResolverParamsParcel;

    invoke-direct {v2}, Landroid/net/ResolverParamsParcel;-><init>()V

    .line 378
    .local v2, "paramsParcel":Landroid/net/ResolverParamsParcel;
    iget-object v3, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/android/server/connectivity/DnsManager;->PRIVATE_DNS_OFF:Landroid/net/shared/PrivateDnsConfig;

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/shared/PrivateDnsConfig;

    .line 380
    .local v3, "privateDnsCfg":Landroid/net/shared/PrivateDnsConfig;
    iget-boolean v4, v3, Landroid/net/shared/PrivateDnsConfig;->useTls:Z

    .line 381
    .local v4, "useTls":Z
    invoke-virtual {v3}, Landroid/net/shared/PrivateDnsConfig;->inStrictMode()Z

    move-result v5

    .line 383
    .local v5, "strictMode":Z
    iput p1, v2, Landroid/net/ResolverParamsParcel;->netId:I

    .line 384
    iget v6, p0, Lcom/android/server/connectivity/DnsManager;->mSampleValidity:I

    iput v6, v2, Landroid/net/ResolverParamsParcel;->sampleValiditySeconds:I

    .line 385
    iget v6, p0, Lcom/android/server/connectivity/DnsManager;->mSuccessThreshold:I

    iput v6, v2, Landroid/net/ResolverParamsParcel;->successThreshold:I

    .line 386
    iget v6, p0, Lcom/android/server/connectivity/DnsManager;->mMinSamples:I

    iput v6, v2, Landroid/net/ResolverParamsParcel;->minSamples:I

    .line 387
    iget v6, p0, Lcom/android/server/connectivity/DnsManager;->mMaxSamples:I

    iput v6, v2, Landroid/net/ResolverParamsParcel;->maxSamples:I

    .line 388
    nop

    .line 389
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/net/ResolverParamsParcel;->servers:[Ljava/lang/String;

    .line 390
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/connectivity/DnsManager;->getDomainStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/net/ResolverParamsParcel;->domains:[Ljava/lang/String;

    .line 391
    if-eqz v5, :cond_1

    iget-object v6, v3, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v6, ""

    :goto_0
    iput-object v6, v2, Landroid/net/ResolverParamsParcel;->tlsName:Ljava/lang/String;

    .line 392
    nop

    .line 393
    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget-object v7, v3, Landroid/net/shared/PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    .line 394
    invoke-static {v7}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/android/server/connectivity/-$$Lambda$DnsManager$jYmx1cOqMCeciv0YLC5U-520CaU;

    invoke-direct {v8, v0}, Lcom/android/server/connectivity/-$$Lambda$DnsManager$jYmx1cOqMCeciv0YLC5U-520CaU;-><init>(Landroid/net/LinkProperties;)V

    .line 395
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    .line 396
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    .line 393
    invoke-static {v7}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 397
    :cond_2
    if-eqz v4, :cond_3

    iget-object v7, v2, Landroid/net/ResolverParamsParcel;->servers:[Ljava/lang/String;

    goto :goto_1

    .line 398
    :cond_3
    new-array v7, v6, [Ljava/lang/String;

    :goto_1
    iput-object v7, v2, Landroid/net/ResolverParamsParcel;->tlsServers:[Ljava/lang/String;

    .line 399
    new-instance v7, Landroid/net/ResolverOptionsParcel;

    invoke-direct {v7}, Landroid/net/ResolverOptionsParcel;-><init>()V

    iput-object v7, v2, Landroid/net/ResolverParamsParcel;->resolverOptions:Landroid/net/ResolverOptionsParcel;

    .line 400
    iput-object v1, v2, Landroid/net/ResolverParamsParcel;->transportTypes:[I

    .line 403
    invoke-static {}, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->isH2Version()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 404
    const-string v7, "/data/opinstantapp/instant/backup_hosts.txt"

    invoke-direct {p0, v7, v2}, Lcom/android/server/connectivity/DnsManager;->setDnsRomFileParam(Ljava/lang/String;Landroid/net/ResolverParamsParcel;)V

    .line 409
    :cond_4
    if-eqz v4, :cond_6

    .line 410
    iget-object v7, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 411
    iget-object v7, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;-><init>(Lcom/android/server/connectivity/DnsManager$1;)V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    :cond_5
    iget-object v7, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;

    iget-object v8, v2, Landroid/net/ResolverParamsParcel;->tlsServers:[Ljava/lang/String;

    iget-object v9, v2, Landroid/net/ResolverParamsParcel;->tlsName:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->access$400(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 416
    :cond_6
    iget-object v7, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    :goto_2
    sget-object v7, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    const/16 v8, 0xb

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, v2, Landroid/net/ResolverParamsParcel;->netId:I

    .line 420
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x1

    iget-object v9, v2, Landroid/net/ResolverParamsParcel;->servers:[Ljava/lang/String;

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x2

    iget-object v9, v2, Landroid/net/ResolverParamsParcel;->domains:[Ljava/lang/String;

    .line 421
    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x3

    iget v9, v2, Landroid/net/ResolverParamsParcel;->sampleValiditySeconds:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x4

    iget v9, v2, Landroid/net/ResolverParamsParcel;->successThreshold:I

    .line 422
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x5

    iget v9, v2, Landroid/net/ResolverParamsParcel;->minSamples:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x6

    iget v9, v2, Landroid/net/ResolverParamsParcel;->maxSamples:I

    .line 423
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x7

    iget v9, v2, Landroid/net/ResolverParamsParcel;->baseTimeoutMsec:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/16 v6, 0x8

    iget v9, v2, Landroid/net/ResolverParamsParcel;->retryCount:I

    .line 424
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/16 v6, 0x9

    iget-object v9, v2, Landroid/net/ResolverParamsParcel;->tlsName:Ljava/lang/String;

    aput-object v9, v8, v6

    const/16 v6, 0xa

    iget-object v9, v2, Landroid/net/ResolverParamsParcel;->tlsServers:[Ljava/lang/String;

    .line 425
    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    .line 419
    const-string/jumbo v6, "sendDnsConfigurationForNetwork(%d, %s, %s, %d, %d, %d, %d, %d, %d, %s, %s)"

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/DnsManager;->mDnsResolver:Landroid/net/IDnsResolver;

    invoke-interface {v6, v2}, Landroid/net/IDnsResolver;->setResolverConfiguration(Landroid/net/ResolverParamsParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    nop

    .line 433
    return-void

    .line 429
    :catch_0
    move-exception v6

    .line 430
    .local v6, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error setting DNS configuration: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-void

    .line 367
    .end local v2    # "paramsParcel":Landroid/net/ResolverParamsParcel;
    .end local v3    # "privateDnsCfg":Landroid/net/shared/PrivateDnsConfig;
    .end local v4    # "useTls":Z
    .end local v5    # "strictMode":Z
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_3
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

    .line 436
    .local p1, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v0, 0x0

    .line 437
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

    .line 438
    .local v2, "dns":Ljava/net/InetAddress;
    add-int/lit8 v0, v0, 0x1

    .line 439
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/connectivity/DnsManager;->setNetDnsProperty(ILjava/lang/String;)V

    .line 440
    .end local v2    # "dns":Ljava/net/InetAddress;
    goto :goto_0

    .line 441
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/android/server/connectivity/DnsManager;->mNumDnsEntries:I

    if-gt v1, v2, :cond_1

    .line 442
    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/DnsManager;->setNetDnsProperty(ILjava/lang/String;)V

    .line 441
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 444
    .end local v1    # "i":I
    :cond_1
    iput v0, p0, Lcom/android/server/connectivity/DnsManager;->mNumDnsEntries:I

    .line 445
    return-void
.end method

.method public updatePrivateDns(Landroid/net/Network;Landroid/net/shared/PrivateDnsConfig;)Landroid/net/shared/PrivateDnsConfig;
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "cfg"    # Landroid/net/shared/PrivateDnsConfig;

    .line 303
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

    .line 304
    if-eqz p2, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/shared/PrivateDnsConfig;

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/shared/PrivateDnsConfig;

    .line 304
    :goto_0
    return-object v0
.end method

.method public updatePrivateDnsStatus(ILandroid/net/LinkProperties;)V
    .locals 8
    .param p1, "netId"    # I
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .line 312
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/connectivity/DnsManager;->PRIVATE_DNS_OFF:Landroid/net/shared/PrivateDnsConfig;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/shared/PrivateDnsConfig;

    .line 315
    .local v0, "privateDnsCfg":Landroid/net/shared/PrivateDnsConfig;
    iget-boolean v1, v0, Landroid/net/shared/PrivateDnsConfig;->useTls:Z

    .line 317
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

    .line 318
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

    .line 319
    .local v6, "validated":Z
    :goto_1
    invoke-virtual {v0}, Landroid/net/shared/PrivateDnsConfig;->inStrictMode()Z

    move-result v7

    .line 320
    .local v7, "strictMode":Z
    if-eqz v7, :cond_2

    iget-object v2, v0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    .line 321
    .local v2, "tlsHostname":Ljava/lang/String;
    :cond_2
    if-nez v7, :cond_4

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    .line 323
    .local v4, "usingPrivateDns":Z
    :cond_4
    :goto_2
    invoke-virtual {p2, v4}, Landroid/net/LinkProperties;->setUsePrivateDns(Z)V

    .line 324
    invoke-virtual {p2, v2}, Landroid/net/LinkProperties;->setPrivateDnsServerName(Ljava/lang/String;)V

    .line 325
    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 326
    invoke-static {v3, p2}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->access$100(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    goto :goto_3

    .line 328
    :cond_5
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p2, v5}, Landroid/net/LinkProperties;->setValidatedPrivateDnsServers(Ljava/util/Collection;)V

    .line 330
    :goto_3
    return-void
.end method

.method public updatePrivateDnsValidation(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V
    .locals 2
    .param p1, "update"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;

    .line 333
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    iget v1, p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;->netId:I

    .line 334
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;

    .line 335
    .local v0, "statuses":Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;
    if-nez v0, :cond_0

    return-void

    .line 336
    :cond_0
    invoke-static {v0, p1}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->access$200(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V

    .line 337
    return-void
.end method

.method public updateTransportsForNetwork(I[I)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "transportTypes"    # [I

    .line 346
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mTransportsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/DnsManager;->sendDnsConfigurationForNetwork(I)V

    .line 348
    return-void
.end method
