.class public Landroid/net/ipmemorystore/NetworkAttributes$Builder;
.super Ljava/lang/Object;
.source "NetworkAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipmemorystore/NetworkAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAssignedAddress:Ljava/net/Inet4Address;

.field private mAssignedAddressExpiry:Ljava/lang/Long;

.field private mCluster:Ljava/lang/String;

.field private mDnsAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mMtu:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/net/ipmemorystore/NetworkAttributes;)V
    .locals 2
    .param p1, "attributes"    # Landroid/net/ipmemorystore/NetworkAttributes;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iget-object v0, p1, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    iput-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mAssignedAddress:Ljava/net/Inet4Address;

    .line 230
    iget-object v0, p1, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    iput-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mAssignedAddressExpiry:Ljava/lang/Long;

    .line 231
    iget-object v0, p1, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mCluster:Ljava/lang/String;

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mDnsAddresses:Ljava/util/List;

    .line 233
    iget-object v0, p1, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mMtu:Ljava/lang/Integer;

    .line 234
    return-void
.end method


# virtual methods
.method public build()Landroid/net/ipmemorystore/NetworkAttributes;
    .locals 7

    .line 305
    new-instance v6, Landroid/net/ipmemorystore/NetworkAttributes;

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mAssignedAddress:Ljava/net/Inet4Address;

    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mAssignedAddressExpiry:Ljava/lang/Long;

    iget-object v3, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mCluster:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mDnsAddresses:Ljava/util/List;

    iget-object v5, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mMtu:Ljava/lang/Integer;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/net/ipmemorystore/NetworkAttributes;-><init>(Ljava/net/Inet4Address;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)V

    return-object v6
.end method

.method public setAssignedV4Address(Ljava/net/Inet4Address;)Landroid/net/ipmemorystore/NetworkAttributes$Builder;
    .locals 0
    .param p1, "assignedV4Address"    # Ljava/net/Inet4Address;

    .line 242
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mAssignedAddress:Ljava/net/Inet4Address;

    .line 243
    return-object p0
.end method

.method public setAssignedV4AddressExpiry(Ljava/lang/Long;)Landroid/net/ipmemorystore/NetworkAttributes$Builder;
    .locals 4
    .param p1, "assignedV4AddressExpiry"    # Ljava/lang/Long;

    .line 255
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lease expiry can\'t be negative or zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mAssignedAddressExpiry:Ljava/lang/Long;

    .line 259
    return-object p0
.end method

.method public setCluster(Ljava/lang/String;)Landroid/net/ipmemorystore/NetworkAttributes$Builder;
    .locals 0
    .param p1, "cluster"    # Ljava/lang/String;

    .line 268
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mCluster:Ljava/lang/String;

    .line 269
    return-object p0
.end method

.method public setDnsAddresses(Ljava/util/List;)Landroid/net/ipmemorystore/NetworkAttributes$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Landroid/net/ipmemorystore/NetworkAttributes$Builder;"
        }
    .end annotation

    .line 278
    .local p1, "dnsAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    if-eqz p1, :cond_1

    .line 281
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 282
    .local v1, "address":Ljava/net/InetAddress;
    if-eqz v1, :cond_0

    .line 283
    .end local v1    # "address":Ljava/net/InetAddress;
    goto :goto_0

    .line 282
    .restart local v1    # "address":Ljava/net/InetAddress;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null DNS address"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    .end local v1    # "address":Ljava/net/InetAddress;
    :cond_1
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mDnsAddresses:Ljava/util/List;

    .line 286
    return-object p0
.end method

.method public setMtu(Ljava/lang/Integer;)Landroid/net/ipmemorystore/NetworkAttributes$Builder;
    .locals 2
    .param p1, "mtu"    # Ljava/lang/Integer;

    .line 295
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MTU can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mMtu:Ljava/lang/Integer;

    .line 297
    return-object p0
.end method
