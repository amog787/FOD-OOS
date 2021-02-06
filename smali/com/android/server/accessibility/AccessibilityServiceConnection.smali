.class Lcom/android/server/accessibility/AccessibilityServiceConnection;
.super Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.source "AccessibilityServiceConnection.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityServiceConnection"


# instance fields
.field final mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field final mIntent:Landroid/content/Intent;

.field private final mMainHandler:Landroid/os/Handler;

.field final mUserStateWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/accessibility/AccessibilityUserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityUserState;Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;Lcom/android/server/wm/ActivityTaskManagerInternal;)V
    .locals 14
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "accessibilityServiceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p5, "id"    # I
    .param p6, "mainHandler"    # Landroid/os/Handler;
    .param p7, "lock"    # Ljava/lang/Object;
    .param p8, "securityPolicy"    # Lcom/android/server/accessibility/AccessibilitySecurityPolicy;
    .param p9, "systemSupport"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
    .param p10, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p11, "systemActionPerfomer"    # Lcom/android/server/accessibility/SystemActionPerformer;
    .param p12, "awm"    # Lcom/android/server/accessibility/AccessibilityWindowManager;
    .param p13, "activityTaskManagerService"    # Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 81
    move-object v13, p0

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v1 .. v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;)V

    .line 83
    new-instance v0, Ljava/lang/ref/WeakReference;

    move-object v1, p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v13, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, v13, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, v13, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIntent:Landroid/content/Intent;

    .line 85
    move-object/from16 v2, p6

    iput-object v2, v13, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    .line 86
    const-string v3, "android.intent.extra.client_label"

    const v4, 0x10400b6

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    move-object/from16 v3, p13

    iput-object v3, v13, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 89
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 91
    .local v4, "identity":J
    :try_start_0
    iget-object v0, v13, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIntent:Landroid/content/Intent;

    const-string v6, "android.intent.extra.client_intent"

    iget-object v7, v13, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    iget-object v8, v13, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v11, 0x4000000

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getPendingIntentActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    nop

    .line 97
    return-void

    .line 95
    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    throw v0
.end method

