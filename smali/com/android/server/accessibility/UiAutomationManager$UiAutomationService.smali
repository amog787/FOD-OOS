.class Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
.super Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.source "UiAutomationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/UiAutomationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiAutomationService"
.end annotation


# instance fields
.field private final mMainHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/accessibility/UiAutomationManager;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/UiAutomationManager;Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;)V
    .locals 12
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "accessibilityServiceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p4, "id"    # I
    .param p5, "mainHandler"    # Landroid/os/Handler;
    .param p6, "lock"    # Ljava/lang/Object;
    .param p7, "securityPolicy"    # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p8, "systemSupport"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
    .param p9, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p10, "globalActionPerfomer"    # Lcom/android/server/accessibility/GlobalActionPerformer;

    .line 226
    move-object v11, p0

    move-object v0, p1

    iput-object v0, v11, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    .line 227
    invoke-static {}, Lcom/android/server/accessibility/UiAutomationManager;->access$200()Landroid/content/ComponentName;

    move-result-object v2

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;)V

    .line 229
    move-object/from16 v0, p5

    iput-object v0, v11, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mMainHandler:Landroid/os/Handler;

    .line 230
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/UiAutomationManager;->access$100(Lcom/android/server/accessibility/UiAutomationManager;)V

    .line 259
    return-void
.end method

.method connectServiceUnknownThread()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/-$$Lambda$UiAutomationManager$UiAutomationService$z2oxrodQt4ZxyzsfB6p_GYgwxqk;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/-$$Lambda$UiAutomationManager$UiAutomationService$z2oxrodQt4ZxyzsfB6p_GYgwxqk;-><init>(Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    return-void
.end method

.method public disableSelf()V
    .locals 0

    .line 300
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mContext:Landroid/content/Context;

    const-string v1, "UiAutomationManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ui Automation[eventTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mEventTypes:I

    .line 277
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", notificationTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mNotificationTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 279
    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 280
    monitor-exit v0

    .line 281
    return-void

    .line 280
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSoftKeyboardShowMode()I
    .locals 1

    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public isAccessibilityButtonAvailable()Z
    .locals 1

    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method protected isCalledForCurrentUserLocked()Z
    .locals 1

    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public isCapturingFingerprintGestures()Z
    .locals 1

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$connectServiceUnknownThread$0$UiAutomationManager$UiAutomationService()V
    .locals 4

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :try_start_1
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 240
    .local v1, "serviceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mService:Landroid/os/IBinder;

    .line 241
    iget-object v2, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mService:Landroid/os/IBinder;

    .line 242
    .local v2, "service":Landroid/os/IBinder;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    if-eqz v1, :cond_1

    .line 246
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 247
    iget v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mId:I

    iget-object v3, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mOverlayWindowToken:Landroid/os/IBinder;

    invoke-interface {v1, p0, v0, v3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 252
    .end local v1    # "serviceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .end local v2    # "service":Landroid/os/IBinder;
    :cond_1
    goto :goto_1

    .line 242
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 249
    .restart local p0    # "this":Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
    :catch_0
    move-exception v0

    .line 250
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "UiAutomationManager"

    const-string v2, "Error initialized connection"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-static {v1}, Lcom/android/server/accessibility/UiAutomationManager;->access$100(Lcom/android/server/accessibility/UiAutomationManager;)V

    .line 253
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public onFingerprintGesture(I)V
    .locals 0
    .param p1, "gesture"    # I

    .line 317
    return-void
.end method

.method public onFingerprintGestureDetectionActiveChanged(Z)V
    .locals 0
    .param p1, "active"    # Z

    .line 314
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 303
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 306
    return-void
.end method

.method public setSoftKeyboardShowMode(I)Z
    .locals 1
    .param p1, "mode"    # I

    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method protected supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 269
    const/4 v0, 0x1

    return v0
.end method
