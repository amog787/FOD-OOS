.class Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;
.super Ljava/lang/Object;
.source "GnssConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
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

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    .line 88
    iput p2, p0, Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;->mMinor:I

    .line 89
    return-void
.end method
