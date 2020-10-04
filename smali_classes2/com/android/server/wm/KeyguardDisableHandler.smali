.class Lcom/android/server/wm/KeyguardDisableHandler;
.super Ljava/lang/Object;
.source "KeyguardDisableHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/KeyguardDisableHandler$Injector;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

.field private final mCallback:Lcom/android/server/utils/UserTokenWatcher$Callback;

.field private mCurrentUser:I

.field private mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

.field private final mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/wm/KeyguardDisableHandler$Injector;Landroid/os/Handler;)V
    .locals 3
    .param p1, "injector"    # Lcom/android/server/wm/KeyguardDisableHandler$Injector;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    .line 114
    new-instance v0, Lcom/android/server/wm/KeyguardDisableHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/KeyguardDisableHandler$1;-><init>(Lcom/android/server/wm/KeyguardDisableHandler;)V

    iput-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCallback:Lcom/android/server/utils/UserTokenWatcher$Callback;

    .line 48
    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    .line 49
    new-instance v0, Lcom/android/server/utils/UserTokenWatcher;

    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCallback:Lcom/android/server/utils/UserTokenWatcher$Callback;

    const-string v2, "WindowManager"

    invoke-direct {v0, v1, p2, v2}, Lcom/android/server/utils/UserTokenWatcher;-><init>(Lcom/android/server/utils/UserTokenWatcher$Callback;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    .line 50
    new-instance v0, Lcom/android/server/utils/UserTokenWatcher;

    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCallback:Lcom/android/server/utils/UserTokenWatcher$Callback;

    invoke-direct {v0, v1, p2, v2}, Lcom/android/server/utils/UserTokenWatcher;-><init>(Lcom/android/server/utils/UserTokenWatcher$Callback;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    .line 51
    return-void
.end method

.method static create(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;Landroid/os/Handler;)Lcom/android/server/wm/KeyguardDisableHandler;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 128
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    .line 129
    .local v0, "userManager":Landroid/os/UserManagerInternal;
    new-instance v1, Lcom/android/server/wm/KeyguardDisableHandler;

    new-instance v2, Lcom/android/server/wm/KeyguardDisableHandler$2;

    invoke-direct {v2, p1, v0}, Lcom/android/server/wm/KeyguardDisableHandler$2;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Landroid/os/UserManagerInternal;)V

    invoke-direct {v1, v2, p2}, Lcom/android/server/wm/KeyguardDisableHandler;-><init>(Lcom/android/server/wm/KeyguardDisableHandler$Injector;Landroid/os/Handler;)V

    return-object v1
.end method

.method private shouldKeyguardBeEnabled(I)Z
    .locals 7
    .param p1, "userId"    # I

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    iget v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    invoke-interface {v0, v1}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->dpmRequiresPassword(I)Z

    move-result v0

    .line 98
    .local v0, "dpmRequiresPassword":Z
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    iget v2, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    invoke-interface {v1, v2}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->isKeyguardSecure(I)Z

    move-result v1

    .line 99
    .local v1, "keyguardSecure":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 102
    .local v4, "allowedFromApps":Z
    :goto_0
    xor-int/lit8 v5, v0, 0x1

    .line 104
    .local v5, "allowedFromSystem":Z
    if-eqz v4, :cond_1

    iget-object v6, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    invoke-virtual {v6, p1}, Lcom/android/server/utils/UserTokenWatcher;->isAcquired(I)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    .line 105
    invoke-virtual {v6, p1}, Lcom/android/server/utils/UserTokenWatcher;->isAcquired(I)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    move v6, v3

    goto :goto_1

    :cond_3
    move v6, v2

    .line 108
    .local v6, "shouldBeDisabled":Z
    :goto_1
    invoke-static {p1, v1}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->updateKeyguardSecure(IZ)V

    .line 110
    if-nez v6, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method

.method private updateKeyguardEnabledLocked(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 67
    iget v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    iget v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    invoke-direct {p0, v1}, Lcom/android/server/wm/KeyguardDisableHandler;->shouldKeyguardBeEnabled(I)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->enableKeyguard(Z)V

    .line 70
    :cond_1
    return-void
.end method

.method private watcherForCallingUid(Landroid/os/IBinder;I)Lcom/android/server/utils/UserTokenWatcher;
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I

    .line 83
    invoke-static {p2}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    return-object v0

    .line 85
    :cond_0
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_1

    instance-of v0, p1, Lcom/android/server/wm/LockTaskController$LockTaskToken;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    return-object v0

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only apps can use the KeyguardLock API"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;II)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 73
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/KeyguardDisableHandler;->watcherForCallingUid(Landroid/os/IBinder;I)Lcom/android/server/utils/UserTokenWatcher;

    move-result-object v0

    .line 74
    .local v0, "watcherForCaller":Lcom/android/server/utils/UserTokenWatcher;
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    invoke-interface {v1, p4}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->getProfileParentId(I)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/utils/UserTokenWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 75
    return-void
.end method

.method reenableKeyguard(Landroid/os/IBinder;II)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/KeyguardDisableHandler;->watcherForCallingUid(Landroid/os/IBinder;I)Lcom/android/server/utils/UserTokenWatcher;

    move-result-object v0

    .line 79
    .local v0, "watcherForCaller":Lcom/android/server/utils/UserTokenWatcher;
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    invoke-interface {v1, p3}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->getProfileParentId(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/utils/UserTokenWatcher;->release(Landroid/os/IBinder;I)V

    .line 80
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 1
    .param p1, "user"    # I

    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    iput p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    .line 56
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/KeyguardDisableHandler;->updateKeyguardEnabledLocked(I)V

    .line 57
    monitor-exit p0

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateKeyguardEnabled(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardDisableHandler;->updateKeyguardEnabledLocked(I)V

    .line 63
    monitor-exit p0

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
