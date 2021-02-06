.class public Lcom/android/server/notification/PulledStats;
.super Ljava/lang/Object;
.source "PulledStats.java"


# static fields
.field static final TAG:Ljava/lang/String; = "PulledStats"


# instance fields
.field private mTimePeriodEndMs:J

.field private final mTimePeriodStartMs:J

.field private mUndecoratedPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "startMs"    # J

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/android/server/notification/PulledStats;->mTimePeriodStartMs:J

    iput-wide p1, p0, Lcom/android/server/notification/PulledStats;->mTimePeriodEndMs:J

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PulledStats;->mUndecoratedPackageNames:Ljava/util/List;

    .line 45
    return-void
.end method


# virtual methods
.method public addUndecoratedPackage(Ljava/lang/String;J)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timestampMs"    # J

    .line 126
    iget-object v0, p0, Lcom/android/server/notification/PulledStats;->mUndecoratedPackageNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-wide v0, p0, Lcom/android/server/notification/PulledStats;->mTimePeriodEndMs:J

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/PulledStats;->mTimePeriodEndMs:J

    .line 128
    return-void
.end method

.method public dump(ILjava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 4
    .param p1, "report"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 84
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown pulled stats request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :cond_0
    const-string v0, "  Packages with undecordated notifications ("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    iget-wide v0, p0, Lcom/android/server/notification/PulledStats;->mTimePeriodStartMs:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 88
    const-string v0, " - "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    iget-wide v0, p0, Lcom/android/server/notification/PulledStats;->mTimePeriodEndMs:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 90
    const-string v0, "):"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/server/notification/PulledStats;->mUndecoratedPackageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 92
    const-string v0, "    none"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/PulledStats;->mUndecoratedPackageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 95
    .local v1, "pkg":Ljava/lang/String;
    iget-boolean v2, p3, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v2, :cond_2

    iget-object v2, p3, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 96
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 100
    :cond_4
    nop

    .line 106
    :goto_1
    return-void
.end method

.method public endTimeMs()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/android/server/notification/PulledStats;->mTimePeriodEndMs:J

    return-wide v0
.end method

.method toParcelFileDescriptor(I)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "report"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 50
    .local v0, "fds":[Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown pulled stats request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PulledStats"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    :cond_0
    new-instance v1, Lcom/android/server/notification/PulledStats$1;

    const-string v2, "NotificationManager pulled metric output"

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/android/server/notification/PulledStats$1;-><init>(Lcom/android/server/notification/PulledStats;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;I)V

    .line 66
    .local v1, "thr":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 67
    nop

    .line 73
    .end local v1    # "thr":Ljava/lang/Thread;
    :goto_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method writeToProto(ILandroid/util/proto/ProtoOutputStream;)V
    .locals 6
    .param p1, "report"    # I
    .param p2, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 110
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown pulled stats request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PulledStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/PulledStats;->mUndecoratedPackageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    .local v1, "pkg":Ljava/lang/String;
    const-wide v2, 0x20b00000001L

    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 114
    .local v2, "token":J
    const-wide v4, 0x10900000001L

    invoke-virtual {p2, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 115
    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 116
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "token":J
    goto :goto_0

    .line 117
    :cond_1
    nop

    .line 123
    :goto_1
    return-void
.end method
