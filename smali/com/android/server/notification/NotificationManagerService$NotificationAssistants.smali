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

    .line 9754
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 9755
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    .line 9723
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    .line 9725
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mUserSetMap:Landroid/util/ArrayMap;

    .line 9727
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    .line 9759
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_ALLOWED_ADJUSTMENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 9760
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_ALLOWED_ADJUSTMENTS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9759
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9762
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic access$10500(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .line 9716
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onNotificationEnqueuedLocked(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method static synthetic access$9700(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "x2"    # Ljava/lang/String;

    .line 9716
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantSnoozedLocked(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    return-void
.end method

.method private isVerboseLogEnabled()Z
    .locals 2

    .line 10179
    const-string/jumbo v0, "notification_assistant"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$notifyAssistantLocked$12(Ljava/util/function/BiConsumer;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .locals 0
    .param p0, "callback"    # Ljava/util/function/BiConsumer;
    .param p1, "assistant"    # Landroid/service/notification/INotificationListener;
    .param p2, "sbnHolder"    # Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 10131
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ZLjava/util/function/BiConsumer;)V
    .locals 10
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "sameUserOnly"    # Z
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

    .line 10108
    .local p3, "callback":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;>;"
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$TrimCache;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {v0, v1, p1}, Lcom/android/server/notification/NotificationManagerService$TrimCache;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)V

    .line 10112
    .local v0, "trimCache":Lcom/android/server/notification/NotificationManagerService$TrimCache;
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isVerboseLogEnabled()Z

    move-result v1

    .line 10113
    .local v1, "debug":Z
    if-eqz v1, :cond_0

    .line 10114
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

    .line 10118
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

    .line 10119
    .local v3, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4, p1, v3}, Lcom/android/server/notification/NotificationManagerService;->access$6600(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p2, :cond_1

    .line 10120
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

    .line 10121
    .local v4, "sbnVisible":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 10122
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

    .line 10124
    :cond_3
    if-nez v4, :cond_4

    .line 10125
    goto :goto_0

    .line 10127
    :cond_4
    iget-object v5, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v5, Landroid/service/notification/INotificationListener;

    .line 10128
    .local v5, "assistant":Landroid/service/notification/INotificationListener;
    invoke-virtual {v0, v3}, Lcom/android/server/notification/NotificationManagerService$TrimCache;->ForListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    .line 10129
    .local v6, "sbnToPost":Landroid/service/notification/StatusBarNotification;
    new-instance v7, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    invoke-direct {v7, v6}, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 10131
    .local v7, "sbnHolder":Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v8

    new-instance v9, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$2uJN0X0VDgKmWRoJqYsux0bhlYo;

    invoke-direct {v9, p3, v5, v7}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$2uJN0X0VDgKmWRoJqYsux0bhlYo;-><init>(Ljava/util/function/BiConsumer;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V

    invoke-virtual {v8, v9}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 10132
    .end local v3    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v4    # "sbnVisible":Z
    .end local v5    # "assistant":Landroid/service/notification/INotificationListener;
    .end local v6    # "sbnToPost":Landroid/service/notification/StatusBarNotification;
    .end local v7    # "sbnHolder":Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;
    goto :goto_0

    .line 10133
    :cond_5
    return-void
.end method

.method private notifyAssistantSnoozedLocked(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "snoozeCriterionId"    # Ljava/lang/String;

    .line 10081
    new-instance v0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$-frFvBh01OajP_vj8nGNvXvmX1Y;

    invoke-direct {v0, p0, p2}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$-frFvBh01OajP_vj8nGNvXvmX1Y;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ZLjava/util/function/BiConsumer;)V

    .line 10092
    return-void
.end method

.method private notifyCapabilitiesChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 9936
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 9938
    .local v0, "assistant":Landroid/service/notification/INotificationListener;
    :try_start_0
    invoke-interface {v0}, Landroid/service/notification/INotificationListener;->onAllowedAdjustmentsChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9941
    goto :goto_0

    .line 9939
    :catch_0
    move-exception v1

    .line 9940
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to notify assistant (capabilities): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9942
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

    .line 9946
    .local p2, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 9948
    .local v0, "assistant":Landroid/service/notification/INotificationListener;
    :try_start_0
    invoke-interface {v0, p2}, Landroid/service/notification/INotificationListener;->onNotificationsSeen(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9951
    goto :goto_0

    .line 9949
    :catch_0
    move-exception v1

    .line 9950
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to notify assistant (seen): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9952
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private onNotificationEnqueuedLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .line 9956
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isVerboseLogEnabled()Z

    move-result v0

    .line 9957
    .local v0, "debug":Z
    if-eqz v0, :cond_0

    .line 9958
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

    .line 9960
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 9961
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$S2EUT9RRW0P4hWLU4YD7mrnGPII;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$S2EUT9RRW0P4hWLU4YD7mrnGPII;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;ZLcom/android/server/notification/NotificationRecord;)V

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ZLjava/util/function/BiConsumer;)V

    .line 9975
    return-void
.end method


# virtual methods
.method protected allowAdjustmentType(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .line 9835
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9836
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9837
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9838
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

    .line 9839
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v2

    new-instance v3, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$FsWpf1cmSi9GG7O4rBv1eLAEE9M;

    invoke-direct {v3, p0, v1}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$FsWpf1cmSi9GG7O4rBv1eLAEE9M;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 9840
    .end local v1    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    goto :goto_0

    .line 9841
    :cond_0
    return-void

    .line 9837
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

    .line 9779
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    return-object v0
.end method

.method protected checkType(Landroid/os/IInterface;)Z
    .locals 1
    .param p1, "service"    # Landroid/os/IInterface;

    .line 9784
    instance-of v0, p1, Landroid/service/notification/INotificationListener;

    return v0
.end method

.method protected disallowAdjustmentType(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .line 9844
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9845
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 9846
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9847
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

    .line 9848
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v2

    new-instance v3, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$6E04T6AkRfKEIjCw7jopFAFGv30;

    invoke-direct {v3, p0, v1}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$6E04T6AkRfKEIjCw7jopFAFGv30;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 9849
    .end local v1    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    goto :goto_0

    .line 9850
    :cond_0
    return-void

    .line 9846
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

    .line 10168
    invoke-super {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 10169
    const-string v0, "    Has user set:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10170
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10171
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mUserSetMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 10172
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

    .line 10173
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

    .line 10174
    .end local v3    # "userId":I
    goto :goto_0

    .line 10175
    .end local v1    # "userIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_0
    monitor-exit v0

    .line 10176
    return-void

    .line 10175
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

    .line 9853
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9854
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9855
    .local v1, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9856
    monitor-exit v0

    return-object v1

    .line 9857
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

    .line 9766
    new-instance v0, Lcom/android/server/notification/ManagedServices$Config;

    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$Config;-><init>()V

    .line 9767
    .local v0, "c":Lcom/android/server/notification/ManagedServices$Config;
    const-string/jumbo v1, "notification assistant"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 9768
    const-string v1, "android.service.notification.NotificationAssistantService"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    .line 9769
    const-string v1, "enabled_assistants"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    .line 9770
    const-string v1, "enabled_notification_assistant"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 9771
    const-string v1, "android.permission.BIND_NOTIFICATION_ASSISTANT_SERVICE"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 9772
    const-string v1, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    .line 9773
    const v1, 0x104055a

    iput v1, v0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    .line 9774
    return-object v0
.end method

.method protected getRequiredPermission()Ljava/lang/String;
    .locals 1

    .line 9809
    const-string v0, "android.permission.REQUEST_NOTIFICATION_ASSISTANT_SERVICE"

    return-object v0
.end method

.method hasUserSet(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 9912
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9913
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

    .line 9914
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

    .line 9861
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9862
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 9863
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEnabled()Z
    .locals 1

    .line 10136
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

    .line 9839
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyCapabilitiesChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public synthetic lambda$disallowAdjustmentType$1$NotificationManagerService$NotificationAssistants(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 9848
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyCapabilitiesChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public synthetic lambda$notifyAssistantActionClicked$10$NotificationManagerService$NotificationAssistants(Ljava/lang/String;Landroid/app/Notification$Action;ZLandroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "action"    # Landroid/app/Notification$Action;
    .param p3, "generatedByAssistant"    # Z
    .param p4, "assistant"    # Landroid/service/notification/INotificationListener;
    .param p5, "sbnHolder"    # Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 10062
    nop

    .line 10065
    if-eqz p3, :cond_0

    .line 10066
    const/4 v0, 0x1

    goto :goto_0

    .line 10067
    :cond_0
    const/4 v0, 0x0

    .line 10062
    :goto_0
    :try_start_0
    invoke-interface {p4, p1, p2, v0}, Landroid/service/notification/INotificationListener;->onActionClicked(Ljava/lang/String;Landroid/app/Notification$Action;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10070
    goto :goto_1

    .line 10068
    :catch_0
    move-exception v0

    .line 10069
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

    .line 10071
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public synthetic lambda$notifyAssistantExpansionChangedLocked$7$NotificationManagerService$NotificationAssistants(Ljava/lang/String;ZZLandroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isUserAction"    # Z
    .param p3, "isExpanded"    # Z
    .param p4, "assistant"    # Landroid/service/notification/INotificationListener;
    .param p5, "sbnHolder"    # Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 10008
    :try_start_0
    invoke-interface {p4, p1, p2, p3}, Landroid/service/notification/INotificationListener;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10011
    goto :goto_0

    .line 10009
    :catch_0
    move-exception v0

    .line 10010
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

    .line 10012
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public synthetic lambda$notifyAssistantNotificationDirectReplyLocked$8$NotificationManagerService$NotificationAssistants(Ljava/lang/String;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "assistant"    # Landroid/service/notification/INotificationListener;
    .param p3, "sbnHolder"    # Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 10024
    :try_start_0
    invoke-interface {p2, p1}, Landroid/service/notification/INotificationListener;->onNotificationDirectReply(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10027
    goto :goto_0

    .line 10025
    :catch_0
    move-exception v0

    .line 10026
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

    .line 10028
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public synthetic lambda$notifyAssistantSnoozedLocked$11$NotificationManagerService$NotificationAssistants(Ljava/lang/String;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .locals 4
    .param p1, "snoozeCriterionId"    # Ljava/lang/String;
    .param p2, "assistant"    # Landroid/service/notification/INotificationListener;
    .param p3, "sbnHolder"    # Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 10086
    :try_start_0
    invoke-interface {p2, p3, p1}, Landroid/service/notification/INotificationListener;->onNotificationSnoozedUntilContext(Landroid/service/notification/IStatusBarNotificationHolder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10090
    goto :goto_0

    .line 10088
    :catch_0
    move-exception v0

    .line 10089
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

    .line 10091
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public synthetic lambda$notifyAssistantSuggestedReplySent$9$NotificationManagerService$NotificationAssistants(Ljava/lang/String;Ljava/lang/CharSequence;ZLandroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "reply"    # Ljava/lang/CharSequence;
    .param p3, "generatedByAssistant"    # Z
    .param p4, "assistant"    # Landroid/service/notification/INotificationListener;
    .param p5, "sbnHolder"    # Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 10040
    nop

    .line 10043
    if-eqz p3, :cond_0

    .line 10044
    const/4 v0, 0x1

    goto :goto_0

    .line 10045
    :cond_0
    const/4 v0, 0x0

    .line 10040
    :goto_0
    :try_start_0
    invoke-interface {p4, p1, p2, v0}, Landroid/service/notification/INotificationListener;->onSuggestedReplySent(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10048
    goto :goto_1

    .line 10046
    :catch_0
    move-exception v0

    .line 10047
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

    .line 10049
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public synthetic lambda$notifyAssistantVisibilityChangedLocked$6$NotificationManagerService$NotificationAssistants(Ljava/lang/String;ZLandroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isVisible"    # Z
    .param p3, "assistant"    # Landroid/service/notification/INotificationListener;
    .param p4, "sbnHolder"    # Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 9990
    :try_start_0
    invoke-interface {p3, p1, p2}, Landroid/service/notification/INotificationListener;->onNotificationVisibilityChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9993
    goto :goto_0

    .line 9991
    :catch_0
    move-exception v0

    .line 9992
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to notify assistant (visible): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9994
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public synthetic lambda$onNotificationEnqueuedLocked$5$NotificationManagerService$NotificationAssistants(ZLcom/android/server/notification/NotificationRecord;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .locals 4
    .param p1, "debug"    # Z
    .param p2, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "assistant"    # Landroid/service/notification/INotificationListener;
    .param p4, "sbnHolder"    # Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 9966
    if-eqz p1, :cond_0

    .line 9967
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

    .line 9970
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-interface {p3, p4, v0}, Landroid/service/notification/INotificationListener;->onNotificationEnqueuedWithChannel(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/app/NotificationChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9973
    goto :goto_0

    .line 9971
    :catch_0
    move-exception v0

    .line 9972
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

    .line 9974
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public synthetic lambda$onNotificationsSeenLocked$2$NotificationManagerService$NotificationAssistants(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "keys"    # Ljava/util/ArrayList;

    .line 9880
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifySeen(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public synthetic lambda$onPanelHidden$4$NotificationManagerService$NotificationAssistants(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 9901
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 9903
    .local v0, "assistant":Landroid/service/notification/INotificationListener;
    :try_start_0
    invoke-interface {v0}, Landroid/service/notification/INotificationListener;->onPanelHidden()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9906
    goto :goto_0

    .line 9904
    :catch_0
    move-exception v1

    .line 9905
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to notify assistant (panel hidden): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9907
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public synthetic lambda$onPanelRevealed$3$NotificationManagerService$NotificationAssistants(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "items"    # I

    .line 9888
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 9890
    .local v0, "assistant":Landroid/service/notification/INotificationListener;
    :try_start_0
    invoke-interface {v0, p2}, Landroid/service/notification/INotificationListener;->onPanelRevealed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9893
    goto :goto_0

    .line 9891
    :catch_0
    move-exception v1

    .line 9892
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to notify assistant (panel revealed): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9894
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method protected loadDefaultsFromConfig()V
    .locals 6

    .line 9731
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 9732
    .local v0, "assistants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10401fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 9734
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 9732
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 9735
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 9736
    nop

    .line 9737
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 9738
    .local v2, "assistantCn":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9739
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 9740
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 9742
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9743
    goto :goto_1

    .line 9745
    :cond_1
    const/high16 v4, 0xc0000

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->queryPackageForServices(Ljava/lang/String;II)Landroid/util/ArraySet;

    move-result-object v4

    .line 9747
    .local v4, "approved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9748
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->addDefaultComponentOrPackage(Ljava/lang/String;)V

    .line 9735
    .end local v2    # "assistantCn":Landroid/content/ComponentName;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "approved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9751
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method notifyAssistantActionClicked(Landroid/service/notification/StatusBarNotification;ILandroid/app/Notification$Action;Z)V
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "actionIndex"    # I
    .param p3, "action"    # Landroid/app/Notification$Action;
    .param p4, "generatedByAssistant"    # Z

    .line 10056
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 10057
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$uDzVB3NwVCerv0Z5si1fGXZkZu4;

    invoke-direct {v1, p0, v0, p3, p4}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$uDzVB3NwVCerv0Z5si1fGXZkZu4;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Landroid/app/Notification$Action;Z)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ZLjava/util/function/BiConsumer;)V

    .line 10072
    return-void
.end method

.method notifyAssistantExpansionChangedLocked(Landroid/service/notification/StatusBarNotification;ZZ)V
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "isUserAction"    # Z
    .param p3, "isExpanded"    # Z

    .line 10002
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 10003
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$ou_FTabXQDrMmZWvZYfT09jSrKI;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$ou_FTabXQDrMmZWvZYfT09jSrKI;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;ZZ)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ZLjava/util/function/BiConsumer;)V

    .line 10013
    return-void
.end method

.method notifyAssistantNotificationDirectReplyLocked(Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 10018
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 10019
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$j__6VKF3Ej58Ecwq9KDrcYMRydI;

    invoke-direct {v1, p0, v0}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$j__6VKF3Ej58Ecwq9KDrcYMRydI;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ZLjava/util/function/BiConsumer;)V

    .line 10029
    return-void
.end method

.method notifyAssistantSuggestedReplySent(Landroid/service/notification/StatusBarNotification;Ljava/lang/CharSequence;Z)V
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "reply"    # Ljava/lang/CharSequence;
    .param p3, "generatedByAssistant"    # Z

    .line 10034
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 10035
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$3ktx5hfF9rabi25qaQLZ-YvqPO4;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$3ktx5hfF9rabi25qaQLZ-YvqPO4;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ZLjava/util/function/BiConsumer;)V

    .line 10050
    return-void
.end method

.method notifyAssistantVisibilityChangedLocked(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "isVisible"    # Z

    .line 9981
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 9982
    .local v0, "key":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_0

    .line 9983
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyAssistantVisibilityChangedLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9985
    :cond_0
    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$fguXa8ZWUwjg4Css0w9IvLwqTno;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$fguXa8ZWUwjg4Css0w9IvLwqTno;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Z)V

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ZLjava/util/function/BiConsumer;)V

    .line 9995
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

    .line 9869
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

    .line 9870
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 9871
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

    .line 9872
    .local v4, "r":Lcom/android/server/notification/NotificationRecord;
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/android/server/notification/NotificationManagerService;->access$6600(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9873
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSameUser(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    .line 9874
    .local v5, "sbnVisible":Z
    :goto_2
    if-eqz v5, :cond_1

    .line 9875
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9877
    .end local v4    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v5    # "sbnVisible":Z
    :cond_1
    goto :goto_1

    .line 9879
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 9880
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v3

    new-instance v4, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$hdUZ_hmwLutGkIKdq7dHKjQLP4E;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$hdUZ_hmwLutGkIKdq7dHKjQLP4E;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 9882
    .end local v1    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v2    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    goto :goto_0

    .line 9883
    :cond_4
    return-void
.end method

.method protected onPanelHidden()V
    .locals 4

    .line 9899
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

    .line 9900
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v2

    new-instance v3, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$pzk58E_uhN8zWEPqtMQoUZpAM4k;

    invoke-direct {v3, p0, v1}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$pzk58E_uhN8zWEPqtMQoUZpAM4k;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 9908
    .end local v1    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    goto :goto_0

    .line 9909
    :cond_0
    return-void
.end method

.method protected onPanelRevealed(I)V
    .locals 4
    .param p1, "items"    # I

    .line 9886
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

    .line 9887
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v2

    new-instance v3, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$qNPzonSecZ4lX0Og0m8NERBS_UQ;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$qNPzonSecZ4lX0Og0m8NERBS_UQ;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 9895
    .end local v1    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    goto :goto_0

    .line 9896
    :cond_0
    return-void
.end method

.method protected onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 9789
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->registerGuestService(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 9790
    return-void
.end method

.method protected onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 3
    .param p1, "removed"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 9795
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    iget v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->unregisterService(Landroid/os/IInterface;I)V

    .line 9796
    return-void
.end method

.method public onUserUnlocked(I)V
    .locals 3
    .param p1, "user"    # I

    .line 9800
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

    .line 9803
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->rebindServices(ZI)V

    .line 9804
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

    .line 9931
    const-string/jumbo v0, "user_set"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    .line 9932
    .local v0, "userSet":Z
    invoke-virtual {p0, p3, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setUserSet(IZ)V

    .line 9933
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

    .line 9823
    const-string/jumbo v0, "q_allowed_adjustments"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9824
    const-string/jumbo v0, "types"

    invoke-static {p2, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9825
    .local v0, "types":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9826
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 9827
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9828
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 9830
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 9832
    .end local v0    # "types":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method protected resetDefaultAssistantsIfNecessary()V
    .locals 7

    .line 10140
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mUm:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 10141
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

    .line 10142
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 10143
    .local v3, "userId":I
    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->hasUserSet(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 10144
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Approving default notification assistant for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10145
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationManagerService;->setDefaultAssistantForUser(I)V

    .line 10147
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userId":I
    :cond_0
    goto :goto_0

    .line 10148
    :cond_1
    return-void
.end method

.method protected setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V
    .locals 4
    .param p1, "pkgOrComponent"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "isPrimary"    # Z
    .param p4, "enabled"    # Z

    .line 10154
    if-eqz p4, :cond_1

    .line 10155
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getAllowedComponents(I)Ljava/util/List;

    move-result-object v0

    .line 10156
    .local v0, "allowedComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 10157
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 10158
    .local v1, "currentComponent":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 10159
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p2, v3}, Lcom/android/server/notification/NotificationManagerService;->setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZ)V

    .line 10163
    .end local v0    # "allowedComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v1    # "currentComponent":Landroid/content/ComponentName;
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ManagedServices;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    .line 10164
    return-void
.end method

.method setUserSet(IZ)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "set"    # Z

    .line 9918
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9919
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mUserSetMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9920
    monitor-exit v0

    .line 9921
    return-void

    .line 9920
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

    .line 9925
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->hasUserSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "user_set"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9926
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

    .line 9814
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9815
    :try_start_0
    const-string/jumbo v1, "q_allowed_adjustments"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9816
    const-string/jumbo v1, "types"

    const-string v3, ","

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9817
    const-string/jumbo v1, "q_allowed_adjustments"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9818
    monitor-exit v0

    .line 9819
    return-void

    .line 9818
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
