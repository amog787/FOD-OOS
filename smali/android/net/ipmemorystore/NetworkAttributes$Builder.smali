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

.field private mDnsAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupHint:Ljava/lang/String;

.field private mMtu:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/net/ipmemorystore/NetworkAttributes;
    .locals 7

    .line 289
    new-instance v6, Landroid/net/ipmemorystore/NetworkAttributes;

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mAssignedAddress:Ljava/net/Inet4Address;

    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mAssignedAddressExpiry:Ljava/lang/Long;

    iget-object v3, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mGroupHint:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mDnsAddresses:Ljava/util/List;

    iget-object v5, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mMtu:Ljava/lang/Integer;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/net/ipmemorystore/NetworkAttributes;-><init>(Ljava/net/Inet4Address;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)V

    return-object v6
.end method

.method public setAssignedV4Address(Ljava/net/Inet4Address;)Landroid/net/ipmemorystore/NetworkAttributes$Builder;
    .locals 0
    .param p1, "assignedV4Address"    # Ljava/net/Inet4Address;

    .line 226
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mAssignedAddress:Ljava/net/Inet4Address;

    .line 227
    return-object p0
.end method

.method public setAssignedV4AddressExpiry(Ljava/lang/Long;)Landroid/net/ipmemorystore/NetworkAttributes$Builder;
    .locals 4
    .param p1, "assignedV4AddressExpiry"    # Ljava/lang/Long;

    .line 239
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lease expiry can\'t be negative or zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mAssignedAddressExpiry:Ljava/lang/Long;

    .line 243
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

    .line 262
    .local p1, "dnsAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    if-eqz p1, :cond_1

    .line 265
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 266
    .local v1, "address":Ljava/net/InetAddress;
    if-eqz v1, :cond_0

    .line 267
    .end local v1    # "address":Ljava/net/InetAddress;
    goto :goto_0

    .line 266
    .restart local v1    # "address":Ljava/net/InetAddress;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null DNS address"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    .end local v1    # "address":Ljava/net/InetAddress;
    :cond_1
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mDnsAddresses:Ljava/util/List;

    .line 270
    return-object p0
.end method

.method public setGroupHint(Ljava/lang/String;)Landroid/net/ipmemorystore/NetworkAttributes$Builder;
    .locals 0
    .param p1, "groupHint"    # Ljava/lang/String;

    .line 252
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mGroupHint:Ljava/lang/String;

    .line 253
    return-object p0
.end method

.method public setMtu(Ljava/lang/Integer;)Landroid/net/ipmemorystore/NetworkAttributes$Builder;
    .locals 2
    .param p1, "mtu"    # Ljava/lang/Integer;

    .line 279
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

    .line 280
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mMtu:Ljava/lang/Integer;

    .line 281
    return-object p0
.end method
