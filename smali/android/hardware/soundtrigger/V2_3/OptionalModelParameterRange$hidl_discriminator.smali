.class public final Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$hidl_discriminator;
.super Ljava/lang/Object;
.source "OptionalModelParameterRange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final noinit:B = 0x0t

.field public static final range:B = 0x1t


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getName(B)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # B

    .line 14
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 17
    const-string v0, "Unknown"

    return-object v0

    .line 16
    :cond_0
    const-string/jumbo v0, "range"

    return-object v0

    .line 15
    :cond_1
    const-string/jumbo v0, "noinit"

    return-object v0
.end method
