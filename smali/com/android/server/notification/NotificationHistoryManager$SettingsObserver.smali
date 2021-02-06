.class final Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationHistoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationHistoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final NOTIFICATION_HISTORY_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/notification/NotificationHistoryManager;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationHistoryManager;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationHistoryManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 355
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationHistoryManager;

    .line 356
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 352
    nop

    .line 353
    const-string/jumbo v0, "notification_history_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->NOTIFICATION_HISTORY_URI:Landroid/net/Uri;

    .line 357
    return-void
.end method


# virtual methods
.method observe()V
    .locals 6

    .line 360
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-static {v0}, Lcom/android/server/notification/NotificationHistoryManager;->access$000(Lcom/android/server/notification/NotificationHistoryManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 361
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->NOTIFICATION_HISTORY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 363
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-static {v1}, Lcom/android/server/notification/NotificationHistoryManager;->access$100(Lcom/android/server/notification/NotificationHistoryManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 364
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-static {v2}, Lcom/android/server/notification/NotificationHistoryManager;->access$200(Lcom/android/server/notification/NotificationHistoryManager;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 365
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v4

    if-nez v4, :cond_0

    .line 366
    const/4 v4, 0x0

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4, v5}, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->update(Landroid/net/Uri;I)V

    .line 368
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    goto :goto_0

    .line 369
    :cond_1
    monitor-exit v1

    .line 370
    return-void

    .line 369
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 379
    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->update(Landroid/net/Uri;I)V

    .line 380
    return-void
.end method

.method stopObserving()V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-static {v0}, Lcom/android/server/notification/NotificationHistoryManager;->access$000(Lcom/android/server/notification/NotificationHistoryManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 374
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 375
    return-void
.end method

.method public update(Landroid/net/Uri;I)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I

    .line 383
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-static {v0}, Lcom/android/server/notification/NotificationHistoryManager;->access$000(Lcom/android/server/notification/NotificationHistoryManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 384
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->NOTIFICATION_HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 385
    :cond_0
    const-string/jumbo v1, "notification_history_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 388
    .local v1, "historyEnabled":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-static {v4}, Lcom/android/server/notification/NotificationHistoryManager;->access$200(Lcom/android/server/notification/NotificationHistoryManager;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v3

    .line 389
    .local v3, "profiles":[I
    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_2

    aget v5, v3, v2

    .line 390
    .local v5, "profileId":I
    iget-object v6, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-virtual {v6, v5, v1}, Lcom/android/server/notification/NotificationHistoryManager;->onHistoryEnabledChanged(IZ)V

    .line 389
    .end local v5    # "profileId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 393
    .end local v1    # "historyEnabled":Z
    .end local v3    # "profiles":[I
    :cond_2
    return-void
.end method
