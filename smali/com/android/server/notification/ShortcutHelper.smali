.class public Lcom/android/server/notification/ShortcutHelper;
.super Ljava/lang/Object;
.source "ShortcutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ShortcutHelper$ShortcutListener;
    }
.end annotation


# static fields
.field private static final SHARING_FILTER:Landroid/content/IntentFilter;

.field private static final TAG:Ljava/lang/String; = "ShortcutHelper"


# instance fields
.field private mActiveShortcutBubbles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLauncherAppsCallback:Landroid/content/pm/LauncherApps$Callback;

.field private mLauncherAppsCallbackRegistered:Z

.field private mLauncherAppsService:Landroid/content/pm/LauncherApps;

.field private mShortcutListener:Lcom/android/server/notification/ShortcutHelper$ShortcutListener;

.field private mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/server/notification/ShortcutHelper;->SHARING_FILTER:Landroid/content/IntentFilter;

    .line 53
    :try_start_0
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v1, "ShortcutHelper"

    const-string v2, "Bad mime type"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .end local v0    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :goto_0
    return-void
.end method

.method constructor <init>(Landroid/content/pm/LauncherApps;Lcom/android/server/notification/ShortcutHelper$ShortcutListener;Landroid/content/pm/ShortcutServiceInternal;)V
    .locals 1
    .param p1, "launcherApps"    # Landroid/content/pm/LauncherApps;
    .param p2, "listener"    # Lcom/android/server/notification/ShortcutHelper$ShortcutListener;
    .param p3, "shortcutServiceInternal"    # Landroid/content/pm/ShortcutServiceInternal;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    .line 76
    new-instance v0, Lcom/android/server/notification/ShortcutHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/ShortcutHelper$1;-><init>(Lcom/android/server/notification/ShortcutHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallback:Landroid/content/pm/LauncherApps$Callback;

    .line 147
    iput-object p1, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    .line 148
    iput-object p2, p0, Lcom/android/server/notification/ShortcutHelper;->mShortcutListener:Lcom/android/server/notification/ShortcutHelper$ShortcutListener;

    .line 149
    iput-object p3, p0, Lcom/android/server/notification/ShortcutHelper;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/ShortcutHelper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ShortcutHelper;

    .line 47
    iget-object v0, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/ShortcutHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ShortcutHelper;

    .line 47
    iget-boolean v0, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallbackRegistered:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/notification/ShortcutHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ShortcutHelper;
    .param p1, "x1"    # Z

    .line 47
    iput-boolean p1, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallbackRegistered:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/notification/ShortcutHelper;)Landroid/content/pm/LauncherApps$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ShortcutHelper;

    .line 47
    iget-object v0, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallback:Landroid/content/pm/LauncherApps$Callback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/ShortcutHelper;)Landroid/content/pm/LauncherApps;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ShortcutHelper;

    .line 47
    iget-object v0, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/ShortcutHelper;)Lcom/android/server/notification/ShortcutHelper$ShortcutListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ShortcutHelper;

    .line 47
    iget-object v0, p0, Lcom/android/server/notification/ShortcutHelper;->mShortcutListener:Lcom/android/server/notification/ShortcutHelper$ShortcutListener;

    return-object v0
.end method

.method public static isConversationShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutServiceInternal;I)Z
    .locals 1
    .param p0, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;
    .param p1, "mShortcutServiceInternal"    # Landroid/content/pm/ShortcutServiceInternal;
    .param p2, "callingUserId"    # I

    .line 168
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 169
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method cacheShortcut(Landroid/content/pm/ShortcutInfo;Landroid/os/UserHandle;)V
    .locals 8
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 214
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/server/notification/ShortcutHelper;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 216
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 217
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v6

    const/16 v7, 0x4000

    .line 215
    const-string v3, "android"

    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/ShortcutServiceInternal;->cacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    .line 219
    :cond_0
    return-void
.end method

