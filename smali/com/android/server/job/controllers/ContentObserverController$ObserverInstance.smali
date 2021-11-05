.class final Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
.super Landroid/database/ContentObserver;
.source "ContentObserverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ContentObserverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ObserverInstance"
.end annotation


# instance fields
.field final mJobs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/ContentObserverController$JobInstance;",
            ">;"
        }
    .end annotation
.end field

.field final mUri:Landroid/app/job/JobInfo$TriggerContentUri;

.field final mUserId:I

.field final synthetic this$0:Lcom/android/server/job/controllers/ContentObserverController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ContentObserverController;Landroid/os/Handler;Landroid/app/job/JobInfo$TriggerContentUri;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/job/controllers/ContentObserverController;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "uri"    # Landroid/app/job/JobInfo$TriggerContentUri;
    .param p4, "userId"    # I

    .line 196
    iput-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    .line 197
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 193
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    .line 198
    iput-object p3, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUri:Landroid/app/job/JobInfo$TriggerContentUri;

    .line 199
    iput p4, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUserId:I

    .line 200
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 204
    invoke-static {}, Lcom/android/server/job/controllers/ContentObserverController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChange(self="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " when mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUri:Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.ContentObserver"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 210
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 211
    iget-object v3, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 212
    .local v3, "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    iget-object v4, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    if-nez v4, :cond_1

    .line 213
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    .line 215
    :cond_1
    iget-object v4, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/16 v5, 0x32

    if-ge v4, v5, :cond_2

    .line 216
    iget-object v4, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v4, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_2
    iget-object v4, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-nez v4, :cond_3

    .line 219
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 221
    :cond_3
    iget-object v4, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {v3}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->scheduleLocked()V

    .line 210
    .end local v3    # "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_4
    monitor-exit v0

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
