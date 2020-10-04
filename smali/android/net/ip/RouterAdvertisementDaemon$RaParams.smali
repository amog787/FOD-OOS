.class public Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
.super Ljava/lang/Object;
.source "RouterAdvertisementDaemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/RouterAdvertisementDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RaParams"
.end annotation


# static fields
.field static final DEFAULT_HOPLIMIT:B = 0x41t


# instance fields
.field public dnses:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation
.end field

.field public hasDefaultRoute:Z

.field public hopLimit:B

.field public mtu:I

.field public prefixes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    .line 139
    const/16 v0, 0x41

    iput-byte v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hopLimit:B

    .line 140
    const/16 v0, 0x500

    iput v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    .line 141
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    .line 142
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V
    .locals 1
    .param p1, "other"    # Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iget-boolean v0, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    iput-boolean v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    .line 147
    iget-byte v0, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hopLimit:B

    iput-byte v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hopLimit:B

    .line 148
    iget v0, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    iput v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    .line 149
    iget-object v0, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    .line 150
    iget-object v0, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    .line 151
    return-void
.end method

.method public static getDeprecatedRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    .locals 4
    .param p0, "oldRa"    # Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    .param p1, "newRa"    # Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .line 158
    new-instance v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    invoke-direct {v0}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;-><init>()V

    .line 160
    .local v0, "newlyDeprecated":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    if-eqz p0, :cond_5

    .line 161
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    .line 162
    .local v2, "ipp":Landroid/net/IpPrefix;
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 163
    :cond_0
    iget-object v3, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 165
    .end local v2    # "ipp":Landroid/net/IpPrefix;
    :cond_1
    goto :goto_0

    .line 167
    :cond_2
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Inet6Address;

    .line 168
    .local v2, "dns":Ljava/net/Inet6Address;
    if-eqz p1, :cond_3

    iget-object v3, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 169
    :cond_3
    iget-object v3, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v2    # "dns":Ljava/net/Inet6Address;
    :cond_4
    goto :goto_1

    .line 174
    :cond_5
    return-object v0
.end method
