.class public final Lcom/android/server/job/controllers/StorageController$StorageTracker;
.super Landroid/content/BroadcastReceiver;
.source "StorageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/StorageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StorageTracker"
.end annotation


# instance fields
.field private mLastStorageSeq:I

.field private mStorageLow:Z

.field final synthetic this$0:Lcom/android/server/job/controllers/StorageController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/StorageController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/job/controllers/StorageController;

    .line 105
    iput-object p1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->this$0:Lcom/android/server/job/controllers/StorageController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mLastStorageSeq:I

    .line 106
    return-void
.end method


# virtual methods
.method public getSeq()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mLastStorageSeq:I

    return v0
.end method

.method public isStorageNotLow()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mStorageLow:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, p2}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->onReceiveInternal(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method public onReceiveInternal(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 133
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "action":Ljava/lang/String;
    iget v1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mLastStorageSeq:I

    const-string/jumbo v2, "seq"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mLastStorageSeq:I

    .line 136
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "JobScheduler.Storage"

    if-eqz v1, :cond_1

    .line 137
    invoke-static {}, Lcom/android/server/job/controllers/StorageController;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Available storage too low to do work. @ "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 139
    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mStorageLow:Z

    .line 142
    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->this$0:Lcom/android/server/job/controllers/StorageController;

    invoke-static {v1}, Lcom/android/server/job/controllers/StorageController;->access$100(Lcom/android/server/job/controllers/StorageController;)V

    goto :goto_0

    .line 143
    :cond_1
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 144
    invoke-static {}, Lcom/android/server/job/controllers/StorageController;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Available storage high enough to do work. @ "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 146
    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mStorageLow:Z

    .line 149
    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->this$0:Lcom/android/server/job/controllers/StorageController;

    invoke-static {v1}, Lcom/android/server/job/controllers/StorageController;->access$100(Lcom/android/server/job/controllers/StorageController;)V

    .line 151
    :cond_3
    :goto_0
    return-void
.end method

.method public startTracking()V
    .locals 2

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->this$0:Lcom/android/server/job/controllers/StorageController;

    iget-object v1, v1, Lcom/android/server/job/controllers/StorageController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    return-void
.end method