.method getValidShortcutInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;
    .locals 8
    .param p1, "shortcutId"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 184
    iget-object v0, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 185
    return-object v1

    .line 187
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 189
    .local v2, "token":J
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-nez p3, :cond_1

    goto :goto_1

    .line 192
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 193
    .local v0, "query":Landroid/content/pm/LauncherApps$ShortcutQuery;
    invoke-virtual {v0, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 194
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 195
    const/16 v4, 0x411

    invoke-virtual {v0, v4}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 197
    iget-object v4, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    invoke-virtual {v4, v0, p3}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    .line 198
    .local v4, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 199
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    goto :goto_0

    .line 200
    :cond_2
    move-object v5, v1

    :goto_0
    nop

    .line 201
    .local v5, "info":Landroid/content/pm/ShortcutInfo;
    iget-object v6, p0, Lcom/android/server/notification/ShortcutHelper;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/android/server/notification/ShortcutHelper;->isConversationShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutServiceInternal;I)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_3

    .line 202
    nop

    .line 206
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 202
    return-object v5

    .line 204
    :cond_3
    nop

    .line 206
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 204
    return-object v1

    .line 206
    .end local v0    # "query":Landroid/content/pm/LauncherApps$ShortcutQuery;
    .end local v4    # "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v5    # "info":Landroid/content/pm/ShortcutInfo;
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 207
    throw v0

    .line 190
    :cond_4
    :goto_1
    nop

    .line 206
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 190
    return-object v1
.end method

.method maybeListenForShortcutChangesForBubbles(Lcom/android/server/notification/NotificationRecord;ZLandroid/os/Handler;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "removedNotification"    # Z
    .param p3, "handler"    # Landroid/os/Handler;

    .line 231
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 233
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 234
    .local v0, "shortcutId":Ljava/lang/String;
    if-nez p2, :cond_3

    .line 235
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 236
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 237
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 239
    iget-object v1, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    .line 240
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 241
    .local v1, "packageBubbles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 242
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 244
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v2, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-boolean v2, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallbackRegistered:Z

    if-nez v2, :cond_2

    .line 247
    iget-object v2, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    iget-object v3, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallback:Landroid/content/pm/LauncherApps$Callback;

    invoke-virtual {v2, v3, p3}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V

    .line 248
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallbackRegistered:Z

    .line 250
    .end local v1    # "packageBubbles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    goto/16 :goto_3

    .line 252
    :cond_3
    iget-object v1, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    .line 253
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 254
    .restart local v1    # "packageBubbles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_7

    .line 255
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 256
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 259
    :cond_4
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 262
    .local v2, "shortcutIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 263
    .local v4, "pkgShortcutId":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 264
    .local v5, "entryKey":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 266
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .end local v4    # "pkgShortcutId":Ljava/lang/String;
    .end local v5    # "entryKey":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 270
    .end local v2    # "shortcutIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    :goto_2
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 271
    iget-object v2, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallbackRegistered:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 275
    iget-object v2, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    iget-object v3, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallback:Landroid/content/pm/LauncherApps$Callback;

    invoke-virtual {v2, v3}, Landroid/content/pm/LauncherApps;->unregisterCallback(Landroid/content/pm/LauncherApps$Callback;)V

    .line 276
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallbackRegistered:Z

    .line 279
    .end local v1    # "packageBubbles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    :goto_3
    return-void
.end method

.method setLauncherApps(Landroid/content/pm/LauncherApps;)V
    .locals 0
    .param p1, "launcherApps"    # Landroid/content/pm/LauncherApps;

    .line 154
    iput-object p1, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    .line 155
    return-void
.end method

.method setShortcutServiceInternal(Landroid/content/pm/ShortcutServiceInternal;)V
    .locals 0
    .param p1, "shortcutServiceInternal"    # Landroid/content/pm/ShortcutServiceInternal;

    .line 159
    iput-object p1, p0, Lcom/android/server/notification/ShortcutHelper;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 160
    return-void
.end method
