.class public final Lcom/android/server/twilight/TwilightState;
.super Ljava/lang/Object;
.source "TwilightState.java"


# instance fields
.field private final mSunriseTimeMillis:J

.field private final mSunsetTimeMillis:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "sunriseTimeMillis"    # J
    .param p3, "sunsetTimeMillis"    # J

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    .line 39
    iput-wide p3, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Lcom/android/server/twilight/TwilightState;)Z
    .locals 4
    .param p1, "other"    # Lcom/android/server/twilight/TwilightState;

    .line 97
    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    iget-wide v2, p1, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    iget-wide v2, p1, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 93
    instance-of v0, p1, Lcom/android/server/twilight/TwilightState;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/server/twilight/TwilightState;

    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightState;->equals(Lcom/android/server/twilight/TwilightState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 104
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    iget-wide v1, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isNight()Z
    .locals 9

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 81
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    iget-wide v4, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    cmp-long v6, v2, v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gez v6, :cond_1

    .line 83
    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    move v7, v8

    :cond_0
    return v7

    .line 86
    :cond_1
    cmp-long v4, v0, v4

    if-ltz v4, :cond_2

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    :cond_2
    move v7, v8

    :cond_3
    return v7
.end method

.method public sunrise()Ljava/time/LocalDateTime;
    .locals 3

    .line 54
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v0

    .line 55
    .local v0, "zoneId":Ljava/time/ZoneId;
    iget-wide v1, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public sunriseTimeMillis()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    return-wide v0
.end method

.method public sunset()Ljava/time/LocalDateTime;
    .locals 3

    .line 70
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v0

    .line 71
    .local v0, "zoneId":Ljava/time/ZoneId;
    iget-wide v1, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public sunsetTimeMillis()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TwilightState { sunrise="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    .line 110
    const-string v3, "MM-dd HH:mm"

    invoke-static {v3, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " sunset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    .line 111
    invoke-static {v3, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    return-object v0
.end method
