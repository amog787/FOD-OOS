.class public interface abstract Lcom/android/server/timedetector/TimeDetectorStrategy;
.super Ljava/lang/Object;
.source "TimeDetectorStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;
    }
.end annotation


# direct methods
.method public static getTimeAt(Landroid/util/TimestampedValue;J)J
    .locals 4
    .param p1, "referenceClockMillisNow"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;J)J"
        }
    .end annotation

    .line 90
    .local p0, "timeValue":Landroid/util/TimestampedValue;, "Landroid/util/TimestampedValue<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/util/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 91
    invoke-virtual {p0}, Landroid/util/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 90
    return-wide v0
.end method


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract handleAutoTimeDetectionToggle(Z)V
.end method

.method public abstract initialize(Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;)V
.end method

.method public abstract suggestTime(Landroid/app/timedetector/TimeSignal;)V
.end method
