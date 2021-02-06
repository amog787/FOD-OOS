.class public Landroid/net/shared/PrivateDnsConfig;
.super Ljava/lang/Object;
.source "PrivateDnsConfig.java"


# instance fields
.field public final hostname:Ljava/lang/String;

.field public final ips:[Ljava/net/InetAddress;

.field public final useTls:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/shared/PrivateDnsConfig;-><init>(Z)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/net/shared/PrivateDnsConfig;)V
    .locals 1
    .param p1, "cfg"    # Landroid/net/shared/PrivateDnsConfig;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget-boolean v0, p1, Landroid/net/shared/PrivateDnsConfig;->useTls:Z

    iput-boolean v0, p0, Landroid/net/shared/PrivateDnsConfig;->useTls:Z

    .line 52
    iget-object v0, p1, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Landroid/net/shared/PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/shared/PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "ips"    # [Ljava/net/InetAddress;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/net/shared/PrivateDnsConfig;->useTls:Z

    .line 46
    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    .line 47
    if-eqz p2, :cond_1

    move-object v0, p2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/InetAddress;

    :goto_1
    iput-object v0, p0, Landroid/net/shared/PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    .line 48
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "useTls"    # Z

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean p1, p0, Landroid/net/shared/PrivateDnsConfig;->useTls:Z

    .line 40
    const-string v0, ""

    iput-object v0, p0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/shared/PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    .line 42
    return-void
.end method

.method public static fromParcel(Landroid/net/PrivateDnsConfigParcel;)Landroid/net/shared/PrivateDnsConfig;
    .locals 3
    .param p0, "parcel"    # Landroid/net/PrivateDnsConfigParcel;

    .line 85
    iget-object v0, p0, Landroid/net/PrivateDnsConfigParcel;->ips:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/net/InetAddress;

    .line 86
    .local v0, "ips":[Ljava/net/InetAddress;
    iget-object v1, p0, Landroid/net/PrivateDnsConfigParcel;->ips:[Ljava/lang/String;

    sget-object v2, Landroid/net/shared/-$$Lambda$SYWvjOUPlAZ_O2Z6yfFU9np1858;->INSTANCE:Landroid/net/shared/-$$Lambda$SYWvjOUPlAZ_O2Z6yfFU9np1858;

    invoke-static {v1, v2}, Landroid/net/shared/ParcelableUtil;->fromParcelableArray([Ljava/lang/Object;Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object v1

    .line 87
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Ljava/net/InetAddress;

    .line 88
    new-instance v1, Landroid/net/shared/PrivateDnsConfig;

    iget-object v2, p0, Landroid/net/PrivateDnsConfigParcel;->hostname:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/net/shared/PrivateDnsConfig;-><init>(Ljava/lang/String;[Ljava/net/InetAddress;)V

    return-object v1
.end method


# virtual methods
.method public inStrictMode()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Landroid/net/shared/PrivateDnsConfig;->useTls:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toParcel()Landroid/net/PrivateDnsConfigParcel;
    .locals 4

    .line 73
    new-instance v0, Landroid/net/PrivateDnsConfigParcel;

    invoke-direct {v0}, Landroid/net/PrivateDnsConfigParcel;-><init>()V

    .line 74
    .local v0, "parcel":Landroid/net/PrivateDnsConfigParcel;
    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/PrivateDnsConfigParcel;->hostname:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    .line 76
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Landroid/net/shared/-$$Lambda$OsobWheG5dMvEj_cOJtueqUBqBI;->INSTANCE:Landroid/net/shared/-$$Lambda$OsobWheG5dMvEj_cOJtueqUBqBI;

    const-class v3, Ljava/lang/String;

    .line 75
    invoke-static {v1, v2, v3}, Landroid/net/shared/ParcelableUtil;->toParcelableArray(Ljava/util/Collection;Ljava/util/function/Function;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/net/PrivateDnsConfigParcel;->ips:[Ljava/lang/String;

    .line 78
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/net/shared/PrivateDnsConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/shared/PrivateDnsConfig;->useTls:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/shared/PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    .line 66
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    return-object v0
.end method
