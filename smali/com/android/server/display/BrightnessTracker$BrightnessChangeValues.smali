.class Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;
.super Ljava/lang/Object;
.source "BrightnessTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BrightnessChangeValues"
.end annotation


# instance fields
.field final brightness:F

.field final isDefaultBrightnessConfig:Z

.field final isUserSetBrightness:Z

.field final powerBrightnessFactor:F

.field final timestamp:J


# direct methods
.method constructor <init>(FFZZJ)V
    .locals 0
    .param p1, "brightness"    # F
    .param p2, "powerBrightnessFactor"    # F
    .param p3, "isUserSetBrightness"    # Z
    .param p4, "isDefaultBrightnessConfig"    # Z
    .param p5, "timestamp"    # J

    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1019
    iput p1, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->brightness:F

    .line 1020
    iput p2, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->powerBrightnessFactor:F

    .line 1021
    iput-boolean p3, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isUserSetBrightness:Z

    .line 1022
    iput-boolean p4, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isDefaultBrightnessConfig:Z

    .line 1023
    iput-wide p5, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->timestamp:J

    .line 1024
    return-void
.end method
