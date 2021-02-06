.class Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;
.super Ljava/lang/Object;
.source "SoundTriggerMiddlewareLogging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Event"
.end annotation


# instance fields
.field public final message:Ljava/lang/String;

.field public final timestamp:J


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;->timestamp:J

    .line 364
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;->message:Ljava/lang/String;

    .line 365
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$1;

    .line 359
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;-><init>(Ljava/lang/String;)V

    return-void
.end method
