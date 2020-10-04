.class abstract Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.super Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.source "AbstractAccessibilityServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;
.implements Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;,
        Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AbstractAccessibilityServiceConnection"


# instance fields
.field protected final mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field mCaptureFingerprintGestures:Z

.field final mComponentName:Landroid/content/ComponentName;

.field protected final mContext:Landroid/content/Context;

.field public mEventDispatchHandler:Landroid/os/Handler;

.field mEventTypes:I

.field mFeedbackType:I

.field mFetchFlags:I

.field private final mGlobalActionPerformer:Lcom/android/server/accessibility/GlobalActionPerformer;

.field final mId:I

.field public final mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

.field mIsDefault:Z

.field mLastAccessibilityButtonCallbackState:Z

.field protected final mLock:Ljava/lang/Object;

.field mNotificationTimeout:J

.field final mOverlayWindowToken:Landroid/os/IBinder;

.field mPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field mReceivedAccessibilityButtonCallbackSinceBind:Z

.field mRequestAccessibilityButton:Z

.field mRequestFilterKeyEvents:Z

.field mRequestTouchExplorationMode:Z

.field mRetrieveInteractiveWindows:Z

.field protected final mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

.field mService:Landroid/os/IBinder;

.field mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field protected final mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

.field mUsesAccessibilityCache:Z

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "accessibilityServiceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p4, "id"    # I
    .param p5, "mainHandler"    # Landroid/os/Handler;
    .param p6, "lock"    # Ljava/lang/Object;
    .param p7, "securityPolicy"    # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p8, "systemSupport"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
    .param p9, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p10, "globalActionPerfomer"    # Lcom/android/server/accessibility/GlobalActionPerformer;

    .line 250
    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;-><init>()V

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    .line 137
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 146
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowToken:Landroid/os/IBinder;

    .line 251
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 252
    iput-object p9, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 253
    iput p4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 254
    iput-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 255
    iput-object p3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 256
    iput-object p6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 257
    iput-object p7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 258
    iput-object p10, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mGlobalActionPerformer:Lcom/android/server/accessibility/GlobalActionPerformer;

    .line 259
    iput-object p8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 260
    new-instance v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 261
    new-instance v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;

    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    .line 270
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 271
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p3, "x3"    # Z

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityEventInternal(ILandroid/view/accessibility/AccessibilityEvent;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .param p1, "x1"    # I

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyGestureInternal(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 75
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyClearAccessibilityCacheInternal()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/graphics/Region;FFF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/graphics/Region;
    .param p3, "x3"    # F
    .param p4, "x4"    # F
    .param p5, "x5"    # F

    .line 75
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyMagnificationChangedInternal(ILandroid/graphics/Region;FFF)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .param p1, "x1"    # I

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifySoftKeyboardShowModeChangedInternal(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 75
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityButtonClickedInternal()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .param p1, "x1"    # Z

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityButtonAvailabilityChangedInternal(Z)V

    return-void
.end method

.method private getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;
    .locals 2

    .line 1264
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1265
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    monitor-exit v0

    return-object v1

    .line 1266
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyAccessibilityButtonAvailabilityChangedInternal(Z)V
    .locals 4
    .param p1, "available"    # Z

    .line 1221
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLastAccessibilityButtonCallbackState:Z

    if-ne v0, p1, :cond_0

    .line 1223
    return-void

    .line 1225
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    .line 1226
    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLastAccessibilityButtonCallbackState:Z

    .line 1227
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1228
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_1

    .line 1230
    :try_start_0
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityButtonAvailabilityChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1235
    goto :goto_0

    .line 1231
    :catch_0
    move-exception v1

    .line 1232
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending accessibility button availability change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractAccessibilityServiceConnection"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1237
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method private notifyAccessibilityButtonClickedInternal()V
    .locals 4

    .line 1209
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1210
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_0

    .line 1212
    :try_start_0
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityButtonClicked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1215
    goto :goto_0

    .line 1213
    :catch_0
    move-exception v1

    .line 1214
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending accessibility button click to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractAccessibilityServiceConnection"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1217
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private notifyAccessibilityEventInternal(ILandroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 5
    .param p1, "eventType"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p3, "serviceWantsEvent"    # Z

    .line 1093
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1094
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 1098
    .local v1, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-nez v1, :cond_0

    .line 1099
    monitor-exit v0

    return-void

    .line 1105
    :cond_0
    if-nez p2, :cond_2

    .line 1122
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityEvent;

    move-object p2, v2

    .line 1123
    if-nez p2, :cond_1

    .line 1124
    monitor-exit v0

    return-void

    .line 1126
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1128
    :cond_2
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1129
    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setConnectionId(I)V

    goto :goto_0

    .line 1131
    :cond_3
    const/4 v2, 0x0

    check-cast v2, Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 1133
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSealed(Z)V

    .line 1134
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1137
    :try_start_1
    invoke-interface {v1, p2, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1144
    nop

    :goto_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 1145
    goto :goto_2

    .line 1144
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1141
    :catch_0
    move-exception v0

    .line 1142
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "AbstractAccessibilityServiceConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1144
    nop

    .end local v0    # "re":Landroid/os/RemoteException;
    goto :goto_1

    .line 1146
    :goto_2
    return-void

    .line 1144
    :goto_3
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    throw v0

    .line 1134
    .end local v1    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private notifyClearAccessibilityCacheInternal()V
    .locals 4

    .line 1252
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1253
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_0

    .line 1255
    :try_start_0
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->clearAccessibilityCache()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1259
    goto :goto_0

    .line 1256
    :catch_0
    move-exception v1

    .line 1257
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AbstractAccessibilityServiceConnection"

    const-string v3, "Error during requesting accessibility info cache to be cleared."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1261
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private notifyGestureInternal(I)V
    .locals 4
    .param p1, "gestureId"    # I

    .line 1240
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1241
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_0

    .line 1243
    :try_start_0
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onGesture(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1247
    goto :goto_0

    .line 1244
    :catch_0
    move-exception v1

    .line 1245
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error during sending gesture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractAccessibilityServiceConnection"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1249
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private notifyMagnificationChangedInternal(ILandroid/graphics/Region;FFF)V
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "scale"    # F
    .param p4, "centerX"    # F
    .param p5, "centerY"    # F

    .line 1182
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v6

    .line 1183
    .local v6, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v6, :cond_0

    .line 1185
    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    :try_start_0
    invoke-interface/range {v0 .. v5}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onMagnificationChanged(ILandroid/graphics/Region;FFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    goto :goto_0

    .line 1186
    :catch_0
    move-exception v0

    .line 1187
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error sending magnification changes to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AbstractAccessibilityServiceConnection"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1190
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private notifySoftKeyboardShowModeChangedInternal(I)V
    .locals 4
    .param p1, "showState"    # I

    .line 1197
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1198
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_0

    .line 1200
    :try_start_0
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onSoftKeyboardShowModeChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1204
    goto :goto_0

    .line 1201
    :catch_0
    move-exception v1

    .line 1202
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending soft keyboard show mode changes to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractAccessibilityServiceConnection"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1206
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private registerMagnificationIfNeeded(ILcom/android/server/accessibility/MagnificationController;)Z
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "magnificationController"    # Lcom/android/server/accessibility/MagnificationController;

    .line 870
    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/MagnificationController;->isRegistered(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 871
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/MagnificationController;->register(I)V

    .line 873
    const/4 v0, 0x1

    return v0

    .line 875
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private resolveAccessibilityWindowIdForFindFocusLocked(II)I
    .locals 1
    .param p1, "windowId"    # I
    .param p2, "focusType"    # I

    .line 1277
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 1278
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    return v0

    .line 1280
    :cond_0
    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    .line 1281
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1282
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    return v0

    .line 1283
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 1284
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    return v0

    .line 1287
    :cond_2
    return p1
.end method

.method private resolveAccessibilityWindowIdLocked(I)I
    .locals 1
    .param p1, "accessibilityWindowId"    # I

    .line 1270
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getActiveWindowId()I

    move-result v0

    return v0

    .line 1273
    :cond_0
    return p1
.end method

.method private wantsEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1060
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->canReceiveEventsLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1061
    return v1

    .line 1064
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1065
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isImportantForAccessibility()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 1067
    return v1

    .line 1070
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 1071
    .local v0, "eventType":I
    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    and-int/2addr v2, v0

    if-eq v2, v0, :cond_2

    .line 1072
    return v1

    .line 1075
    :cond_2
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    .line 1076
    .local v2, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1077
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 1079
    .local v3, "packageName":Ljava/lang/String;
    :goto_0
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method


# virtual methods
.method public canReceiveEventsLocked()Z
    .locals 1

    .line 335
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 940
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    const-string v1, "AbstractAccessibilityServiceConnection"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 942
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service[label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 943
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 942
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", feedbackType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    .line 945
    invoke-static {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 944
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 947
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", eventTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 948
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 947
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", notificationTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 950
    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 951
    monitor-exit v0

    .line 952
    return-void

    .line 951
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)[Ljava/lang/String;
    .locals 26
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingTid"    # J
    .param p9, "arguments"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 564
    move-object/from16 v1, p0

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v2

    .line 566
    .local v2, "partialInteractiveRegion":Landroid/graphics/Region;
    iget-object v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 567
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 568
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 569
    monitor-exit v3

    return-object v4

    .line 571
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v0

    move v12, v0

    .line 572
    .local v12, "resolvedWindowId":I
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 573
    invoke-virtual {v0, v1, v12}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v0

    .line 574
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_1

    .line 575
    monitor-exit v3

    return-object v4

    .line 577
    :cond_1
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object v5

    move-object v13, v5

    .line 578
    .local v13, "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    if-nez v13, :cond_2

    .line 579
    monitor-exit v3

    return-object v4

    .line 582
    :cond_2
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v5, v12, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 584
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 585
    const/4 v2, 0x0

    .line 587
    :cond_3
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v24

    .line 588
    .end local v0    # "permissionGranted":Z
    .local v24, "spec":Landroid/view/MagnificationSpec;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 589
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 590
    return-object v4

    .line 592
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 593
    .local v3, "interrogatingPid":I
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    move-object/from16 v6, p5

    move v7, v12

    move/from16 v8, p4

    move v9, v3

    move-wide/from16 v10, p7

    invoke-interface/range {v5 .. v11}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v5

    .line 595
    .end local p5    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v5, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 597
    .local v6, "identityToken":J
    :try_start_1
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v14

    iget v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    or-int v20, v0, p6

    move-wide/from16 v15, p2

    move-object/from16 v17, v2

    move/from16 v18, p4

    move-object/from16 v19, v5

    move/from16 v21, v3

    move-wide/from16 v22, p7

    move-object/from16 v25, p9

    invoke-interface/range {v14 .. v25}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;Landroid/os/Bundle;)V

    .line 600
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 601
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getUid()I

    move-result v9

    .line 600
    invoke-virtual {v0, v8, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 607
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 609
    if-eqz v2, :cond_5

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 610
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 600
    :cond_5
    return-object v0

    .line 607
    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 609
    if-eqz v2, :cond_6

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 610
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    :cond_6
    throw v0

    .line 602
    :catch_0
    move-exception v0

    .line 607
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 609
    if-eqz v2, :cond_7

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 610
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 613
    :cond_7
    return-object v4

    .line 588
    .end local v3    # "interrogatingPid":I
    .end local v5    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v6    # "identityToken":J
    .end local v12    # "resolvedWindowId":I
    .end local v13    # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .end local v24    # "spec":Landroid/view/MagnificationSpec;
    .restart local p5    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .locals 26
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 505
    move-object/from16 v1, p0

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v2

    .line 507
    .local v2, "partialInteractiveRegion":Landroid/graphics/Region;
    iget-object v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 508
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 510
    monitor-exit v3

    return-object v4

    .line 512
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v0

    move v12, v0

    .line 513
    .local v12, "resolvedWindowId":I
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 514
    invoke-virtual {v0, v1, v12}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v0

    .line 515
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_1

    .line 516
    monitor-exit v3

    return-object v4

    .line 518
    :cond_1
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object v5

    move-object v13, v5

    .line 519
    .local v13, "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    if-nez v13, :cond_2

    .line 520
    monitor-exit v3

    return-object v4

    .line 523
    :cond_2
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v5, v12, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 525
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 526
    const/4 v2, 0x0

    .line 528
    :cond_3
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v25

    .line 529
    .end local v0    # "permissionGranted":Z
    .local v25, "spec":Landroid/view/MagnificationSpec;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 530
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 531
    return-object v4

    .line 533
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 534
    .local v3, "interrogatingPid":I
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    move-object/from16 v6, p6

    move v7, v12

    move/from16 v8, p5

    move v9, v3

    move-wide/from16 v10, p7

    invoke-interface/range {v5 .. v11}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v5

    .line 536
    .end local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v5, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 538
    .local v6, "identityToken":J
    :try_start_1
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v14

    iget v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    move-wide/from16 v15, p2

    move-object/from16 v17, p4

    move-object/from16 v18, v2

    move/from16 v19, p5

    move-object/from16 v20, v5

    move/from16 v21, v0

    move/from16 v22, v3

    move-wide/from16 v23, p7

    invoke-interface/range {v14 .. v25}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 541
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 542
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getUid()I

    move-result v9

    .line 541
    invoke-virtual {v0, v8, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 550
    if-eqz v2, :cond_5

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 551
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 541
    :cond_5
    return-object v0

    .line 548
    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 550
    if-eqz v2, :cond_6

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 551
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    :cond_6
    throw v0

    .line 543
    :catch_0
    move-exception v0

    .line 548
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 550
    if-eqz v2, :cond_7

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 551
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 554
    :cond_7
    return-object v4

    .line 529
    .end local v3    # "interrogatingPid":I
    .end local v5    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v6    # "identityToken":J
    .end local v12    # "resolvedWindowId":I
    .end local v13    # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .end local v25    # "spec":Landroid/view/MagnificationSpec;
    .restart local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .locals 26
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "viewIdResName"    # Ljava/lang/String;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 446
    move-object/from16 v1, p0

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v2

    .line 448
    .local v2, "partialInteractiveRegion":Landroid/graphics/Region;
    iget-object v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 449
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 451
    monitor-exit v3

    return-object v4

    .line 453
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v0

    move v12, v0

    .line 454
    .local v12, "resolvedWindowId":I
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 455
    invoke-virtual {v0, v1, v12}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v0

    .line 456
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_1

    .line 457
    monitor-exit v3

    return-object v4

    .line 459
    :cond_1
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object v5

    move-object v13, v5

    .line 460
    .local v13, "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    if-nez v13, :cond_2

    .line 461
    monitor-exit v3

    return-object v4

    .line 464
    :cond_2
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v5, v12, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 466
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 467
    const/4 v2, 0x0

    .line 469
    :cond_3
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v25

    .line 470
    .end local v0    # "permissionGranted":Z
    .local v25, "spec":Landroid/view/MagnificationSpec;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 471
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 472
    return-object v4

    .line 474
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 475
    .local v3, "interrogatingPid":I
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    move-object/from16 v6, p6

    move v7, v12

    move/from16 v8, p5

    move v9, v3

    move-wide/from16 v10, p7

    invoke-interface/range {v5 .. v11}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v5

    .line 477
    .end local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v5, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 479
    .local v6, "identityToken":J
    :try_start_1
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v14

    iget v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    move-wide/from16 v15, p2

    move-object/from16 v17, p4

    move-object/from16 v18, v2

    move/from16 v19, p5

    move-object/from16 v20, v5

    move/from16 v21, v0

    move/from16 v22, v3

    move-wide/from16 v23, p7

    invoke-interface/range {v14 .. v25}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 482
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 483
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getUid()I

    move-result v9

    .line 482
    invoke-virtual {v0, v8, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 491
    if-eqz v2, :cond_5

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 492
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 482
    :cond_5
    return-object v0

    .line 489
    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 491
    if-eqz v2, :cond_6

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 492
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    :cond_6
    throw v0

    .line 484
    :catch_0
    move-exception v0

    .line 489
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 491
    if-eqz v2, :cond_7

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 492
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 495
    :cond_7
    return-object v4

    .line 470
    .end local v3    # "interrogatingPid":I
    .end local v5    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v6    # "identityToken":J
    .end local v12    # "resolvedWindowId":I
    .end local v13    # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .end local v25    # "spec":Landroid/view/MagnificationSpec;
    .restart local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .locals 23
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "focusType"    # I
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 623
    move-object/from16 v1, p0

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v2

    .line 625
    .local v2, "partialInteractiveRegion":Landroid/graphics/Region;
    iget-object v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 626
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 627
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-object v4

    .line 629
    :cond_0
    move/from16 v5, p1

    move/from16 v15, p4

    :try_start_1
    invoke-direct {v1, v5, v15}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdForFindFocusLocked(II)I

    move-result v0

    move v14, v0

    .line 631
    .local v14, "resolvedWindowId":I
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 632
    invoke-virtual {v0, v1, v14}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v0

    .line 633
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_1

    .line 634
    monitor-exit v3

    return-object v4

    .line 636
    :cond_1
    iget-object v6, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v6, v14}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object v6

    move-object/from16 v18, v6

    .line 637
    .local v18, "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    if-nez v18, :cond_2

    .line 638
    monitor-exit v3

    return-object v4

    .line 641
    :cond_2
    iget-object v6, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v6, v14, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 643
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 644
    const/4 v2, 0x0

    .line 646
    :cond_3
    iget-object v6, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v6, v14}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v17

    .line 647
    .end local v0    # "permissionGranted":Z
    .local v17, "spec":Landroid/view/MagnificationSpec;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 648
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 649
    return-object v4

    .line 651
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 652
    .local v3, "interrogatingPid":I
    iget-object v6, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    move-object/from16 v7, p6

    move v8, v14

    move/from16 v9, p5

    move v10, v3

    move-wide/from16 v11, p7

    invoke-interface/range {v6 .. v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v19

    .line 654
    .end local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v19, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 656
    .local v20, "identityToken":J
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v6

    iget v13, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-wide/from16 v7, p2

    move/from16 v9, p4

    move-object v10, v2

    move/from16 v11, p5

    move-object/from16 v12, v19

    move/from16 v22, v14

    .end local v14    # "resolvedWindowId":I
    .local v22, "resolvedWindowId":I
    move v14, v3

    move-wide/from16 v15, p7

    :try_start_3
    invoke-interface/range {v6 .. v17}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 659
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 660
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getUid()I

    move-result v7

    .line 659
    invoke-virtual {v0, v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 666
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 668
    if-eqz v2, :cond_5

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 669
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 659
    :cond_5
    return-object v0

    .line 666
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 661
    :catch_0
    move-exception v0

    goto :goto_1

    .line 666
    .end local v22    # "resolvedWindowId":I
    .restart local v14    # "resolvedWindowId":I
    :catchall_1
    move-exception v0

    move/from16 v22, v14

    .end local v14    # "resolvedWindowId":I
    .restart local v22    # "resolvedWindowId":I
    :goto_0
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 668
    if-eqz v2, :cond_6

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 669
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    :cond_6
    throw v0

    .line 661
    .end local v22    # "resolvedWindowId":I
    .restart local v14    # "resolvedWindowId":I
    :catch_1
    move-exception v0

    move/from16 v22, v14

    .line 666
    .end local v14    # "resolvedWindowId":I
    .restart local v22    # "resolvedWindowId":I
    :goto_1
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 668
    if-eqz v2, :cond_7

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 669
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 672
    :cond_7
    return-object v4

    .line 647
    .end local v3    # "interrogatingPid":I
    .end local v17    # "spec":Landroid/view/MagnificationSpec;
    .end local v18    # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .end local v19    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v20    # "identityToken":J
    .end local v22    # "resolvedWindowId":I
    .restart local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_2
    move-exception v0

    move/from16 v5, p1

    :goto_2
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_2
.end method

.method public focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .locals 26
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "direction"    # I
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 682
    move-object/from16 v1, p0

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v2

    .line 684
    .local v2, "partialInteractiveRegion":Landroid/graphics/Region;
    iget-object v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 685
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 686
    monitor-exit v3

    return-object v4

    .line 688
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v0

    move v12, v0

    .line 689
    .local v12, "resolvedWindowId":I
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 690
    invoke-virtual {v0, v1, v12}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v0

    .line 691
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_1

    .line 692
    monitor-exit v3

    return-object v4

    .line 694
    :cond_1
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object v5

    move-object v13, v5

    .line 695
    .local v13, "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    if-nez v13, :cond_2

    .line 696
    monitor-exit v3

    return-object v4

    .line 699
    :cond_2
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v5, v12, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 701
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 702
    const/4 v2, 0x0

    .line 704
    :cond_3
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v25

    .line 705
    .end local v0    # "permissionGranted":Z
    .local v25, "spec":Landroid/view/MagnificationSpec;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 706
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 707
    return-object v4

    .line 709
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 710
    .local v3, "interrogatingPid":I
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    move-object/from16 v6, p6

    move v7, v12

    move/from16 v8, p5

    move v9, v3

    move-wide/from16 v10, p7

    invoke-interface/range {v5 .. v11}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v5

    .line 712
    .end local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v5, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 714
    .local v6, "identityToken":J
    :try_start_1
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v14

    iget v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    move-wide/from16 v15, p2

    move/from16 v17, p4

    move-object/from16 v18, v2

    move/from16 v19, p5

    move-object/from16 v20, v5

    move/from16 v21, v0

    move/from16 v22, v3

    move-wide/from16 v23, p7

    invoke-interface/range {v14 .. v25}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 717
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 718
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getUid()I

    move-result v9

    .line 717
    invoke-virtual {v0, v8, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 724
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 726
    if-eqz v2, :cond_5

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 727
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 717
    :cond_5
    return-object v0

    .line 724
    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 726
    if-eqz v2, :cond_6

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 727
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    :cond_6
    throw v0

    .line 719
    :catch_0
    move-exception v0

    .line 724
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 726
    if-eqz v2, :cond_7

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 727
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 730
    :cond_7
    return-object v4

    .line 705
    .end local v3    # "interrogatingPid":I
    .end local v5    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v6    # "identityToken":J
    .end local v12    # "resolvedWindowId":I
    .end local v13    # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .end local v25    # "spec":Landroid/view/MagnificationSpec;
    .restart local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getCapabilities()I
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 1291
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getMagnificationCenterX(I)F
    .locals 6
    .param p1, "displayId"    # I

    .line 826
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 827
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 828
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 830
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 831
    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v1

    .line 832
    .local v1, "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    nop

    .line 833
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->registerMagnificationIfNeeded(ILcom/android/server/accessibility/MagnificationController;)Z

    move-result v2

    .line 834
    .local v2, "registeredJustForThisCall":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 836
    .local v3, "identity":J
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/MagnificationController;->getCenterX(I)F

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 838
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 839
    if-eqz v2, :cond_1

    .line 840
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    :cond_1
    monitor-exit v0

    .line 836
    return v5

    .line 838
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 839
    if-eqz v2, :cond_2

    .line 840
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    :cond_2
    nop

    .end local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1    # "displayId":I
    throw v5

    .line 843
    .end local v1    # "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    .end local v2    # "registeredJustForThisCall":Z
    .end local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1    # "displayId":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getMagnificationCenterY(I)F
    .locals 6
    .param p1, "displayId"    # I

    .line 848
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 849
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 850
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 852
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 853
    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v1

    .line 854
    .local v1, "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    nop

    .line 855
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->registerMagnificationIfNeeded(ILcom/android/server/accessibility/MagnificationController;)Z

    move-result v2

    .line 856
    .local v2, "registeredJustForThisCall":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 858
    .local v3, "identity":J
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/MagnificationController;->getCenterY(I)F

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 860
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 861
    if-eqz v2, :cond_1

    .line 862
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    :cond_1
    monitor-exit v0

    .line 858
    return v5

    .line 860
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 861
    if-eqz v2, :cond_2

    .line 862
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    :cond_2
    nop

    .end local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1    # "displayId":I
    throw v5

    .line 865
    .end local v1    # "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    .end local v2    # "registeredJustForThisCall":Z
    .end local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1    # "displayId":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getMagnificationRegion(I)Landroid/graphics/Region;
    .locals 7
    .param p1, "displayId"    # I

    .line 802
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 803
    :try_start_0
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 804
    .local v1, "region":Landroid/graphics/Region;
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 805
    monitor-exit v0

    return-object v1

    .line 807
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 808
    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v2

    .line 809
    .local v2, "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    nop

    .line 810
    invoke-direct {p0, p1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->registerMagnificationIfNeeded(ILcom/android/server/accessibility/MagnificationController;)Z

    move-result v3

    .line 811
    .local v3, "registeredJustForThisCall":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 813
    .local v4, "identity":J
    :try_start_1
    invoke-virtual {v2, p1, v1}, Lcom/android/server/accessibility/MagnificationController;->getMagnificationRegion(ILandroid/graphics/Region;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 814
    nop

    .line 816
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 817
    if-eqz v3, :cond_1

    .line 818
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    :cond_1
    monitor-exit v0

    .line 814
    return-object v1

    .line 816
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 817
    if-eqz v3, :cond_2

    .line 818
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    :cond_2
    nop

    .end local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1    # "displayId":I
    throw v6

    .line 821
    .end local v1    # "region":Landroid/graphics/Region;
    .end local v2    # "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    .end local v3    # "registeredJustForThisCall":Z
    .end local v4    # "identity":J
    .restart local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1    # "displayId":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getMagnificationScale(I)F
    .locals 3
    .param p1, "displayId"    # I

    .line 787
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 788
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 789
    const/high16 v1, 0x3f800000    # 1.0f

    monitor-exit v0

    return v1

    .line 791
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 792
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 794
    .local v0, "identity":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/MagnificationController;->getScale(I)F

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 796
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 794
    return v2

    .line 796
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 791
    .end local v0    # "identity":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method getRelevantEventTypes()I
    .locals 2

    .line 355
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    if-eqz v0, :cond_0

    const v0, 0x41b83d

    goto :goto_0

    .line 356
    :cond_0
    const/16 v0, 0x20

    :goto_0
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    or-int/2addr v0, v1

    .line 355
    return v0
.end method

.method public getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    monitor-exit v0

    return-object v1

    .line 347
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 5
    .param p1, "windowId"    # I

    .line 416
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->ensureWindowsAvailableTimed()V

    .line 417
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 419
    monitor-exit v0

    return-object v2

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 422
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowsLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    .line 423
    .local v1, "permissionGranted":Z
    if-nez v1, :cond_1

    .line 424
    monitor-exit v0

    return-object v2

    .line 426
    :cond_1
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 427
    monitor-exit v0

    return-object v2

    .line 429
    :cond_2
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findA11yWindowInfoById(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v3

    .line 430
    .local v3, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v3, :cond_3

    .line 431
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    .line 432
    .local v2, "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    .line 433
    monitor-exit v0

    return-object v2

    .line 435
    .end local v2    # "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_3
    monitor-exit v0

    return-object v2

    .line 436
    .end local v1    # "permissionGranted":Z
    .end local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWindows()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->ensureWindowsAvailableTimed()V

    .line 386
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 387
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 388
    monitor-exit v0

    return-object v2

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 391
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowsLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    .line 392
    .local v1, "permissionGranted":Z
    if-nez v1, :cond_1

    .line 393
    monitor-exit v0

    return-object v2

    .line 395
    :cond_1
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-nez v3, :cond_2

    .line 396
    monitor-exit v0

    return-object v2

    .line 398
    :cond_2
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 399
    monitor-exit v0

    return-object v2

    .line 401
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v2, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 403
    .local v3, "windowCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 404
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v5, v5, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 405
    .local v5, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    nop

    .line 406
    invoke-static {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v6

    .line 407
    .local v6, "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {v6, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    .line 408
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    nop

    .end local v5    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v6    # "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 410
    .end local v4    # "i":I
    :cond_4
    monitor-exit v0

    return-object v2

    .line 411
    .end local v1    # "permissionGranted":Z
    .end local v2    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .end local v3    # "windowCount":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract isCalledForCurrentUserLocked()Z
.end method

.method public isConnectedLocked()Z
    .locals 1

    .line 1008
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFingerprintGestureDetectionAvailable()Z
    .locals 3

    .line 774
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 775
    return v1

    .line 777
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 778
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 779
    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getFingerprintGestureDispatcher()Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    move-result-object v0

    .line 780
    .local v0, "dispatcher":Lcom/android/server/accessibility/FingerprintGestureDispatcher;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->isFingerprintGestureDetectionAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 782
    .end local v0    # "dispatcher":Lcom/android/server/accessibility/FingerprintGestureDispatcher;
    :cond_2
    return v1
.end method

.method public isMagnificationCallbackEnabled(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 930
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->isMagnificationCallbackEnabled(I)Z

    move-result v0

    return v0
.end method

.method public notifyAccessibilityButtonAvailabilityChangedLocked(Z)V
    .locals 1
    .param p1, "available"    # Z

    .line 1173
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifyAccessibilityButtonAvailabilityChangedLocked(Z)V

    .line 1174
    return-void
.end method

.method public notifyAccessibilityButtonClickedLocked()V
    .locals 1

    .line 1169
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifyAccessibilityButtonClickedLocked()V

    .line 1170
    return-void
.end method

.method public notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1012
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1013
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    .line 1015
    .local v1, "eventType":I
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->wantsEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    .line 1016
    .local v2, "serviceWantsEvent":Z
    iget-boolean v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    const v3, 0x41b83d

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 1018
    .local v3, "requiredForCacheConsistency":Z
    :goto_0
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 1019
    monitor-exit v0

    return-void

    .line 1022
    :cond_1
    iget-object v6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v6, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1023
    monitor-exit v0

    return-void

    .line 1028
    :cond_2
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v6

    .line 1030
    .local v6, "newEvent":Landroid/view/accessibility/AccessibilityEvent;
    iget-wide v7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    const/16 v7, 0x800

    if-eq v1, v7, :cond_4

    .line 1033
    iget-object v7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityEvent;

    .line 1034
    .local v7, "oldEvent":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v8, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1035
    if-eqz v7, :cond_3

    .line 1036
    iget-object v8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v8, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1037
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 1039
    :cond_3
    iget-object v8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v8, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    move-object v7, v8

    .line 1040
    .local v7, "message":Landroid/os/Message;
    goto :goto_1

    .line 1042
    .end local v7    # "message":Landroid/os/Message;
    :cond_4
    iget-object v7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v7, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1044
    .restart local v7    # "message":Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move v4, v5

    :goto_2
    iput v4, v7, Landroid/os/Message;->arg1:I

    .line 1046
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    iget-wide v8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1047
    nop

    .end local v1    # "eventType":I
    .end local v2    # "serviceWantsEvent":Z
    .end local v3    # "requiredForCacheConsistency":Z
    .end local v6    # "newEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v7    # "message":Landroid/os/Message;
    monitor-exit v0

    .line 1048
    return-void

    .line 1047
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyClearAccessibilityNodeInfoCache()V
    .locals 2

    .line 1154
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->sendEmptyMessage(I)Z

    .line 1156
    return-void
.end method

.method public notifyGesture(I)V
    .locals 3
    .param p1, "gestureId"    # I

    .line 1149
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1150
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1151
    return-void
.end method

.method public notifyMagnificationChangedLocked(ILandroid/graphics/Region;FFF)V
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "scale"    # F
    .param p4, "centerX"    # F
    .param p5, "centerY"    # F

    .line 1160
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 1161
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifyMagnificationChangedLocked(ILandroid/graphics/Region;FFF)V

    .line 1162
    return-void
.end method

.method public notifySoftKeyboardShowModeChangedLocked(I)V
    .locals 1
    .param p1, "showState"    # I

    .line 1165
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifySoftKeyboardShowModeChangedLocked(I)V

    .line 1166
    return-void
.end method

.method public onAdded()V
    .locals 6

    .line 955
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 957
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowToken:Landroid/os/IBinder;

    const/16 v4, 0x7f0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 960
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 961
    nop

    .line 962
    return-void

    .line 960
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)Z
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "sequenceNumber"    # I

    .line 275
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-nez v0, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 280
    return v1

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 283
    return v1

    .line 286
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onKeyEvent(Landroid/view/KeyEvent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    nop

    .line 290
    const/4 v0, 0x1

    return v0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    return v1

    .line 276
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    return v1
.end method

.method public onRemoved()V
    .locals 6

    .line 965
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 967
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowToken:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 970
    nop

    .line 971
    return-void

    .line 969
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 16
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "action"    # I
    .param p5, "arguments"    # Landroid/os/Bundle;
    .param p6, "interactionId"    # I
    .param p7, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p8, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 743
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 744
    .local v2, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    iget-object v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 745
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 746
    monitor-exit v3

    return v4

    .line 748
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v0

    .line 749
    .local v0, "resolvedWindowId":I
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v5, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 750
    monitor-exit v3

    return v4

    .line 752
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    iget-object v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 754
    return v4

    .line 756
    :cond_2
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    iget v13, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 757
    move v6, v0

    move-wide/from16 v7, p2

    move/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    move-wide/from16 v14, p8

    invoke-interface/range {v5 .. v15}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z

    move-result v3

    .line 759
    .local v3, "returnValue":Z
    return v3

    .line 752
    .end local v0    # "resolvedWindowId":I
    .end local v3    # "returnValue":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public performGlobalAction(I)Z
    .locals 2
    .param p1, "action"    # I

    .line 764
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 765
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 766
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 768
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mGlobalActionPerformer:Lcom/android/server/accessibility/GlobalActionPerformer;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/GlobalActionPerformer;->performGlobalAction(I)Z

    move-result v0

    return v0

    .line 768
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public resetLocked()V
    .locals 5

    .line 974
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/KeyEventDispatcher;->flush(Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;)V

    .line 978
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v1, :cond_0

    .line 979
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-interface {v1, v0, v2, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    :cond_0
    goto :goto_0

    .line 981
    :catch_0
    move-exception v1

    .line 984
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 994
    :try_start_1
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 998
    nop

    :goto_1
    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 999
    goto :goto_3

    .line 998
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 995
    :catch_1
    move-exception v1

    .line 996
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "AbstractAccessibilityServiceConnection"

    const-string v4, "Failed unregistering death link"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 998
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    :goto_2
    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    throw v1

    .line 1003
    :cond_1
    :goto_3
    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 1004
    iput-boolean v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    .line 1005
    return-void
.end method

.method public resetMagnification(IZ)Z
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "animate"    # Z

    .line 880
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 881
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 882
    monitor-exit v0

    return v2

    .line 884
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 885
    monitor-exit v0

    return v2

    .line 887
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 888
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 890
    .local v0, "identity":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 891
    invoke-interface {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v3

    .line 892
    .local v3, "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    invoke-virtual {v3, p1, p2}, Lcom/android/server/accessibility/MagnificationController;->reset(IZ)Z

    move-result v4

    if-nez v4, :cond_2

    .line 893
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying(I)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 895
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 892
    return v2

    .line 895
    .end local v3    # "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 887
    .end local v0    # "identity":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public sendGesture(ILandroid/content/pm/ParceledListSlice;)V
    .locals 0
    .param p1, "sequence"    # I
    .param p2, "gestureSteps"    # Landroid/content/pm/ParceledListSlice;

    .line 735
    return-void
.end method

.method public setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 294
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 295
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    .line 296
    iget-object v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 297
    .local v0, "packageNames":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 298
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 300
    :cond_0
    iget-wide v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    iput-wide v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    .line 301
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIsDefault:Z

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 304
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 305
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    goto :goto_1

    .line 307
    :cond_2
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 311
    :cond_3
    :goto_1
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 312
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    goto :goto_2

    .line 314
    :cond_4
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 317
    :goto_2
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v3

    :goto_3
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    .line 319
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_4

    :cond_6
    move v1, v3

    :goto_4
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    .line 321
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_7

    move v1, v2

    goto :goto_5

    :cond_7
    move v1, v3

    :goto_5
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    .line 323
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_8

    move v1, v2

    goto :goto_6

    :cond_8
    move v1, v3

    :goto_6
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mCaptureFingerprintGestures:Z

    .line 325
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_9

    goto :goto_7

    :cond_9
    move v2, v3

    :goto_7
    iput-boolean v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    .line 327
    return-void
.end method

.method public setMagnificationCallbackEnabled(IZ)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "enabled"    # Z

    .line 926
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->setMagnificationCallbackEnabled(IZ)V

    .line 927
    return-void
.end method

.method public setMagnificationScaleAndCenter(IFFFZ)Z
    .locals 13
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "animate"    # Z

    .line 902
    move-object v1, p0

    move v9, p1

    iget-object v10, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 903
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 904
    monitor-exit v10

    return v2

    .line 906
    :cond_0
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 907
    monitor-exit v10

    return v2

    .line 909
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide v11, v2

    .line 911
    .local v11, "identity":J
    :try_start_1
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 912
    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    .line 913
    .local v0, "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/MagnificationController;->isRegistered(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 914
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/MagnificationController;->register(I)V

    .line 916
    :cond_2
    iget v8, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 917
    move-object v2, v0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenter(IFFFZI)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 919
    :try_start_2
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v10

    .line 916
    return v2

    .line 919
    .end local v0    # "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    :catchall_0
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1    # "displayId":I
    .end local p2    # "scale":F
    .end local p3    # "centerX":F
    .end local p4    # "centerY":F
    .end local p5    # "animate":Z
    throw v0

    .line 921
    .end local v11    # "identity":J
    .restart local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1    # "displayId":I
    .restart local p2    # "scale":F
    .restart local p3    # "centerX":F
    .restart local p4    # "centerY":F
    .restart local p5    # "animate":Z
    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public setOnKeyEventResult(ZI)V
    .locals 1
    .param p1, "handled"    # Z
    .param p2, "sequence"    # I

    .line 340
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/accessibility/KeyEventDispatcher;->setOnKeyEventResult(Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;ZI)V

    .line 341
    return-void
.end method

.method public setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 361
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 363
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 367
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 368
    .local v3, "oldInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz v3, :cond_0

    .line 369
    invoke-virtual {v3, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->updateDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 370
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    goto :goto_0

    .line 372
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 374
    :goto_0
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 375
    .end local v3    # "oldInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 378
    nop

    .line 379
    return-void

    .line 375
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 377
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setSoftKeyboardCallbackEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 935
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->setSoftKeyboardCallbackEnabled(Z)V

    .line 936
    return-void
.end method

.method protected supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 330
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
