.class Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;
.super Ljava/lang/Object;
.source "GnssNetworkConnectivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkAttributes"
.end annotation


# instance fields
.field private mApn:Ljava/lang/String;

.field private mCapabilities:Landroid/net/NetworkCapabilities;

.field private mType:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;

    .line 125
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;

    .line 125
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mApn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;
    .param p1, "x1"    # Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mApn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;

    .line 125
    iget v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mType:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;
    .param p1, "x1"    # I

    .line 125
    iput p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mType:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;)Landroid/net/NetworkCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;

    .line 125
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mCapabilities:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;
    .param p1, "x1"    # Landroid/net/NetworkCapabilities;

    .line 125
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mCapabilities:Landroid/net/NetworkCapabilities;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/net/NetworkCapabilities;)S
    .locals 1
    .param p0, "x0"    # Landroid/net/NetworkCapabilities;

    .line 125
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->getCapabilityFlags(Landroid/net/NetworkCapabilities;)S

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/NetworkCapabilities;
    .param p1, "x1"    # Landroid/net/NetworkCapabilities;

    .line 125
    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->hasCapabilitiesChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v0

    return v0
.end method

.method private static getCapabilityFlags(Landroid/net/NetworkCapabilities;)S
    .locals 2
    .param p0, "capabilities"    # Landroid/net/NetworkCapabilities;

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "capabilityFlags":S
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    or-int/lit8 v1, v0, 0x2

    int-to-short v0, v1

    .line 158
    :cond_0
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    or-int/lit8 v1, v0, 0x1

    int-to-short v0, v1

    .line 161
    :cond_1
    return v0
.end method

.method private static hasCapabilitiesChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .locals 2
    .param p0, "curCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p1, "newCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 136
    const/4 v0, 0x1

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 141
    :cond_0
    const/16 v1, 0x12

    invoke-static {p0, p1, v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;I)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0xb

    .line 143
    invoke-static {p0, p1, v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    .line 141
    :goto_1
    return v0

    .line 137
    :cond_3
    :goto_2
    return v0
.end method

.method private static hasCapabilityChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;I)Z
    .locals 2
    .param p0, "curCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p1, "newCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "capability"    # I

    .line 149
    invoke-virtual {p0, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    .line 150
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0
.end method
