.class public abstract Lcom/android/server/biometrics/LoggableMonitor;
.super Ljava/lang/Object;
.source "LoggableMonitor.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "BiometricStats"


# instance fields
.field private mFirstAcquireTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sanitizeLatency(J)J
    .locals 2
    .param p1, "latency"    # J

    .line 196
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found a negative latency : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-wide/16 v0, -0x1

    return-wide v0

    .line 200
    :cond_0
    return-wide p1
.end method


# virtual methods
.method protected getFirstAcquireTimeMs()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/android/server/biometrics/LoggableMonitor;->mFirstAcquireTimeMs:J

    return-wide v0
.end method

.method protected isCryptoOperation()Z
    .locals 1

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method protected final logOnAcquired(Landroid/content/Context;III)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "acquiredInfo"    # I
    .param p3, "vendorCode"    # I
    .param p4, "targetUserId"    # I

    .line 74
    move-object v0, p0

    move/from16 v10, p2

    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsModality()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v11, v1

    .line 75
    .local v11, "isFace":Z
    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsModality()I

    move-result v1

    if-ne v1, v3, :cond_1

    move v2, v3

    :cond_1
    move v12, v2

    .line 76
    .local v12, "isFingerprint":Z
    if-nez v11, :cond_3

    if-eqz v12, :cond_2

    goto :goto_1

    .line 81
    :cond_2
    if-nez v10, :cond_6

    .line 82
    iget-wide v1, v0, Lcom/android/server/biometrics/LoggableMonitor;->mFirstAcquireTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_6

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/biometrics/LoggableMonitor;->mFirstAcquireTimeMs:J

    goto :goto_2

    .line 77
    :cond_3
    :goto_1
    if-eqz v12, :cond_4

    const/4 v1, 0x7

    if-eq v10, v1, :cond_5

    :cond_4
    if-eqz v11, :cond_6

    const/16 v1, 0x14

    if-ne v10, v1, :cond_6

    .line 79
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/biometrics/LoggableMonitor;->mFirstAcquireTimeMs:J

    .line 95
    :cond_6
    :goto_2
    const/16 v1, 0x57

    .line 96
    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsModality()I

    move-result v2

    .line 98
    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->isCryptoOperation()Z

    move-result v4

    .line 99
    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsAction()I

    move-result v5

    .line 100
    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsClient()I

    move-result v6

    .line 103
    move-object/from16 v13, p1

    move/from16 v14, p4

    invoke-static {v13, v14}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v9

    .line 95
    move/from16 v3, p4

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-static/range {v1 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIZ)V

    .line 104
    return-void
.end method

.method protected final logOnAuthenticated(Landroid/content/Context;ZZIZ)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authenticated"    # Z
    .param p3, "requireConfirmation"    # Z
    .param p4, "targetUserId"    # I
    .param p5, "isBiometricPrompt"    # Z

    .line 137
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 138
    .local v1, "authState":I
    if-nez p2, :cond_0

    .line 139
    const/4 v1, 0x1

    goto :goto_0

    .line 142
    :cond_0
    if-eqz p5, :cond_1

    if-eqz p3, :cond_1

    .line 143
    const/4 v1, 0x2

    goto :goto_0

    .line 145
    :cond_1
    const/4 v1, 0x3

    .line 150
    :goto_0
    iget-wide v2, v0, Lcom/android/server/biometrics/LoggableMonitor;->mFirstAcquireTimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/biometrics/LoggableMonitor;->mFirstAcquireTimeMs:J

    sub-long/2addr v2, v4

    goto :goto_1

    .line 152
    :cond_2
    const-wide/16 v2, -0x1

    :goto_1
    move-wide v12, v2

    .line 163
    .local v12, "latency":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication latency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricStats"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/16 v2, 0x58

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsModality()I

    move-result v3

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/LoggableMonitor;->isCryptoOperation()Z

    move-result v5

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsClient()I

    move-result v6

    .line 173
    invoke-direct {v0, v12, v13}, Lcom/android/server/biometrics/LoggableMonitor;->sanitizeLatency(J)J

    move-result-wide v9

    .line 174
    move-object/from16 v14, p1

    move/from16 v15, p4

    invoke-static {v14, v15}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v11

    .line 166
    move/from16 v4, p4

    move/from16 v7, p3

    move v8, v1

    invoke-static/range {v2 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIZIJZ)V

    .line 175
    return-void
.end method

.method protected final logOnEnrolled(IJZ)V
    .locals 8
    .param p1, "targetUserId"    # I
    .param p2, "latency"    # J
    .param p4, "enrollSuccessful"    # Z

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enroll latency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    nop

    .line 189
    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsModality()I

    move-result v3

    .line 191
    invoke-direct {p0, p2, p3}, Lcom/android/server/biometrics/LoggableMonitor;->sanitizeLatency(J)J

    move-result-wide v5

    .line 188
    const/16 v2, 0xb8

    move v4, p1

    move v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJZ)V

    .line 193
    return-void
.end method

.method protected final logOnError(Landroid/content/Context;III)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "error"    # I
    .param p3, "vendorCode"    # I
    .param p4, "targetUserId"    # I

    .line 108
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/biometrics/LoggableMonitor;->mFirstAcquireTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/biometrics/LoggableMonitor;->mFirstAcquireTimeMs:J

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    .line 121
    .local v1, "latency":J
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error latency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BiometricStats"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/16 v5, 0x59

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsModality()I

    move-result v6

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/LoggableMonitor;->isCryptoOperation()Z

    move-result v8

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsAction()I

    move-result v9

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsClient()I

    move-result v10

    .line 131
    move-object/from16 v3, p1

    move/from16 v4, p4

    invoke-static {v3, v4}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v13

    .line 132
    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/LoggableMonitor;->sanitizeLatency(J)J

    move-result-wide v14

    .line 123
    move/from16 v7, p4

    move/from16 v11, p2

    move/from16 v12, p3

    invoke-static/range {v5 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIZJ)V

    .line 133
    return-void
.end method

.method protected abstract statsAction()I
.end method

.method protected statsClient()I
    .locals 1

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract statsModality()I
.end method
