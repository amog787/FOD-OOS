.class Lcom/android/server/display/BrightnessTracker$LightData;
.super Ljava/lang/Object;
.source "BrightnessTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LightData"
.end annotation


# instance fields
.field public lux:F

.field public timestamp:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/BrightnessTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/BrightnessTracker$1;

    .line 835
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker$LightData;-><init>()V

    return-void
.end method
