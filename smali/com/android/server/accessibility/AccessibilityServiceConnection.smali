.class Lcom/android/server/accessibility/AccessibilityServiceConnection;
.super Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.source "AccessibilityServiceConnection.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityServiceConnection"


# instance fields
.field final mIntent:Landroid/content/Intent;

.field private final mMainHandler:Landroid/os/Handler;

.field final mUserStateWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field

.field private mWasConnectedAndDied:Z


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;)V
    .locals 13
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "accessibilityServiceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p5, "id"    # I
    .param p6, "mainHandler"    # Landroid/os/Handler;
    .param p7, "lock"    # Ljava/lang/Object;
    .param p8, "securityPolicy"    # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p9, "systemSupport"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
    .param p10, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p11, "globalActionPerfomer"    # Lcom/android/server/accessibility/GlobalActionPerformer;

    .line 78
    move-object v12, p0

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v1 .. v11}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;)V

    .line 80
    new-instance v0, Ljava/lang/ref/WeakReference;

    move-object v1, p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v12, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, v12, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIntent:Landroid/content/Intent;

    .line 82
    move-object/from16 v2, p6

    iput-object v2, v12, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    .line 83
    iget-object v0, v12, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.client_label"

    const v4, 0x1040047

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 87
    .local v3, "identity":J
    :try_start_0
    iget-object v0, v12, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIntent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.client_intent"

    iget-object v6, v12, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    iget-object v7, v12, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-interface {v6, v7, v9, v8, v9}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getPendingIntentActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    nop

    .line 92
    return-void

    .line 90
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private initializeService()V
    .locals 7

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "serviceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 196
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    .line 197
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getBindingServicesLocked()Ljava/util/Set;

    move-result-object v3

    .line 198
    .local v3, "bindingServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mWasConnectedAndDied:Z

    if-eqz v4, :cond_2

    .line 199
    :cond_1
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 200
    iput-boolean v5, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mWasConnectedAndDied:Z

    .line 201
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-object v0, v4

    .line 206
    :cond_2
    if-eqz v0, :cond_3

    .line 207
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getEnabledServicesLocked()Ljava/util/Set;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 208
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v4, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 209
    monitor-exit v1

    return-void

    .line 211
    .end local v2    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v3    # "bindingServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    if-nez v0, :cond_4

    .line 213
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->binderDied()V

    .line 214
    return-void

    .line 217
    :cond_4
    :try_start_1
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mId:I

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mOverlayWindowToken:Landroid/os/IBinder;

    invoke-interface {v0, p0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 222
    goto :goto_0

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while setting connection for service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccessibilityServiceConnection"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->binderDied()V

    .line 223
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 211
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public static synthetic lambda$ASP9bmSvpeD7ZE_uJ8sm-9hCwiU(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->initializeService()V

    return-void
.end method


# virtual methods
.method public bindLocked()V
    .locals 8

    .line 99
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OpAppBootManagerInjector;->updateAccesibilityServiceFlag(Landroid/content/Intent;Landroid/content/ComponentName;I)V

    .line 102
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 103
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 106
    .local v1, "identity":J
    const v3, 0x2100001

    .line 108
    .local v3, "flags":I
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getBindInstantServiceAllowed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    const/high16 v4, 0x400000

    or-int/2addr v3, v4

    .line 111
    :cond_1
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIntent:Landroid/content/Intent;

    new-instance v6, Landroid/os/UserHandle;

    iget v7, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v5, p0, v3, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 113
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getBindingServicesLocked()Ljava/util/Set;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v3    # "flags":I
    :cond_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    nop

    .line 118
    return-void

    .line 116
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public binderDied()V
    .locals 4

    .line 271
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isConnectedLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    monitor-exit v0

    return-void

    .line 279
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mWasConnectedAndDied:Z

    .line 280
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 281
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-eqz v1, :cond_1

    .line 282
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->serviceDisconnectedLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 284
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->resetLocked()V

    .line 285
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v2

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mId:I

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/MagnificationController;->resetAllIfNeeded(I)V

    .line 286
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 287
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    monitor-exit v0

    .line 288
    return-void

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canRetrieveInteractiveWindowsLocked()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public disableSelf()V
    .locals 8

    .line 140
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 142
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 143
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getEnabledServicesLocked()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 146
    .local v2, "identity":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const-string v5, "enabled_accessibility_services"

    .line 148
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getEnabledServicesLocked()Ljava/util/Set;

    move-result-object v6

    iget v7, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 146
    invoke-interface {v4, v5, v6, v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 151
    nop

    .line 152
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    throw v4

    .line 154
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mWasConnectedAndDied:Z

    iput-boolean v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->crashed:Z

    .line 189
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    return-object v0
.end method

.method public getSoftKeyboardShowMode()I
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 255
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getSoftKeyboardShowMode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isAccessibilityButtonAvailable()Z
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 263
    monitor-exit v0

    return v2

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 266
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isAccessibilityButtonAvailableLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v0

    return v2

    .line 267
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAccessibilityButtonAvailableLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 5
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 292
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 293
    return v1

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->isAccessibilityButtonShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    return v1

    .line 302
    :cond_1
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    if-eqz v0, :cond_2

    .line 304
    return v1

    .line 307
    :cond_2
    const/4 v0, 0x0

    .line 308
    .local v0, "requestingServices":I
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 309
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 310
    .local v3, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v4, :cond_3

    .line 311
    add-int/lit8 v0, v0, 0x1

    .line 308
    .end local v3    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 315
    .end local v1    # "i":I
    :cond_4
    if-ne v0, v2, :cond_5

    .line 318
    return v2

    .line 321
    :cond_5
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    if-nez v1, :cond_6

    .line 324
    return v2

    .line 327
    :cond_6
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected isCalledForCurrentUserLocked()Z
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 236
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 237
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isCapturingFingerprintGestures()Z
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 335
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canCaptureFingerprintGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mCaptureFingerprintGestures:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 334
    :goto_0
    return v0
.end method

.method public onFingerprintGesture(I)V
    .locals 2
    .param p1, "gesture"    # I

    .line 358
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 364
    .local v1, "serviceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    if-eqz v1, :cond_1

    .line 367
    :try_start_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onFingerprintGesture(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 369
    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 371
    :cond_1
    :goto_0
    return-void

    .line 364
    .end local v1    # "serviceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onFingerprintGestureDetectionActiveChanged(Z)V
    .locals 2
    .param p1, "active"    # Z

    .line 341
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 347
    .local v1, "serviceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    if-eqz v1, :cond_1

    .line 350
    :try_start_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onFingerprintCapturingGesturesChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 352
    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 354
    :cond_1
    :goto_0
    return-void

    .line 347
    .end local v1    # "serviceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 159
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    const/4 v2, 0x0

    if-eq v1, p2, :cond_1

    .line 161
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 164
    :cond_0
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :try_start_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "AccessibilityServiceConnection"

    const-string v3, "Failed registering death link"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->binderDied()V

    .line 170
    monitor-exit v0

    return-void

    .line 173
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    invoke-static {p2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 174
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 175
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    .line 176
    :cond_2
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->addServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 177
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v3, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 180
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/accessibility/-$$Lambda$AccessibilityServiceConnection$ASP9bmSvpeD7ZE_uJ8sm-9hCwiU;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityServiceConnection$ASP9bmSvpeD7ZE_uJ8sm-9hCwiU;

    invoke-static {v3, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 182
    nop

    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    monitor-exit v0

    .line 183
    return-void

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 227
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->binderDied()V

    .line 228
    return-void
.end method

.method public sendGesture(ILandroid/content/pm/ParceledListSlice;)V
    .locals 6
    .param p1, "sequence"    # I
    .param p2, "gestureSteps"    # Landroid/content/pm/ParceledListSlice;

    .line 375
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canPerformGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 378
    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMotionEventInjectorLocked()Lcom/android/server/accessibility/MotionEventInjector;

    move-result-object v1

    .line 379
    .local v1, "motionEventInjector":Lcom/android/server/accessibility/MotionEventInjector;
    if-eqz v1, :cond_0

    .line 380
    nop

    .line 381
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 380
    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/accessibility/MotionEventInjector;->injectEvents(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 384
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    goto :goto_0

    .line 385
    :catch_0
    move-exception v2

    .line 386
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "AccessibilityServiceConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending motion event injection failure to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    .end local v1    # "motionEventInjector":Lcom/android/server/accessibility/MotionEventInjector;
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 392
    return-void

    .line 391
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setSoftKeyboardShowMode(I)Z
    .locals 3
    .param p1, "showMode"    # I

    .line 242
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 244
    monitor-exit v0

    return v2

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 247
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v1, :cond_1

    monitor-exit v0

    return v2

    .line 248
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 249
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unbindLocked()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 127
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 128
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->removeServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 130
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mId:I

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/MagnificationController;->resetAllIfNeeded(I)V

    .line 131
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->resetLocked()V

    .line 132
    return-void
.end method
