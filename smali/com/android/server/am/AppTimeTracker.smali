.class public Lcom/android/server/am/AppTimeTracker;
.super Ljava/lang/Object;
.source "AppTimeTracker.java"


# instance fields
.field private final mPackageTimes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/MutableLong;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/app/PendingIntent;

.field private mStartedPackage:Ljava/lang/String;

.field private mStartedPackageTime:Landroid/util/MutableLong;

.field private mStartedTime:J

.field private mTotalTime:J


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    .line 47
    iput-object p1, p0, Lcom/android/server/am/AppTimeTracker;->mReceiver:Landroid/app/PendingIntent;

    .line 48
    return-void
.end method


# virtual methods
.method public deliverResult(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    invoke-virtual {p0}, Lcom/android/server/am/AppTimeTracker;->stop()V

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v0, "extras":Landroid/os/Bundle;
    iget-wide v1, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    const-string v3, "android.activity.usage_time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 86
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v1, "pkgs":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 88
    iget-object v3, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/MutableLong;

    iget-wide v4, v4, Landroid/util/MutableLong;->value:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 87
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 90
    .end local v2    # "i":I
    :cond_0
    const-string v2, "android.usage_time_packages"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 91
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v2, "fillinIntent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 94
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppTimeTracker;->mReceiver:Landroid/app/PendingIntent;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_1

    .line 95
    :catch_0
    move-exception v3

    .line 97
    :goto_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "details"    # Z

    .line 107
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mReceiver="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/AppTimeTracker;->mReceiver:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 108
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTotalTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    iget-wide v0, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 110
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 112
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPackageTime:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 113
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/MutableLong;

    iget-wide v1, v1, Landroid/util/MutableLong;->value:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 115
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "i":I
    :cond_0
    if-eqz p3, :cond_1

    iget-wide v0, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStartedTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    invoke-static {v0, v1, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 120
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 121
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStartedPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    :cond_1
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JZ)V
    .locals 13
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "details"    # Z

    .line 126
    move-object v0, p0

    move-object v8, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 127
    .local v9, "token":J
    iget-object v1, v0, Lcom/android/server/am/AppTimeTracker;->mReceiver:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide v2, 0x10900000001L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 128
    iget-wide v4, v0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    const-wide v6, 0x10300000002L

    invoke-virtual {p1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 129
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, v0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 130
    const-wide v4, 0x20b00000003L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 131
    .local v4, "ptoken":J
    iget-object v11, v0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v11, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 132
    iget-object v11, v0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v11, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/MutableLong;

    iget-wide v11, v11, Landroid/util/MutableLong;->value:J

    invoke-virtual {p1, v6, v7, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 133
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 129
    .end local v4    # "ptoken":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "i":I
    :cond_0
    if-eqz p4, :cond_1

    iget-wide v4, v0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    const-wide/16 v1, 0x0

    cmp-long v1, v4, v1

    if-eqz v1, :cond_1

    .line 136
    const-wide v2, 0x10b00000004L

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 136
    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 138
    const-wide v1, 0x10900000005L

    iget-object v3, v0, Lcom/android/server/am/AppTimeTracker;->mStartedPackage:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 140
    :cond_1
    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 141
    return-void
.end method

.method public dumpWithHeader(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "details"    # Z

    .line 100
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "AppTimeTracker #"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/am/AppTimeTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 104
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 52
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 53
    iput-wide v0, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    .line 55
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 56
    iget-object v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    if-eqz v2, :cond_1

    .line 57
    iget-wide v6, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    sub-long v6, v0, v6

    .line 58
    .local v6, "elapsedTime":J
    iget-wide v8, v2, Landroid/util/MutableLong;->value:J

    add-long/2addr v8, v6

    iput-wide v8, v2, Landroid/util/MutableLong;->value:J

    .line 59
    iget-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    .line 61
    .end local v6    # "elapsedTime":J
    :cond_1
    iput-object p1, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackage:Ljava/lang/String;

    .line 62
    iget-object v2, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/MutableLong;

    iput-object v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    .line 63
    if-nez v2, :cond_2

    .line 64
    new-instance v2, Landroid/util/MutableLong;

    invoke-direct {v2, v4, v5}, Landroid/util/MutableLong;-><init>(J)V

    iput-object v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    .line 65
    iget-object v3, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_2
    return-void
.end method

.method public stop()V
    .locals 5

    .line 71
    iget-wide v0, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    sub-long/2addr v0, v2

    .line 73
    .local v0, "elapsedTime":J
    iget-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    .line 74
    iget-object v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    if-eqz v2, :cond_0

    .line 75
    iget-wide v3, v2, Landroid/util/MutableLong;->value:J

    add-long/2addr v3, v0

    iput-wide v3, v2, Landroid/util/MutableLong;->value:J

    .line 77
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackage:Ljava/lang/String;

    .line 78
    iput-object v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    .line 80
    .end local v0    # "elapsedTime":J
    :cond_1
    return-void
.end method
