.class public abstract Lcom/android/server/audio/AudioEventLogger$Event;
.super Ljava/lang/Object;
.source "AudioEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Event"
.end annotation


# static fields
.field private static final sFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private final mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/AudioEventLogger$Event;->sFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/audio/AudioEventLogger$Event;->mTimestamp:J

    .line 44
    return-void
.end method


# virtual methods
.method public abstract eventToString()Ljava/lang/String;
.end method

.method public printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/android/server/audio/AudioEventLogger$Event;->eventToString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/audio/AudioEventLogger$Event;->sFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/audio/AudioEventLogger$Event;->mTimestamp:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioEventLogger$Event;->eventToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    return-object v0
.end method
