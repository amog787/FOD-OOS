.class public final Lcom/android/server/am/PendingIntentRecord;
.super Landroid/content/IIntentSender$Stub;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PendingIntentRecord$Key;
    }
.end annotation


# static fields
.field public static final FLAG_ACTIVITY_SENDER:I = 0x1

.field public static final FLAG_BROADCAST_SENDER:I = 0x2

.field public static final FLAG_SERVICE_SENDER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field canceled:Z

.field final controller:Lcom/android/server/am/PendingIntentController;

.field final key:Lcom/android/server/am/PendingIntentRecord$Key;

.field lastTag:Ljava/lang/String;

.field lastTagPrefix:Ljava/lang/String;

.field private mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;"
        }
    .end annotation
.end field

.field public final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;"
        }
    .end annotation
.end field

.field sent:Z

.field stringName:Ljava/lang/String;

.field final uid:I

.field private whitelistDuration:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/am/PendingIntentController;Lcom/android/server/am/PendingIntentRecord$Key;I)V
    .locals 1
    .param p1, "_controller"    # Lcom/android/server/am/PendingIntentController;
    .param p2, "_k"    # Lcom/android/server/am/PendingIntentRecord$Key;
    .param p3, "_u"    # I

    .line 211
    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 66
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    .line 67
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    .line 68
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    .line 212
    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    .line 213
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 214
    iput p3, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 215
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    .line 216
    return-void
.end method