.method private initializeService()V
    .locals 8

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "serviceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityUserState;

    .line 204
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    .line 205
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindingServicesLocked()Ljava/util/Set;

    move-result-object v3

    .line 206
    .local v3, "bindingServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityUserState;->getCrashedServicesLocked()Ljava/util/Set;

    move-result-object v4

    .line 207
    .local v4, "crashedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 208
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 209
    :cond_1
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 210
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 211
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    iput-boolean v6, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->crashed:Z

    .line 212
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-object v0, v5

    .line 217
    :cond_2
    if-eqz v0, :cond_3

    .line 218
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityUserState;->getEnabledServicesLocked()Ljava/util/Set;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 219
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v6}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 220
    monitor-exit v1

    return-void

    .line 222
    .end local v2    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    .end local v3    # "bindingServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v4    # "crashedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    if-nez v0, :cond_4

    .line 224
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->binderDied()V

    .line 225
    return-void

    .line 228
    :cond_4
    :try_start_1
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mId:I

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-interface {v0, p0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 233
    goto :goto_0

    .line 229
    :catch_0
    move-exception v1

    .line 230
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

    .line 232
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->binderDied()V

    .line 234
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 222
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

    .line 100
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityUserState;

    .line 101
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 104
    .local v1, "identity":J
    const v3, 0x2101001

    .line 108
    .local v3, "flags":I
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindInstantServiceAllowedLocked()Z

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

    iget v7, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v5, p0, v3, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 113
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindingServicesLocked()Ljava/util/Set;

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
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 119
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v6, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 118
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setAllowAppSwitches(Ljava/lang/String;II)V

    .line 121
    return-void

    .line 116
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    throw v3
.end method

.method public binderDied()V
    .locals 4

    .line 316
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isConnectedLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    monitor-exit v0

    return-void

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->crashed:Z

    .line 325
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityUserState;

    .line 326
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    if-eqz v1, :cond_1

    .line 329
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OpStartAppControlInjector;->removeAccessibilityService(Landroid/content/ComponentName;)V

    .line 331
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->serviceDisconnectedLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 333
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->resetLocked()V

    .line 334
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v2

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mId:I

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/MagnificationController;->resetAllIfNeeded(I)V

    .line 335
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 336
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    monitor-exit v0

    .line 337
    return-void

    .line 336
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canRetrieveInteractiveWindowsLocked()Z
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

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

    .line 144
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityUserState;

    .line 146
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 147
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getEnabledServicesLocked()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    .local v2, "identity":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const-string v5, "enabled_accessibility_services"

    .line 152
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getEnabledServicesLocked()Ljava/util/Set;

    move-result-object v6

    iget v7, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 150
    invoke-interface {v4, v5, v6, v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 155
    nop

    .line 156
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 155
    nop

    .end local p0    # "this":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    throw v4

    .line 158
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    .end local v2    # "identity":J
    .restart local p0    # "this":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 159
    return-void

    .line 158
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public dispatchGesture(ILandroid/content/pm/ParceledListSlice;I)V
    .locals 7
    .param p1, "sequence"    # I
    .param p2, "gestureSteps"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "displayId"    # I

    .line 394
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/WindowManagerInternal;->isTouchableDisplay(I)Z

    move-result v0

    .line 395
    .local v0, "isTouchableDisplay":Z
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 396
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v2, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canPerformGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 398
    invoke-interface {v2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMotionEventInjectorForDisplayLocked(I)Lcom/android/server/accessibility/MotionEventInjector;

    move-result-object v2

    .line 399
    .local v2, "motionEventInjector":Lcom/android/server/accessibility/MotionEventInjector;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 400
    nop

    .line 401
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 400
    invoke-virtual {v2, v3, v4, p1, p3}, Lcom/android/server/accessibility/MotionEventInjector;->injectEvents(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 404
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    goto :goto_0

    .line 405
    :catch_0
    move-exception v3

    .line 406
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "AccessibilityServiceConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error sending motion event injection failure to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    .end local v2    # "motionEventInjector":Lcom/android/server/accessibility/MotionEventInjector;
    .end local v3    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    monitor-exit v1

    .line 412
    return-void

    .line 411
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    return-object v0
.end method

.method public getSoftKeyboardShowMode()I
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityUserState;

    .line 283
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSoftKeyboardShowModeLocked()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected hasRightsToCurrentUserLocked()Z
    .locals 4

    .line 251
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 252
    .local v0, "callingUid":I
    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_4

    const/16 v2, 0x7d0

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 258
    invoke-interface {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 259
    return v1

    .line 261
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 262
    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 265
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 263
    :cond_3
    :goto_0
    return v1

    .line 255
    :cond_4
    :goto_1
    return v1
.end method

.method public isAccessibilityButtonAvailable()Z
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 308
    monitor-exit v0

    return v2

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityUserState;

    .line 311
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isAccessibilityButtonAvailableLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v0

    return v2

    .line 312
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAccessibilityButtonAvailableLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 2
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 341
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 342
    return v1

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->isAccessibilityButtonShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 346
    return v1

    .line 348
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isCapturingFingerprintGestures()Z
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 354
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canCaptureFingerprintGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mCaptureFingerprintGestures:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 353
    :goto_0
    return v0
.end method

.method public onFingerprintGesture(I)V
    .locals 2
    .param p1, "gesture"    # I

    .line 377
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 383
    .local v1, "serviceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    if-eqz v1, :cond_1

    .line 386
    :try_start_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onFingerprintGesture(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 388
    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 390
    :cond_1
    :goto_0
    return-void

    .line 383
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

    .line 360
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 366
    .local v1, "serviceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    if-eqz v1, :cond_1

    .line 369
    :try_start_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onFingerprintCapturingGesturesChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 371
    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    .line 373
    :cond_1
    :goto_0
    return-void

    .line 366
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

    .line 163
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    const/4 v2, 0x0

    if-eq v1, p2, :cond_1

    .line 165
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 168
    :cond_0
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :try_start_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "AccessibilityServiceConnection"

    const-string v3, "Failed registering death link"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->binderDied()V

    .line 174
    monitor-exit v0

    return-void

    .line 177
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    invoke-static {p2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 178
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityUserState;

    .line 179
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    .line 183
    :cond_2
    invoke-static {p1}, Lcom/android/server/am/OpStartAppControlInjector;->addAccessibilityService(Landroid/content/ComponentName;)V

    .line 186
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->addServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 187
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v3, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 190
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/accessibility/-$$Lambda$AccessibilityServiceConnection$ASP9bmSvpeD7ZE_uJ8sm-9hCwiU;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityServiceConnection$ASP9bmSvpeD7ZE_uJ8sm-9hCwiU;

    invoke-static {v3, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    nop

    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    monitor-exit v0

    .line 193
    return-void

    .line 192
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 238
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->binderDied()V

    .line 239
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityUserState;

    .line 240
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    if-eqz v0, :cond_0

    .line 241
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    iget v4, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setAllowAppSwitches(Ljava/lang/String;II)V

    .line 244
    :cond_0
    return-void
.end method

.method public setSoftKeyboardShowMode(I)Z
    .locals 3
    .param p1, "showMode"    # I

    .line 270
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 272
    monitor-exit v0

    return v2

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityUserState;

    .line 275
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    if-nez v1, :cond_1

    monitor-exit v0

    return v2

    .line 276
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/accessibility/AccessibilityUserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 277
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public switchToInputMethod(Ljava/lang/String;)Z
    .locals 4
    .param p1, "imeId"    # Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 292
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 294
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 295
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 297
    .local v1, "identity":J
    :try_start_1
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->switchToInputMethod(Ljava/lang/String;I)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    .local v3, "result":Z
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 300
    nop

    .line 301
    return v3

    .line 299
    .end local v3    # "result":Z
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 300
    throw v3

    .line 292
    .end local v0    # "callingUserId":I
    .end local v1    # "identity":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public unbindLocked()V
    .locals 5

    .line 124
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 125
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityUserState;

    .line 126
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OpStartAppControlInjector;->removeAccessibilityService(Landroid/content/ComponentName;)V

    .line 131
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->removeServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 132
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mId:I

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/MagnificationController;->resetAllIfNeeded(I)V

    .line 133
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    iget v4, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setAllowAppSwitches(Ljava/lang/String;II)V

    .line 135
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->resetLocked()V

    .line 136
    return-void
.end method
