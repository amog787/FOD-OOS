.class public Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;
.super Lcom/android/server/notification/ManagedServices;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationAssistants"
.end annotation


# static fields
.field private static final ATT_TYPES:Ljava/lang/String; = "types"

.field private static final ATT_USER_SET:Ljava/lang/String; = "user_set"

.field private static final TAG_ALLOWED_ADJUSTMENT_TYPES:Ljava/lang/String; = "q_allowed_adjustments"

.field static final TAG_ENABLED_NOTIFICATION_ASSISTANTS:Ljava/lang/String; = "enabled_assistants"


# instance fields
.field private mAllowedAdjustments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mUserSetMap:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lock"    # Ljava/lang/Object;
    .param p4, "up"    # Lcom/android/server/notification/ManagedServices$UserProfiles;
    .param p5, "pm"    # Landroid/content/pm/IPackageManager;

    .line 8474
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 8475
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    .line 8467
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    .line 8469
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mUserSetMap:Landroid/util/ArrayMap;

    .line 8471
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    .line 8479
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_ALLOWED_ADJUSTMENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 8480
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_ALLOWED_ADJUSTMENTS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8479
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8482
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "x2"    # Ljava/lang/String;

    .line 8460
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantSnoozedLocked(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .line 8460
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onNotificationEnqueuedLocked(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method private isVerboseLogEnabled()Z
    .locals 2

    .line 8853
    const-string/jumbo v0, "notification_assistant"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$notifyAssistantLocked$9(Ljava/util/function/BiConsumer;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .locals 0
    .param p0, "callback"    # Ljava/util/function/BiConsumer;
    .param p1, "assistant"    # Landroid/service/notification/INotificationListener;
    .param p2, "sbnHolder"    # Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 8805
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ZLjava/util/function/BiConsumer;)V
    .locals 10
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "sameUserOnly"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/StatusBarNotification;",
            "Z",
            "Ljava/util/function/BiConsumer<",
            "Landroid/service/notification/INotificationListener;",
            "Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;",
            ">;)V"
        }
    .end annotation

    .line 8782
    .local p3, "callback":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;>;"
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$TrimCache;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {v0, v1, p1}, Lcom/android/server/notification/NotificationManagerService$TrimCache;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)V

    .line 8786
    .local v0, "trimCache":Lcom/android/server/notification/NotificationManagerService$TrimCache;
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isVerboseLogEnabled()Z

    move-result v1

    .line 8787
    .local v1, "debug":Z
    if-eqz v1, :cond_0

    .line 8788
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyAssistantLocked() called with: sbn = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "], sameUserOnly = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "], callback = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8792
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8793
    .local v3, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4, p1, v3}, Lcom/android/server/notification/NotificationManagerService;->access$5200(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p2, :cond_1

    .line 8794
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSameUser(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 8795
    .local v4, "sbnVisible":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 8796
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyAssistantLocked info="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " snbVisible="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8798
    :cond_3
    if-nez v4, :cond_4

    .line 8799
    goto :goto_0

    .line 8801
    :cond_4
    iget-object v5, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v5, Landroid/service/notification/INotificationListener;

    .line 8802
    .local v5, "assistant":Landroid/service/notification/INotificationListener;
    invoke-virtual {v0, v3}, Lcom/android/server/notification/NotificationManagerService$TrimCache;->ForListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    .line 8803
    .local v6, "sbnToPost":Landroid/service/notification/StatusBarNotification;
    new-instance v7, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    invoke-direct {v7, v6}, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 8805
    .local v7, "sbnHolder":Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v8

    new-instance v9, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$FrOqX0VMAS0gs6vhrmVEabwpi2k;

    invoke-direct {v9, p3, v5, v7}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$FrOqX0VMAS0gs6vhrmVEabwpi2k;-><init>(Ljava/util/function/BiConsumer;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V

    invoke-virtual {v8, v9}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 8806
    .end local v3    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v4    # "sbnVisible":Z
    .end local v5    # "assistant":Landroid/service/notification/INotificationListener;
    .end local v6    # "sbnToPost":Landroid/service/notification/StatusBarNotification;
    .end local v7    # "sbnHolder":Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;
    goto :goto_0

    .line 8807
    :cond_5
    return-void
.end method

.method private notifyAssistantSnoozedLocked(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "snoozeCriterionId"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 8755
    new-instance v0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$hZf_EguDPjMH_PBC0gm7sadRDTE;

    invoke-direct {v0, p0, p2}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$hZf_EguDPjMH_PBC0gm7sadRDTE;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ZLjava/util/function/BiConsumer;)V

    .line 8766
    return-void
.end method

.method private notifyCapabilitiesChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8630
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 8632
    .local v0, "assistant":Landroid/service/notification/INotificationListener;
    :try_start_0
    invoke-interface {v0}, Landroid/service/notification/INotificationListener;->onAllowedAdjustmentsChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8635
    goto :goto_0

    .line 8633
    :catch_0
    move-exception v1

    .line 8634
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to notify assistant (capabilities): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8636
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private notifySeen(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8640
    .local p2, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 8642
    .local v0, "assistant":Landroid/service/notification/INotificationListener;
    :try_start_0
    invoke-interface {v0, p2}, Landroid/service/notification/INotificationListener;->onNotificationsSeen(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8645
    goto :goto_0

    .line 8643
    :catch_0
    move-exception v1

    .line 8644
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to notify assistant (seen): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8646
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private onNotificationEnqueuedLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 8650
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isVerboseLogEnabled()Z

    move-result v0

    .line 8651
    .local v0, "debug":Z
    if-eqz v0, :cond_0

    .line 8652
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onNotificationEnqueuedLocked() called with: r = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8654
    :cond_0
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 8655
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$xFD5w0lXKCfWgU2f03eJAOPQABs;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$xFD5w0lXKCfWgU2f03eJAOPQABs;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;ZLcom/android/server/notification/NotificationRecord;)V

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ZLjava/util/function/BiConsumer;)V

    .line 8669
    return-void
.end method


# virtual methods
.method protected allowAdjustmentType(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .line 8555
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8556
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8557
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8558
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8559
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v2

    new-instance v3, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$FsWpf1cmSi9GG7O4rBv1eLAEE9M;

    invoke-direct {v3, p0, v1}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$FsWpf1cmSi9GG7O4rBv1eLAEE9M;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 8560
    .end local v1    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    goto :goto_0

    .line 8561
    :cond_0
    return-void

    .line 8557
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 8499
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    return-object v0
.end method

.method protected checkType(Landroid/os/IInterface;)Z
    .locals 1
    .param p1, "service"    # Landroid/os/IInterface;

    .line 8504
    instance-of v0, p1, Landroid/service/notification/INotificationListener;

    return v0
.end method

.method protected disallowAdjustmentType(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .line 8564
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8565
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 8566
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8567
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8568
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v2

    new-instance v3, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$6E04T6AkRfKEIjCw7jopFAFGv30;

    invoke-direct {v3, p0, v1}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$6E04T6AkRfKEIjCw7jopFAFGv30;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 8569
    .end local v1    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    goto :goto_0

    .line 8570
    :cond_0
    return-void

    .line 8566
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 8842
    invoke-super {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 8843
    const-string v0, "    Has user set:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8844
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8845
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mUserSetMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 8846
    .local v1, "userIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 8847
    .local v3, "userId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mUserSetMap:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8848
    .end local v3    # "userId":I
    goto :goto_0

    .line 8849
    .end local v1    # "userIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_0
    monitor-exit v0

    .line 8850
    return-void

    .line 8849
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getAllowedAssistantAdjustments()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8573
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8574
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8575
    .local v1, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8576
    monitor-exit v0

    return-object v1

    .line 8577
    .end local v1    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getConfig()Lcom/android/server/notification/ManagedServices$Config;
    .locals 2

    .line 8486
    new-instance v0, Lcom/android/server/notification/ManagedServices$Config;

    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$Config;-><init>()V

    .line 8487
    .local v0, "c":Lcom/android/server/notification/ManagedServices$Config;
    const-string/jumbo v1, "notification assistant"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 8488
    const-string v1, "android.service.notification.NotificationAssistantService"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    .line 8489
    const-string v1, "enabled_assistants"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    .line 8490
    const-string v1, "enabled_notification_assistant"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 8491
    const-string v1, "android.permission.BIND_NOTIFICATION_ASSISTANT_SERVICE"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 8492
    const-string v1, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    .line 8493
    const v1, 0x1040493

    iput v1, v0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    .line 8494
    return-object v0
.end method

.method protected getRequiredPermission()Ljava/lang/String;
    .locals 1

    .line 8529
    const-string v0, "android.permission.REQUEST_NOTIFICATION_ASSISTANT_SERVICE"

    return-object v0
.end method

.method hasUserSet(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 8606
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8607
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mUserSetMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 8608
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isAdjustmentAllowed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .line 8581
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8582
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 8583
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEnabled()Z
    .locals 1

    .line 8810
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic lambda$allowAdjustmentType$0$NotificationManagerService$NotificationAssistants(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8559
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyCapabilitiesChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public synthetic lambda$disallowAdjustmentType$1$NotificationManagerService$NotificationAssistants(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8568
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyCapabilitiesChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public synthetic lambda$notifyAssistantActionClicked$7$NotificationManagerService$NotificationAssistants(Ljava/lang/String;Landroid/app/Notification$Action;ZLandroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "action"    # Landroid/app/Notification$Action;
    .param p3, "generatedByAssistant"    # Z
    .param p4, "assistant"    # Landroid/service/notification/INotificationListener;
    .param p5, "sbnHolder"    # Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 8736
    nop

    .line 8739
    if-eqz p3, :cond_0

    .line 8740
    const/4 v0, 0x1

    goto :goto_0

    .line 8741
    :cond_0
    const/4 v0, 0x0

    .line 8736
    :goto_0
    :try_start_0
    invoke-interface {p4, p1, p2, v0}, Landroid/service/notification/INotificationListener;->onActionClicked(Ljava/lang/String;Landroid/app/Notification$Action;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8744
    goto :goto_1

    .line 8742
    :catch_0
    move-exception v0

    .line 8743
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to notify assistant (snoozed): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8745
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public synthetic lambda$notifyAssistantExpansionChangedLocked$4$NotificationManagerService$NotificationAssistants(Ljava/lang/String;ZZLandroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isUserAction"    # Z
    .param p3, "isExpanded"    # Z
    .param p4, "assistant"    # Landroid/service/notification/INotificationListener;
    .param p5, "sbnHolder"    # Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 8682
    :try_start_0
    invoke-interface {p4, p1, p2, p3}, Landroid/service/notification/INotificationListener;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8685
    goto :goto_0

    .line 8683
    :catch_0
    move-exception v0

    .line 8684
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to notify assistant (expanded): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8686
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public synthetic lambda$notifyAssistantNotificationDirectReplyLocked$5$NotificationManagerService$NotificationAssistants(Ljava/lang/String;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "assistant"    # Landroid/service/notification/INotificationListener;
    .param p3, "sbnHolder"    # Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 8698
    :try_start_0
    invoke-interface {p2, p1}, Landroid/service/notification/INotificationListener;->onNotificationDirectReply(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8701
    goto :goto_0

    .line 8699
    :catch_0
    move-exception v0

    .line 8700
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to notify assistant (expanded): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8702
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public synthetic lambda$notifyAssistantSnoozedLocked$8$NotificationManagerService$NotificationAssistants(Ljava/lang/String;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .locals 4
    .param p1, "snoozeCriterionId"    # Ljava/lang/String;
    .param p2, "assistant"    # Landroid/service/notification/INotificationListener;
    .param p3, "sbnHolder"    # Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 8760
    :try_start_0
    invoke-interface {p2, p3, p1}, Landroid/service/notification/INotificationListener;->onNotificationSnoozedUntilContext(Landroid/service/notification/IStatusBarNotificationHolder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8764
    goto :goto_0

    .line 8762
    :catch_0
    move-exception v0

    .line 8763
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to notify assistant (snoozed): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8765
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public synthetic lambda$notifyAssistantSuggestedReplySent$6$NotificationManagerService$NotificationAssistants(Ljava/lang/String;Ljava/lang/CharSequence;ZLandroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "reply"    # Ljava/lang/CharSequence;
    .param p3, "generatedByAssistant"    # Z
    .param p4, "assistant"    # Landroid/service/notification/INotificationListener;
    .param p5, "sbnHolder"    # Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 8714
    nop

    .line 8717
    if-eqz p3, :cond_0

    .line 8718
    const/4 v0, 0x1

    goto :goto_0

    .line 8719
    :cond_0
    const/4 v0, 0x0

    .line 8714
    :goto_0
    :try_start_0
    invoke-interface {p4, p1, p2, v0}, Landroid/service/notification/INotificationListener;->onSuggestedReplySent(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8722
    goto :goto_1

    .line 8720
    :catch_0
    move-exception v0

    .line 8721
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to notify assistant (snoozed): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8723
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public synthetic lambda$onNotificationEnqueuedLocked$3$NotificationManagerService$NotificationAssistants(ZLcom/android/server/notification/NotificationRecord;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .locals 4
    .param p1, "debug"    # Z
    .param p2, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "assistant"    # Landroid/service/notification/INotificationListener;
    .param p4, "sbnHolder"    # Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 8660
    if-eqz p1, :cond_0

    .line 8661
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calling onNotificationEnqueuedWithChannel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8664
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-interface {p3, p4, v0}, Landroid/service/notification/INotificationListener;->onNotificationEnqueuedWithChannel(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/app/NotificationChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8667
    goto :goto_0

    .line 8665
    :catch_0
    move-exception v0

    .line 8666
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to notify assistant (enqueued): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8668
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public synthetic lambda$onNotificationsSeenLocked$2$NotificationManagerService$NotificationAssistants(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "keys"    # Ljava/util/ArrayList;

    .line 8600
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifySeen(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method notifyAssistantActionClicked(Landroid/service/notification/StatusBarNotification;ILandroid/app/Notification$Action;Z)V
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "actionIndex"    # I
    .param p3, "action"    # Landroid/app/Notification$Action;
    .param p4, "generatedByAssistant"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 8730
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 8731
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$Rqv2CeOOOVMkVDRSXa6GcHvi5Vc;

    invoke-direct {v1, p0, v0, p3, p4}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$Rqv2CeOOOVMkVDRSXa6GcHvi5Vc;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Landroid/app/Notification$Action;Z)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ZLjava/util/function/BiConsumer;)V

    .line 8746
    return-void
.end method

.method notifyAssistantExpansionChangedLocked(Landroid/service/notification/StatusBarNotification;ZZ)V
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "isUserAction"    # Z
    .param p3, "isExpanded"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 8676
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 8677
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$h7WPxGy6WExnaTHJZiTUqSURFAU;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$h7WPxGy6WExnaTHJZiTUqSURFAU;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;ZZ)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ZLjava/util/function/BiConsumer;)V

    .line 8687
    return-void
.end method

.method notifyAssistantNotificationDirectReplyLocked(Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 8692
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 8693
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$JF5pLiK7GJ1M0xNPiK9WMEs3Axo;

    invoke-direct {v1, p0, v0}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$JF5pLiK7GJ1M0xNPiK9WMEs3Axo;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ZLjava/util/function/BiConsumer;)V

    .line 8703
    return-void
.end method

.method notifyAssistantSuggestedReplySent(Landroid/service/notification/StatusBarNotification;Ljava/lang/CharSequence;Z)V
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "reply"    # Ljava/lang/CharSequence;
    .param p3, "generatedByAssistant"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 8708
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 8709
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$-pTtydmbKR53sVGAi5B-_cGeLDo;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$-pTtydmbKR53sVGAi5B-_cGeLDo;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ZLjava/util/function/BiConsumer;)V

    .line 8724
    return-void
.end method

.method protected onNotificationsSeenLocked(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    .line 8589
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8590
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 8591
    .local v2, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 8592
    .local v4, "r":Lcom/android/server/notification/NotificationRecord;
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {v5, v6, v1}, Lcom/android/server/notification/NotificationManagerService;->access$5200(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8593
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSameUser(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    .line 8594
    .local v5, "sbnVisible":Z
    :goto_2
    if-eqz v5, :cond_1

    .line 8595
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8597
    .end local v4    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v5    # "sbnVisible":Z
    :cond_1
    goto :goto_1

    .line 8599
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 8600
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v3

    new-instance v4, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$hdUZ_hmwLutGkIKdq7dHKjQLP4E;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$hdUZ_hmwLutGkIKdq7dHKjQLP4E;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 8602
    .end local v1    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v2    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    goto :goto_0

    .line 8603
    :cond_4
    return-void
.end method

.method protected onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8509
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->registerGuestService(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 8510
    return-void
.end method

.method protected onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 3
    .param p1, "removed"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 8515
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    iget v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->unregisterService(Landroid/os/IInterface;I)V

    .line 8516
    return-void
.end method

.method public onUserUnlocked(I)V
    .locals 3
    .param p1, "user"    # I

    .line 8520
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserUnlocked u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8523
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->rebindServices(ZI)V

    .line 8524
    return-void
.end method

.method protected readExtraAttributes(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8625
    const-string/jumbo v0, "user_set"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    .line 8626
    .local v0, "userSet":Z
    invoke-virtual {p0, p3, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setUserSet(IZ)V

    .line 8627
    return-void
.end method

.method protected readExtraTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8543
    const-string/jumbo v0, "q_allowed_adjustments"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8544
    const-string/jumbo v0, "types"

    invoke-static {p2, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8545
    .local v0, "types":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8546
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 8547
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8548
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 8550
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 8552
    .end local v0    # "types":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method protected resetDefaultAssistantsIfNecessary()V
    .locals 7

    .line 8814
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mUm:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 8815
    .local v0, "activeUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 8816
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 8817
    .local v3, "userId":I
    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->hasUserSet(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 8818
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Approving default notification assistant for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8819
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationManagerService;->setDefaultAssistantForUser(I)V

    .line 8821
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userId":I
    :cond_0
    goto :goto_0

    .line 8822
    :cond_1
    return-void
.end method

.method protected setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V
    .locals 4
    .param p1, "pkgOrComponent"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "isPrimary"    # Z
    .param p4, "enabled"    # Z

    .line 8828
    if-eqz p4, :cond_1

    .line 8829
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getAllowedComponents(I)Ljava/util/List;

    move-result-object v0

    .line 8830
    .local v0, "allowedComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8831
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 8832
    .local v1, "currentComponent":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 8833
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p2, v3}, Lcom/android/server/notification/NotificationManagerService;->setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZ)V

    .line 8837
    .end local v0    # "allowedComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v1    # "currentComponent":Landroid/content/ComponentName;
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ManagedServices;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    .line 8838
    return-void
.end method

.method setUserSet(IZ)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "set"    # Z

    .line 8612
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8613
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mUserSetMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8614
    monitor-exit v0

    .line 8615
    return-void

    .line 8614
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected writeExtraAttributes(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8619
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->hasUserSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "user_set"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8620
    return-void
.end method

.method protected writeExtraXmlTags(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8534
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8535
    :try_start_0
    const-string/jumbo v1, "q_allowed_adjustments"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8536
    const-string/jumbo v1, "types"

    const-string v3, ","

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8537
    const-string/jumbo v1, "q_allowed_adjustments"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8538
    monitor-exit v0

    .line 8539
    return-void

    .line 8538
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
