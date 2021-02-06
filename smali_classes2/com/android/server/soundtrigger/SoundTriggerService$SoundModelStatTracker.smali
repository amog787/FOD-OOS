.class Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;
.super Ljava/lang/Object;
.source "SoundTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoundModelStatTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;
    }
.end annotation


# instance fields
.field private final mModelStats:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/util/UUID;",
            "Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 129
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->mModelStats:Ljava/util/TreeMap;

    .line 131
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 168
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 169
    .local v0, "curTime":J
    const-string v2, "Model Stats:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->mModelStats:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 171
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/UUID;

    .line 172
    .local v4, "uuid":Ljava/util/UUID;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;

    .line 173
    .local v5, "stat":Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;
    iget-wide v6, v5, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mTotalTimeMsec:J

    .line 174
    .local v6, "totalTimeMsec":J
    iget-boolean v8, v5, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mIsStarted:Z

    if-eqz v8, :cond_0

    .line 175
    iget-wide v8, v5, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mLastStartTimestampMsec:J

    sub-long v8, v0, v8

    add-long/2addr v6, v8

    .line 177
    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", total_time(msec)="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", total_count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v5, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mStartCount:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", last_start="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v5, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mLastStartTimestampMsec:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", last_stop="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v5, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mLastStopTimestampMsec:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;>;"
    .end local v4    # "uuid":Ljava/util/UUID;
    .end local v5    # "stat":Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;
    .end local v6    # "totalTimeMsec":J
    goto :goto_0

    .line 182
    :cond_1
    monitor-exit p0

    return-void

    .line 167
    .end local v0    # "curTime":J
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onStart(Ljava/util/UUID;)V
    .locals 5
    .param p1, "id"    # Ljava/util/UUID;

    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->mModelStats:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;

    .line 135
    .local v0, "stat":Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;
    if-nez v0, :cond_0

    .line 136
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;

    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;)V

    move-object v0, v1

    .line 137
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->mModelStats:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mIsStarted:Z

    if-eqz v1, :cond_1

    .line 141
    const-string v1, "SoundTriggerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error onStart(): Model "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already started"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 145
    :cond_1
    :try_start_1
    iget-wide v1, v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mStartCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mStartCount:J

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mLastStartTimestampMsec:J

    .line 147
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mIsStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 133
    .end local v0    # "stat":Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;
    .end local p1    # "id":Ljava/util/UUID;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onStop(Ljava/util/UUID;)V
    .locals 7
    .param p1, "id"    # Ljava/util/UUID;

    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->mModelStats:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;

    .line 152
    .local v0, "stat":Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;
    if-nez v0, :cond_0

    .line 153
    const-string v1, "SoundTriggerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error onStop(): Model "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has no stats available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 157
    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;
    :cond_0
    :try_start_1
    iget-boolean v1, v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mIsStarted:Z

    if-nez v1, :cond_1

    .line 158
    const-string v1, "SoundTriggerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error onStop(): Model "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already stopped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 162
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mLastStopTimestampMsec:J

    .line 163
    iget-wide v1, v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mTotalTimeMsec:J

    iget-wide v3, v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mLastStopTimestampMsec:J

    iget-wide v5, v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mLastStartTimestampMsec:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mTotalTimeMsec:J

    .line 164
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mIsStarted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 150
    .end local v0    # "stat":Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;
    .end local p1    # "id":Ljava/util/UUID;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
