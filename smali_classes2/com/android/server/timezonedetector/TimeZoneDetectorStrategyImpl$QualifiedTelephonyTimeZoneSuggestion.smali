.class public Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
.super Ljava/lang/Object;
.source "TimeZoneDetectorStrategyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QualifiedTelephonyTimeZoneSuggestion"
.end annotation


# instance fields
.field public final score:I

.field public final suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;


# direct methods
.method public constructor <init>(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;I)V
    .locals 0
    .param p1, "suggestion"    # Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .param p2, "score"    # I

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    .line 482
    iput p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    .line 483
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 487
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 488
    return v0

    .line 490
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 493
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

    .line 494
    .local v2, "that":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    iget v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    iget v4, v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    iget-object v4, v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    .line 495
    invoke-virtual {v3, v4}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 494
    :goto_0
    return v0

    .line 491
    .end local v2    # "that":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 500
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QualifiedTelephonyTimeZoneSuggestion{suggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
