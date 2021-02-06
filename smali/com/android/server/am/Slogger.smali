.class public final Lcom/android/server/am/Slogger;
.super Ljava/lang/Object;
.source "Slogger.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final BROADCAST_TEST:Z

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final LEVEL:I

.field private static final TAG:Ljava/lang/String; = "VBRST-"

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field public static debug:Z

.field public static debugBroadcast:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/Slogger;->debug:Z

    .line 60
    nop

    .line 61
    const-string/jumbo v1, "persist.sys.vipbroadcast.log"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/Slogger;->BROADCAST_TEST:Z

    .line 63
    sget-boolean v2, Lcom/android/server/am/Slogger;->debug:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    sput-boolean v1, Lcom/android/server/am/Slogger;->debugBroadcast:Z

    .line 66
    const-string/jumbo v1, "persist.sys.assert.panic"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_2

    :cond_2
    const/4 v0, 0x4

    :goto_2
    sput v0, Lcom/android/server/am/Slogger;->LEVEL:I

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # Ljava/lang/String;

    .line 99
    sget v0, Lcom/android/server/am/Slogger;->LEVEL:I

    const/4 v1, 0x7

    if-lt v1, v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VBRST-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # Ljava/lang/String;

    .line 75
    sget v0, Lcom/android/server/am/Slogger;->LEVEL:I

    const/4 v1, 0x3

    if-lt v1, v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VBRST-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # Ljava/lang/String;

    .line 105
    sget-boolean v0, Lcom/android/server/am/Slogger;->debugBroadcast:Z

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VBRST-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    return-void
.end method

.method public static debugTraceBegin(Ljava/lang/String;)V
    .locals 2
    .param p0, "methodName"    # Ljava/lang/String;

    .line 111
    sget-boolean v0, Lcom/android/server/am/Slogger;->debugBroadcast:Z

    if-eqz v0, :cond_0

    .line 112
    const-wide/16 v0, 0x8

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 114
    :cond_0
    return-void
.end method

.method public static debugTraceEnd()V
    .locals 2

    .line 117
    sget-boolean v0, Lcom/android/server/am/Slogger;->debugBroadcast:Z

    if-eqz v0, :cond_0

    .line 118
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 120
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # Ljava/lang/String;

    .line 93
    sget v0, Lcom/android/server/am/Slogger;->LEVEL:I

    const/4 v1, 0x6

    if-lt v1, v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VBRST-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # Ljava/lang/String;

    .line 81
    sget v0, Lcom/android/server/am/Slogger;->LEVEL:I

    const/4 v1, 0x4

    if-lt v1, v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VBRST-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    return-void
.end method

.method public static switchOMMLog(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "switcher"    # Ljava/lang/String;

    .line 123
    const-string v0, "debug_on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 124
    sput-boolean v1, Lcom/android/server/am/Slogger;->debug:Z

    .line 125
    if-nez v1, :cond_1

    sget-boolean v0, Lcom/android/server/am/Slogger;->BROADCAST_TEST:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    sput-boolean v1, Lcom/android/server/am/Slogger;->debugBroadcast:Z

    .line 126
    const-string v0, "debug vipbroadcast switch is on!"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 128
    :cond_2
    sput-boolean v2, Lcom/android/server/am/Slogger;->debug:Z

    .line 129
    if-nez v2, :cond_4

    sget-boolean v0, Lcom/android/server/am/Slogger;->BROADCAST_TEST:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    sput-boolean v1, Lcom/android/server/am/Slogger;->debugBroadcast:Z

    .line 130
    const-string v0, "debug vipbroadcast switch is off!"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    :goto_2
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # Ljava/lang/String;

    .line 69
    sget v0, Lcom/android/server/am/Slogger;->LEVEL:I

    const/4 v1, 0x2

    if-lt v1, v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VBRST-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # Ljava/lang/String;

    .line 87
    sget v0, Lcom/android/server/am/Slogger;->LEVEL:I

    const/4 v1, 0x5

    if-lt v1, v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VBRST-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    return-void
.end method
