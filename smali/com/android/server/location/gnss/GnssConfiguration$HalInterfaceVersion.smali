.class Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;
.super Ljava/lang/Object;
.source "GnssConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HalInterfaceVersion"
.end annotation


# instance fields
.field final mMajor:I

.field final mMinor:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    .line 94
    iput p2, p0, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMinor:I

    .line 95
    return-void
.end method
