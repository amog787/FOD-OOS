.class final Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;
.super Ljava/lang/Object;
.source "GnssVisibilityControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssVisibilityControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProxyAppState"
.end annotation


# instance fields
.field private mHasLocationPermission:Z

.field private mIsLocationIconOn:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 0
    .param p1, "hasLocationPermission"    # Z

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->mHasLocationPermission:Z

    .line 92
    return-void
.end method

.method synthetic constructor <init>(ZLcom/android/server/location/gnss/GnssVisibilityControl$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Lcom/android/server/location/gnss/GnssVisibilityControl$1;

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;-><init>(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;

    .line 86
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->mHasLocationPermission:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;
    .param p1, "x1"    # Z

    .line 86
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->mHasLocationPermission:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;

    .line 86
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->mIsLocationIconOn:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;
    .param p1, "x1"    # Z

    .line 86
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->mIsLocationIconOn:Z

    return p1
.end method