.method private completeFinalize()V
    .locals 4

    .line 499
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 501
    .local v1, "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    if-ne v1, v2, :cond_0

    .line 502
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v2, p0}, Lcom/android/server/am/PendingIntentController;->decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    .line 505
    .end local v1    # "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    :cond_0
    monitor-exit v0

    .line 506
    return-void

    .line 505
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$hlEHdgdG_SS5n3v7IRr7e6QZgLQ(Lcom/android/server/am/PendingIntentRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    return-void
.end method


# virtual methods
.method clearAllowBgActivityStarts(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 248
    if-nez p1, :cond_0

    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 252
    return-void
.end method

.method public detachCancelListenersLocked()Landroid/os/RemoteCallbackList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 273
    .local v0, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/os/IResultReceiver;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 274
    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 509
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 510
    const-string v0, " packageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 511
    const-string v0, " featureId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 512
    const-string v0, " type="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 513
    const-string v0, " flags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 515
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "activity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 516
    const-string v0, " who="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 519
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestCode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 520
    const-string v0, " requestResolvedType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    .line 523
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2, v1}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-eqz v0, :cond_6

    .line 527
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 528
    const-string v0, " canceled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 530
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-eqz v0, :cond_9

    .line 531
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 532
    const-string/jumbo v0, "whitelistDuration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 533
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 534
    if-eqz v0, :cond_7

    .line 535
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 537
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 538
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 539
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 533
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    .end local v0    # "i":I
    :cond_8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 543
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_a

    .line 544
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCancelCallbacks:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 546
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 547
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 545
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 550
    .end local v0    # "i":I
    :cond_a
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 489
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/am/-$$Lambda$PendingIntentRecord$hlEHdgdG_SS5n3v7IRr7e6QZgLQ;->INSTANCE:Lcom/android/server/am/-$$Lambda$PendingIntentRecord$hlEHdgdG_SS5n3v7IRr7e6QZgLQ;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 495
    nop

    .line 496
    return-void

    .line 494
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 495
    throw v0
.end method

.method public registerCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .locals 1
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 255
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 259
    return-void
.end method

.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "whitelistToken"    # Landroid/os/IBinder;
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "options"    # Landroid/os/Bundle;

    .line 279
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    .line 281
    return-void
.end method

.method public sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
    .locals 39
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "whitelistToken"    # Landroid/os/IBinder;
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "resultTo"    # Landroid/os/IBinder;
    .param p8, "resultWho"    # Ljava/lang/String;
    .param p9, "requestCode"    # I
    .param p10, "flagsMask"    # I
    .param p11, "flagsValues"    # I
    .param p12, "options"    # Landroid/os/Bundle;

    .line 292
    move-object/from16 v15, p0

    move-object/from16 v14, p2

    move-object/from16 v13, p4

    move-object/from16 v12, p12

    const/4 v0, 0x1

    if-eqz v14, :cond_0

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setDefusable(Z)V

    .line 293
    :cond_0
    if-eqz v12, :cond_1

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 295
    :cond_1
    const/4 v1, 0x0

    .line 296
    .local v1, "duration":Ljava/lang/Long;
    const/4 v2, 0x0

    .line 297
    .local v2, "finalIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 298
    .local v3, "allIntents":[Landroid/content/Intent;
    const/4 v4, 0x0

    .line 299
    .local v4, "allResolvedTypes":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 300
    .local v5, "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    iget-object v6, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 301
    :try_start_0
    iget-boolean v7, v15, Lcom/android/server/am/PendingIntentRecord;->canceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_17

    const/16 v11, -0x60

    if-eqz v7, :cond_2

    .line 302
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v11

    .line 363
    :catchall_0
    move-exception v0

    move-object/from16 v25, p3

    move/from16 v26, p10

    move/from16 v27, p11

    move-object v11, v15

    goto/16 :goto_1f

    .line 305
    :cond_2
    :try_start_2
    iput-boolean v0, v15, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 306
    iget-object v7, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_17

    const/high16 v8, 0x40000000    # 2.0f

    and-int/2addr v7, v8

    if-eqz v7, :cond_3

    .line 307
    :try_start_3
    iget-object v7, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v7, v15, v0}, Lcom/android/server/am/PendingIntentController;->cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 310
    :cond_3
    :try_start_4
    iget-object v7, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_17

    if-eqz v7, :cond_4

    :try_start_5
    new-instance v7, Landroid/content/Intent;

    iget-object v8, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_4
    :try_start_6
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_17

    :goto_0
    move-object v10, v7

    .line 312
    .end local v2    # "finalIntent":Landroid/content/Intent;
    .local v10, "finalIntent":Landroid/content/Intent;
    :try_start_7
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_16

    const/high16 v7, 0x4000000

    and-int/2addr v2, v7

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    move v2, v0

    goto :goto_1

    :cond_5
    move v2, v7

    .line 313
    .local v2, "immutable":Z
    :goto_1
    if-nez v2, :cond_8

    .line 314
    if-eqz v14, :cond_7

    .line 315
    :try_start_8
    iget-object v8, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-virtual {v10, v14, v8}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    move-result v8

    .line 316
    .local v8, "changes":I
    and-int/lit8 v9, v8, 0x2

    if-nez v9, :cond_6

    .line 317
    iget-object v9, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local p3    # "resolvedType":Ljava/lang/String;
    .local v9, "resolvedType":Ljava/lang/String;
    goto :goto_2

    .line 316
    .end local v9    # "resolvedType":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    :cond_6
    move-object/from16 v9, p3

    .line 319
    .end local v8    # "changes":I
    .end local p3    # "resolvedType":Ljava/lang/String;
    .restart local v9    # "resolvedType":Ljava/lang/String;
    :goto_2
    move-object v8, v9

    goto :goto_3

    .line 363
    .end local v2    # "immutable":Z
    .end local v9    # "resolvedType":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v25, p3

    move/from16 v26, p10

    move/from16 v27, p11

    move-object v2, v10

    move-object v11, v15

    goto/16 :goto_1f

    .line 320
    .restart local v2    # "immutable":Z
    :cond_7
    :try_start_9
    iget-object v8, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 322
    .end local p3    # "resolvedType":Ljava/lang/String;
    .local v8, "resolvedType":Ljava/lang/String;
    :goto_3
    move/from16 v9, p10

    and-int/lit16 v9, v9, -0xc4

    .line 323
    .end local p10    # "flagsMask":I
    .local v9, "flagsMask":I
    and-int v16, p11, v9

    .line 324
    .end local p11    # "flagsValues":I
    .local v16, "flagsValues":I
    :try_start_a
    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v17

    not-int v11, v9

    and-int v11, v17, v11

    or-int v11, v11, v16

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object/from16 v25, v8

    move/from16 v26, v9

    move/from16 v27, v16

    goto :goto_4

    .line 363
    .end local v2    # "immutable":Z
    :catchall_2
    move-exception v0

    move-object/from16 v25, v8

    move/from16 v26, v9

    move-object v2, v10

    move-object v11, v15

    move/from16 v27, v16

    goto/16 :goto_1f

    .end local v8    # "resolvedType":Ljava/lang/String;
    .end local v9    # "flagsMask":I
    .end local v16    # "flagsValues":I
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p10    # "flagsMask":I
    .restart local p11    # "flagsValues":I
    :catchall_3
    move-exception v0

    move/from16 v9, p10

    move-object/from16 v25, p3

    move/from16 v27, p11

    move/from16 v26, v9

    move-object v2, v10

    move-object v11, v15

    goto/16 :goto_1f

    .line 326
    .restart local v2    # "immutable":Z
    :cond_8
    move/from16 v9, p10

    :try_start_b
    iget-object v8, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_15

    .end local p3    # "resolvedType":Ljava/lang/String;
    .restart local v8    # "resolvedType":Ljava/lang/String;
    move/from16 v27, p11

    move-object/from16 v25, v8

    move/from16 v26, v9

    .line 331
    .end local v8    # "resolvedType":Ljava/lang/String;
    .end local p10    # "flagsMask":I
    .end local p11    # "flagsValues":I
    .local v25, "resolvedType":Ljava/lang/String;
    .local v26, "flagsMask":I
    .local v27, "flagsValues":I
    :goto_4
    :try_start_c
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_14

    .line 332
    .local v8, "opts":Landroid/app/ActivityOptions;
    if-eqz v8, :cond_9

    .line 333
    :try_start_d
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getPendingIntentLaunchFlags()I

    move-result v9

    invoke-virtual {v10, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_5

    .line 363
    .end local v2    # "immutable":Z
    .end local v8    # "opts":Landroid/app/ActivityOptions;
    :catchall_4
    move-exception v0

    move-object v2, v10

    move-object v11, v15

    goto/16 :goto_1f

    .line 337
    .restart local v2    # "immutable":Z
    .restart local v8    # "opts":Landroid/app/ActivityOptions;
    :cond_9
    :goto_5
    :try_start_e
    iget-object v9, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->options:Lcom/android/server/wm/SafeActivityOptions;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_14

    move-object v5, v9

    .line 338
    if-nez v5, :cond_a

    .line 339
    :try_start_f
    new-instance v9, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v9, v8}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    move-object v5, v9

    move-object/from16 v28, v5

    goto :goto_6

    .line 341
    :cond_a
    :try_start_10
    invoke-virtual {v5, v8}, Lcom/android/server/wm/SafeActivityOptions;->setCallerOptions(Landroid/app/ActivityOptions;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_14

    move-object/from16 v28, v5

    .line 344
    .end local v5    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .local v28, "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    :goto_6
    :try_start_11
    iget-object v5, v15, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_13

    if-eqz v5, :cond_b

    .line 345
    :try_start_12
    iget-object v5, v15, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    move-object v1, v5

    move-object/from16 v29, v1

    goto :goto_7

    .line 363
    .end local v2    # "immutable":Z
    .end local v8    # "opts":Landroid/app/ActivityOptions;
    :catchall_5
    move-exception v0

    move-object v2, v10

    move-object v11, v15

    goto/16 :goto_1e

    .line 344
    .restart local v2    # "immutable":Z
    .restart local v8    # "opts":Landroid/app/ActivityOptions;
    :cond_b
    move-object/from16 v29, v1

    .line 348
    .end local v1    # "duration":Ljava/lang/Long;
    .local v29, "duration":Ljava/lang/Long;
    :goto_7
    :try_start_13
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_12

    const/4 v5, 0x2

    if-ne v1, v5, :cond_d

    :try_start_14
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    if-eqz v1, :cond_d

    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v1, v1

    if-le v1, v0, :cond_d

    .line 352
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v1, v1

    new-array v1, v1, [Landroid/content/Intent;

    move-object v3, v1

    .line 353
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    move-object v4, v1

    .line 354
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    iget-object v9, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v9, v9

    invoke-static {v1, v7, v3, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 356
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    iget-object v9, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    array-length v9, v9

    invoke-static {v1, v7, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    :cond_c
    array-length v1, v3

    sub-int/2addr v1, v0

    aput-object v10, v3, v1

    .line 360
    array-length v1, v4

    sub-int/2addr v1, v0

    aput-object v25, v4, v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    goto :goto_8

    .line 363
    .end local v2    # "immutable":Z
    .end local v8    # "opts":Landroid/app/ActivityOptions;
    :catchall_6
    move-exception v0

    move-object v2, v10

    move-object v11, v15

    goto/16 :goto_1d

    :cond_d
    move-object/from16 v30, v3

    move-object/from16 v31, v4

    .end local v3    # "allIntents":[Landroid/content/Intent;
    .end local v4    # "allResolvedTypes":[Ljava/lang/String;
    .local v30, "allIntents":[Landroid/content/Intent;
    .local v31, "allResolvedTypes":[Ljava/lang/String;
    :goto_8
    :try_start_15
    monitor-exit v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_11

    .line 366
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 367
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v32

    .line 368
    .local v32, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v33

    .line 370
    .local v33, "origId":J
    const/16 v35, 0x0

    .line 372
    .local v35, "res":I
    if-eqz v29, :cond_12

    .line 373
    :try_start_16
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1, v11}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v1

    .line 374
    .local v1, "procState":I
    invoke-static {v1}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v2

    if-nez v2, :cond_11

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 376
    .local v2, "tag":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "pendingintent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-static {v2, v11}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 378
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 380
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 381
    :cond_e
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 382
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;)V

    goto :goto_9

    .line 383
    :cond_f
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 384
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_10
    :goto_9
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v4, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 387
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 386
    move-object/from16 v16, v3

    move/from16 v17, v32

    move/from16 v18, v11

    move/from16 v19, v4

    invoke-virtual/range {v16 .. v22}, Landroid/app/ActivityManagerInternal;->tempWhitelistForPendingIntent(IIIJLjava/lang/String;)V

    .line 388
    .end local v2    # "tag":Ljava/lang/StringBuilder;
    goto :goto_a

    .line 389
    :cond_11
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not doing whitelist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": caller state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    goto :goto_a

    .line 480
    .end local v1    # "procState":I
    :catchall_7
    move-exception v0

    move/from16 v21, v11

    move-object v11, v15

    goto/16 :goto_1c

    .line 393
    :cond_12
    :goto_a
    if-eqz p5, :cond_13

    move v1, v0

    goto :goto_b

    :cond_13
    move v1, v7

    :goto_b
    move/from16 v36, v1

    .line 394
    .local v36, "sendFinish":Z
    :try_start_17
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_10

    .line 395
    .local v1, "userId":I
    const/4 v2, -0x2

    if-ne v1, v2, :cond_14

    .line 396
    :try_start_18
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v2}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserId()I

    move-result v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    move v1, v2

    move/from16 v37, v1

    goto :goto_c

    .line 395
    :cond_14
    move/from16 v37, v1

    .line 400
    .end local v1    # "userId":I
    .local v37, "userId":I
    :goto_c
    :try_start_19
    iget v1, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_10

    if-eq v1, v11, :cond_15

    :try_start_1a
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 401
    invoke-virtual {v1, v11}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isUidForeground(I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    if-eqz v1, :cond_15

    move v1, v0

    goto :goto_d

    :cond_15
    move v1, v7

    :goto_d
    move/from16 v38, v1

    .line 406
    .local v38, "allowTrampoline":Z
    :try_start_1b
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_10

    if-eq v1, v0, :cond_1d

    if-eq v1, v5, :cond_1b

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1a

    const/4 v2, 0x4

    const/4 v3, 0x5

    if-eq v1, v2, :cond_16

    if-eq v1, v3, :cond_16

    move-object/from16 v20, v10

    move/from16 v21, v11

    goto/16 :goto_18

    .line 459
    :cond_16
    :try_start_1c
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v2, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-ne v4, v3, :cond_17

    move/from16 v20, v0

    goto :goto_e

    :cond_17
    move/from16 v20, v7

    :goto_e
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    iget-object v5, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    .line 462
    invoke-virtual {v5, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    if-eqz v38, :cond_18

    goto :goto_f

    :cond_18
    move/from16 v24, v7

    goto :goto_10

    :cond_19
    :goto_f
    move/from16 v24, v0

    .line 459
    :goto_10
    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v18, v10

    move-object/from16 v19, v25

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v23, v37

    invoke-virtual/range {v16 .. v24}, Landroid/app/ActivityManagerInternal;->startServiceInPackage(ILandroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZ)Landroid/content/ComponentName;
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    .line 468
    move-object/from16 v20, v10

    move/from16 v21, v11

    goto/16 :goto_18

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Landroid/os/TransactionTooLargeException;
    const/16 v1, -0x60

    move v9, v1

    move-object/from16 v20, v10

    move/from16 v21, v11

    .end local v35    # "res":I
    .local v1, "res":I
    goto/16 :goto_19

    .line 464
    .end local v0    # "e":Landroid/os/TransactionTooLargeException;
    .end local v1    # "res":I
    .restart local v35    # "res":I
    :catch_1
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1d
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startService intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 468
    move-object/from16 v20, v10

    move/from16 v21, v11

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_18

    .line 435
    :cond_1a
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/16 v17, -0x1

    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    move-object/from16 v16, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, p1

    move-object/from16 v22, v10

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/wm/ActivityTaskManagerInternal;->sendActivityResult(ILandroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    .line 437
    move-object/from16 v20, v10

    move/from16 v21, v11

    goto/16 :goto_18

    .line 413
    :cond_1b
    :try_start_1e
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_3
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    if-eqz v1, :cond_1c

    :try_start_1f
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v1, v1

    if-le v1, v0, :cond_1c

    .line 414
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v2, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    .line 419
    invoke-virtual {v3, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v16
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_3
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    .line 414
    move/from16 v3, v32

    move v4, v11

    move-object/from16 v7, v30

    move-object/from16 v8, v31

    move-object/from16 v9, p7

    move-object/from16 v20, v10

    .end local v10    # "finalIntent":Landroid/content/Intent;
    .local v20, "finalIntent":Landroid/content/Intent;
    move-object/from16 v10, v28

    move/from16 v21, v11

    .end local v11    # "callingUid":I
    .local v21, "callingUid":I
    move/from16 v11, v37

    move v12, v0

    move-object/from16 v13, p0

    move/from16 v14, v16

    :try_start_20
    invoke-virtual/range {v1 .. v14}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_2
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    .end local v35    # "res":I
    .local v0, "res":I
    goto :goto_11

    .line 480
    .end local v0    # "res":I
    .end local v36    # "sendFinish":Z
    .end local v37    # "userId":I
    .end local v38    # "allowTrampoline":Z
    .restart local v35    # "res":I
    :catchall_8
    move-exception v0

    move-object v11, v15

    goto/16 :goto_17

    .end local v20    # "finalIntent":Landroid/content/Intent;
    .end local v21    # "callingUid":I
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v11    # "callingUid":I
    :catchall_9
    move-exception v0

    move/from16 v21, v11

    move-object v11, v15

    goto :goto_12

    .line 413
    .restart local v36    # "sendFinish":Z
    .restart local v37    # "userId":I
    .restart local v38    # "allowTrampoline":Z
    :cond_1c
    move-object/from16 v20, v10

    move/from16 v21, v11

    .line 421
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .end local v11    # "callingUid":I
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    .restart local v21    # "callingUid":I
    :try_start_21
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v2, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v0, 0x0

    const-string v16, "PendingIntentRecord"

    const/16 v17, 0x0

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    .line 427
    move-object/from16 v14, p4

    invoke-virtual {v3, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v19

    .line 421
    move/from16 v3, v32

    move/from16 v4, v21

    move-object/from16 v7, v20

    move-object/from16 v8, v25

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v13, v28

    move/from16 v14, v37

    move-object v15, v0

    move-object/from16 v18, p0

    invoke-virtual/range {v1 .. v19}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_2
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    .line 432
    .end local v35    # "res":I
    .restart local v0    # "res":I
    :goto_11
    move v9, v0

    goto/16 :goto_19

    .line 430
    .end local v0    # "res":I
    .restart local v35    # "res":I
    :catch_2
    move-exception v0

    goto :goto_13

    .line 480
    .end local v20    # "finalIntent":Landroid/content/Intent;
    .end local v21    # "callingUid":I
    .end local v36    # "sendFinish":Z
    .end local v37    # "userId":I
    .end local v38    # "allowTrampoline":Z
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v11    # "callingUid":I
    :catchall_a
    move-exception v0

    move/from16 v21, v11

    move-object/from16 v11, p0

    .end local v10    # "finalIntent":Landroid/content/Intent;
    .end local v11    # "callingUid":I
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    .restart local v21    # "callingUid":I
    :goto_12
    goto/16 :goto_1c

    .line 430
    .end local v20    # "finalIntent":Landroid/content/Intent;
    .end local v21    # "callingUid":I
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v11    # "callingUid":I
    .restart local v36    # "sendFinish":Z
    .restart local v37    # "userId":I
    .restart local v38    # "allowTrampoline":Z
    :catch_3
    move-exception v0

    move-object/from16 v20, v10

    move/from16 v21, v11

    .line 431
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .end local v11    # "callingUid":I
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    .restart local v21    # "callingUid":I
    :goto_13
    :try_start_22
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startActivity intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    .line 433
    nop

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_18

    .line 442
    .end local v20    # "finalIntent":Landroid/content/Intent;
    .end local v21    # "callingUid":I
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v11    # "callingUid":I
    :cond_1d
    move-object/from16 v20, v10

    move/from16 v21, v11

    .end local v10    # "finalIntent":Landroid/content/Intent;
    .end local v11    # "callingUid":I
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    .restart local v21    # "callingUid":I
    move-object/from16 v15, p0

    :try_start_23
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    iget v4, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz p5, :cond_1e

    move/from16 v16, v0

    goto :goto_14

    :cond_1e
    move/from16 v16, v7

    :goto_14
    const/16 v17, 0x0

    iget-object v5, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    .line 447
    move-object/from16 v14, p4

    invoke-virtual {v5, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    if-eqz v38, :cond_1f

    goto :goto_15

    :cond_1f
    move/from16 v18, v7

    goto :goto_16

    :cond_20
    :goto_15
    move/from16 v18, v0

    .line 442
    :goto_16
    move/from16 v5, v21

    move/from16 v6, v32

    move-object/from16 v7, v20

    move-object/from16 v8, v25

    move-object/from16 v9, p5

    move/from16 v10, p1

    move-object/from16 v13, p6

    move-object/from16 v14, p12

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v37

    invoke-virtual/range {v1 .. v18}, Landroid/app/ActivityManagerInternal;->broadcastIntentInPackage(Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZ)I

    move-result v0
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_4
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    .line 449
    .local v0, "sent":I
    if-nez v0, :cond_21

    .line 450
    const/16 v36, 0x0

    .line 454
    .end local v0    # "sent":I
    :cond_21
    move/from16 v9, v35

    goto :goto_19

    .line 480
    .end local v36    # "sendFinish":Z
    .end local v37    # "userId":I
    .end local v38    # "allowTrampoline":Z
    :catchall_b
    move-exception v0

    move-object/from16 v11, p0

    :goto_17
    move-object/from16 v10, v20

    goto/16 :goto_1c

    .line 452
    .restart local v36    # "sendFinish":Z
    .restart local v37    # "userId":I
    .restart local v38    # "allowTrampoline":Z
    :catch_4
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_24
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startActivity intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_f

    .line 455
    nop

    .line 472
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v20    # "finalIntent":Landroid/content/Intent;
    .end local v21    # "callingUid":I
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v11    # "callingUid":I
    :goto_18
    move/from16 v9, v35

    .end local v10    # "finalIntent":Landroid/content/Intent;
    .end local v11    # "callingUid":I
    .end local v35    # "res":I
    .local v9, "res":I
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    .restart local v21    # "callingUid":I
    :goto_19
    if-eqz v36, :cond_22

    const/16 v1, -0x60

    if-eq v9, v1, :cond_22

    .line 474
    :try_start_25
    new-instance v2, Landroid/content/Intent;
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_7
    .catchall {:try_start_25 .. :try_end_25} :catchall_e

    move-object/from16 v10, v20

    .end local v20    # "finalIntent":Landroid/content/Intent;
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    :try_start_26
    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_6
    .catchall {:try_start_26 .. :try_end_26} :catchall_d

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v11, p0

    :try_start_27
    iget-object v0, v11, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v8, v0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    move-object/from16 v1, p5

    invoke-interface/range {v1 .. v8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_5
    .catchall {:try_start_27 .. :try_end_27} :catchall_c

    .line 477
    goto :goto_1b

    .line 480
    .end local v36    # "sendFinish":Z
    .end local v37    # "userId":I
    .end local v38    # "allowTrampoline":Z
    :catchall_c
    move-exception v0

    goto :goto_1a

    .line 476
    .restart local v36    # "sendFinish":Z
    .restart local v37    # "userId":I
    .restart local v38    # "allowTrampoline":Z
    :catch_5
    move-exception v0

    goto :goto_1b

    .line 480
    .end local v36    # "sendFinish":Z
    .end local v37    # "userId":I
    .end local v38    # "allowTrampoline":Z
    :catchall_d
    move-exception v0

    move-object/from16 v11, p0

    :goto_1a
    move/from16 v35, v9

    goto :goto_1c

    .line 476
    .restart local v36    # "sendFinish":Z
    .restart local v37    # "userId":I
    .restart local v38    # "allowTrampoline":Z
    :catch_6
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_1b

    .line 480
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .end local v36    # "sendFinish":Z
    .end local v37    # "userId":I
    .end local v38    # "allowTrampoline":Z
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    :catchall_e
    move-exception v0

    move-object/from16 v11, p0

    move-object/from16 v10, v20

    move/from16 v35, v9

    .end local v20    # "finalIntent":Landroid/content/Intent;
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    goto :goto_1c

    .line 476
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    .restart local v36    # "sendFinish":Z
    .restart local v37    # "userId":I
    .restart local v38    # "allowTrampoline":Z
    :catch_7
    move-exception v0

    move-object/from16 v11, p0

    move-object/from16 v10, v20

    .end local v20    # "finalIntent":Landroid/content/Intent;
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    goto :goto_1b

    .line 472
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    :cond_22
    move-object/from16 v11, p0

    move-object/from16 v10, v20

    .line 480
    .end local v20    # "finalIntent":Landroid/content/Intent;
    .end local v36    # "sendFinish":Z
    .end local v37    # "userId":I
    .end local v38    # "allowTrampoline":Z
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    :goto_1b
    invoke-static/range {v33 .. v34}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 481
    nop

    .line 483
    return v9

    .line 480
    .end local v9    # "res":I
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    .restart local v35    # "res":I
    :catchall_f
    move-exception v0

    move-object/from16 v11, p0

    move-object/from16 v10, v20

    .end local v20    # "finalIntent":Landroid/content/Intent;
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    goto :goto_1c

    .end local v21    # "callingUid":I
    .restart local v11    # "callingUid":I
    :catchall_10
    move-exception v0

    move/from16 v21, v11

    move-object v11, v15

    .end local v11    # "callingUid":I
    .restart local v21    # "callingUid":I
    :goto_1c
    invoke-static/range {v33 .. v34}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 481
    throw v0

    .line 363
    .end local v21    # "callingUid":I
    .end local v32    # "callingPid":I
    .end local v33    # "origId":J
    .end local v35    # "res":I
    :catchall_11
    move-exception v0

    move-object v11, v15

    move-object v2, v10

    move-object/from16 v5, v28

    move-object/from16 v1, v29

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    goto :goto_1f

    .end local v30    # "allIntents":[Landroid/content/Intent;
    .end local v31    # "allResolvedTypes":[Ljava/lang/String;
    .restart local v3    # "allIntents":[Landroid/content/Intent;
    .restart local v4    # "allResolvedTypes":[Ljava/lang/String;
    :catchall_12
    move-exception v0

    move-object v11, v15

    move-object v2, v10

    :goto_1d
    move-object/from16 v5, v28

    move-object/from16 v1, v29

    goto :goto_1f

    .end local v29    # "duration":Ljava/lang/Long;
    .local v1, "duration":Ljava/lang/Long;
    :catchall_13
    move-exception v0

    move-object v11, v15

    move-object v2, v10

    :goto_1e
    move-object/from16 v5, v28

    goto :goto_1f

    .end local v28    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v5    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    :catchall_14
    move-exception v0

    move-object v11, v15

    move-object v2, v10

    goto :goto_1f

    .end local v25    # "resolvedType":Ljava/lang/String;
    .end local v26    # "flagsMask":I
    .end local v27    # "flagsValues":I
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p10    # "flagsMask":I
    .restart local p11    # "flagsValues":I
    :catchall_15
    move-exception v0

    move-object v11, v15

    move-object/from16 v25, p3

    move/from16 v27, p11

    move/from16 v26, v9

    move-object v2, v10

    goto :goto_1f

    :catchall_16
    move-exception v0

    move/from16 v9, p10

    move-object v11, v15

    move-object/from16 v25, p3

    move/from16 v27, p11

    move/from16 v26, v9

    move-object v2, v10

    goto :goto_1f

    .end local v10    # "finalIntent":Landroid/content/Intent;
    .local v2, "finalIntent":Landroid/content/Intent;
    :catchall_17
    move-exception v0

    move/from16 v9, p10

    move-object v11, v15

    move-object/from16 v25, p3

    move/from16 v27, p11

    move/from16 v26, v9

    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p10    # "flagsMask":I
    .end local p11    # "flagsValues":I
    .restart local v25    # "resolvedType":Ljava/lang/String;
    .restart local v26    # "flagsMask":I
    .restart local v27    # "flagsValues":I
    :goto_1f
    :try_start_28
    monitor-exit v6
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_18

    throw v0

    :catchall_18
    move-exception v0

    goto :goto_1f
.end method

.method public sendWithResult(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 13
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "whitelistToken"    # Landroid/os/IBinder;
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "options"    # Landroid/os/Bundle;

    .line 285
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method setAllowBgActivityStarts(Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .line 235
    if-nez p1, :cond_0

    return-void

    .line 236
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_1
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_2
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3

    .line 243
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_3
    return-void
.end method

.method setWhitelistDurationLocked(Landroid/os/IBinder;J)V
    .locals 3
    .param p1, "whitelistToken"    # Landroid/os/IBinder;
    .param p2, "duration"    # J

    .line 219
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2

    .line 225
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 227
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    .line 231
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 553
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 554
    return-object v0

    .line 556
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 557
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "PendingIntentRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 560
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 562
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 563
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 566
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-eqz v1, :cond_4

    .line 568
    const-string v1, " (whitelist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 570
    if-eqz v1, :cond_2

    .line 571
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 569
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 577
    .end local v1    # "i":I
    :cond_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :cond_4
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method public unregisterCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .locals 1
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 262
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    .line 263
    return-void

    .line 265
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 266
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 269
    :cond_1
    return-void
.end method
