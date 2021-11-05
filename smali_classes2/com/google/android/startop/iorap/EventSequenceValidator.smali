.class public Lcom/google/android/startop/iorap/EventSequenceValidator;
.super Ljava/lang/Object;
.source "EventSequenceValidator.java"

# interfaces
.implements Lcom/android/server/wm/ActivityMetricsLaunchObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/startop/iorap/EventSequenceValidator$State;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "EventSequenceValidator"


# instance fields
.field private accIntentStartedEvents:J

.field private state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 106
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/startop/iorap/EventSequenceValidator;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INIT:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->accIntentStartedEvents:J

    return-void
.end method

.method private decAccIntentStartedEvents()V
    .locals 4

    .line 283
    iget-wide v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->accIntentStartedEvents:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 286
    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 287
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INIT:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 289
    :cond_0
    iget-wide v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->accIntentStartedEvents:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->accIntentStartedEvents:J

    .line 292
    sget-boolean v2, Lcom/google/android/startop/iorap/EventSequenceValidator;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 293
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "dec AccIntentStartedEvents to %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventSequenceValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_1
    return-void

    .line 284
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "The number of unknowns cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private incAccIntentStartedEvents()V
    .locals 5

    .line 271
    iget-wide v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->accIntentStartedEvents:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 274
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 275
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->UNKNOWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 277
    :cond_0
    iget-wide v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->accIntentStartedEvents:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->accIntentStartedEvents:J

    .line 278
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 279
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "inc AccIntentStartedEvents to %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 278
    const-string v1, "EventSequenceValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void

    .line 272
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "The number of unknowns cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private logWarningWithStackTrace(Ljava/lang/String;)V
    .locals 4
    .param p1, "log"    # Ljava/lang/String;

    .line 299
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 300
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 303
    .local v1, "pw":Ljava/io/PrintWriter;
    sget-boolean v2, Lcom/google/android/startop/iorap/EventSequenceValidator;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 304
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "EventSequenceValidator#getStackTrace"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 305
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v3, "%s\n%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EventSequenceValidator"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityLaunchCancelled([B)V
    .locals 5
    .param p1, "activity"    # [B

    .line 188
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->UNKNOWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-ne v0, v1, :cond_0

    .line 189
    const-string v0, "onActivityLaunchCancelled during UNKNOWN."

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 190
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->decAccIntentStartedEvents()V

    .line 191
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_LAUNCHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_1

    .line 194
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_CANCELLED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    .line 195
    const-string v1, "Cannot transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 196
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->incAccIntentStartedEvents()V

    .line 197
    return-void

    .line 202
    :cond_1
    sget-boolean v0, Lcom/google/android/startop/iorap/EventSequenceValidator;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 203
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_CANCELLED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    const-string v1, "Transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventSequenceValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_2
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_CANCELLED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 207
    return-void
.end method

.method public onActivityLaunchFinished([BJ)V
    .locals 5
    .param p1, "activity"    # [B
    .param p2, "timestampNs"    # J

    .line 212
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->UNKNOWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-ne v0, v1, :cond_0

    .line 213
    const-string v0, "onActivityLaunchFinished during UNKNOWN."

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 214
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->decAccIntentStartedEvents()V

    .line 215
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_LAUNCHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_1

    .line 219
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_FINISHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    .line 220
    const-string v1, "Cannot transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->incAccIntentStartedEvents()V

    .line 222
    return-void

    .line 227
    :cond_1
    sget-boolean v0, Lcom/google/android/startop/iorap/EventSequenceValidator;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 228
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_FINISHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    const-string v1, "Transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventSequenceValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_2
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_FINISHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 232
    return-void
.end method

.method public onActivityLaunched([BI)V
    .locals 5
    .param p1, "activity"    # [B
    .param p2, "temperature"    # I

    .line 166
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->UNKNOWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-ne v0, v1, :cond_0

    .line 167
    const-string v0, "onActivityLaunched during UNKNOWN."

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 168
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_STARTED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_1

    .line 171
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_LAUNCHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    .line 172
    const-string v1, "Cannot transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->incAccIntentStartedEvents()V

    .line 174
    return-void

    .line 179
    :cond_1
    sget-boolean v0, Lcom/google/android/startop/iorap/EventSequenceValidator;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 180
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_LAUNCHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    const-string v1, "Transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventSequenceValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_2
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_LAUNCHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 184
    return-void
.end method

.method public onIntentFailed()V
    .locals 5

    .line 142
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->UNKNOWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-ne v0, v1, :cond_0

    .line 143
    const-string v0, "onIntentFailed during UNKNOWN."

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 144
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->decAccIntentStartedEvents()V

    .line 145
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_STARTED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_1

    .line 148
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_FAILED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    .line 149
    const-string v1, "Cannot transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->incAccIntentStartedEvents()V

    .line 151
    return-void

    .line 156
    :cond_1
    sget-boolean v0, Lcom/google/android/startop/iorap/EventSequenceValidator;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 157
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_FAILED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    const-string v1, "Transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventSequenceValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_2
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_FAILED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 161
    return-void
.end method

.method public onIntentStarted(Landroid/content/Intent;J)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "timestampNs"    # J

    .line 113
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->UNKNOWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-ne v0, v1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntentStarted during UNKNOWN. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->incAccIntentStartedEvents()V

    .line 116
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INIT:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_FAILED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_CANCELLED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_FINISHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->REPORT_FULLY_DRAWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-eq v0, v1, :cond_1

    .line 124
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_STARTED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    .line 125
    const-string v1, "Cannot transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->incAccIntentStartedEvents()V

    .line 127
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->incAccIntentStartedEvents()V

    .line 128
    return-void

    .line 133
    :cond_1
    sget-boolean v0, Lcom/google/android/startop/iorap/EventSequenceValidator;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 134
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_STARTED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    const-string v1, "Transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventSequenceValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_2
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_STARTED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 138
    return-void
.end method

.method public onReportFullyDrawn([BJ)V
    .locals 5
    .param p1, "activity"    # [B
    .param p2, "timestampNs"    # J

    .line 237
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->UNKNOWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-ne v0, v1, :cond_0

    .line 238
    const-string v0, "onReportFullyDrawn during UNKNOWN."

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 239
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INIT:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-ne v0, v1, :cond_1

    .line 242
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_FINISHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_2

    .line 246
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->REPORT_FULLY_DRAWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    .line 247
    const-string v1, "Cannot transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 248
    return-void

    .line 252
    :cond_2
    sget-boolean v0, Lcom/google/android/startop/iorap/EventSequenceValidator;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 253
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->REPORT_FULLY_DRAWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    const-string v1, "Transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventSequenceValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_3
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->REPORT_FULLY_DRAWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 257
    return-void
.end method
