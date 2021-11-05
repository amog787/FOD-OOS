.class Lcom/android/server/accessibility/AccessibilityUserState;
.super Ljava/lang/Object;
.source "AccessibilityUserState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field final mAccessibilityButtonTargets:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessibilityFocusOnlyInActiveWindow:Z

.field final mAccessibilityShortcutKeyTargets:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBindInstantServiceAllowed:Z

.field final mBindingServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mBoundServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/accessibility/AccessibilityServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field final mComponentNameToServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/accessibility/AccessibilityServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field final mCrashedServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mEnabledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mInstalledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mInstalledShortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInteractiveUiTimeout:I

.field private mIsAutoclickEnabled:Z

.field private mIsDisplayMagnificationEnabled:Z

.field private mIsFilterKeyEventsEnabled:Z

.field private mIsPerformGesturesEnabled:Z

.field private mIsTextHighContrastEnabled:Z

.field private mIsTouchExplorationEnabled:Z

.field private mLastSentClientState:I

.field private mNonInteractiveUiTimeout:I

.field private mRequestMultiFingerGestures:Z

.field private mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

.field private mServiceHandlesDoubleTap:Z

.field private final mServiceInfoChangeListener:Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;

.field private mSoftKeyboardShowMode:I

.field private mTargetAssignedToAccessibilityButton:Ljava/lang/String;

.field final mTouchExplorationGrantedServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserClientUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mUserClients:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;"
        }
    .end annotation
.end field

.field final mUserId:I

.field private mUserInteractiveUiTimeout:I

.field private mUserNonInteractiveUiTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lcom/android/server/accessibility/AccessibilityUserState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/AccessibilityUserState;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILandroid/content/Context;Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "serviceInfoChangeListener"    # Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClientUids:Ljava/util/HashSet;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    .line 97
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Landroid/util/ArraySet;

    .line 99
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Landroid/util/ArraySet;

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    .line 120
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    .line 121
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mLastSentClientState:I

    .line 125
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    .line 134
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 135
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    .line 136
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceInfoChangeListener:Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;

    .line 137
    return-void
.end method

.method public static doesShortcutTargetsStringContain(Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 6
    .param p1, "targetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 789
    .local p0, "shortcutTargets":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    .line 794
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 795
    return v2

    .line 797
    :cond_1
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 798
    .local v1, "targetComponentName":Landroid/content/ComponentName;
    if-nez v1, :cond_2

    .line 799
    return v0

    .line 801
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 802
    .local v4, "stringName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 803
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 804
    return v2

    .line 806
    .end local v4    # "stringName":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 807
    :cond_4
    return v0

    .line 790
    .end local v1    # "targetComponentName":Landroid/content/ComponentName;
    :cond_5
    :goto_1
    return v0
.end method

.method private getOriginalHardKeyboardValue()Z
    .locals 3

    .line 418
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result v0

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private getSecureIntForUser(Ljava/lang/String;II)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "userId"    # I

    .line 433
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getSoftKeyboardValueFromSettings()I
    .locals 3

    .line 412
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private hasUserOverriddenHardKeyboardSetting()Z
    .locals 3

    .line 386
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result v0

    .line 388
    .local v0, "softKeyboardSetting":I
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method static synthetic lambda$removeShortcutTargetLocked$0(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p0, "target"    # Landroid/content/ComponentName;
    .param p1, "name"    # Ljava/lang/String;

    .line 650
    if-eqz p1, :cond_1

    .line 651
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    move-object v1, v0

    .local v1, "componentName":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    goto :goto_0

    .line 654
    :cond_0
    invoke-virtual {v1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 652
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private putSecureIntForUser(Ljava/lang/String;II)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userId"    # I

    .line 437
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 439
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, p2, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 442
    nop

    .line 443
    return-void

    .line 441
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 442
    throw v2
.end method

.method private saveSoftKeyboardValueToSettings(I)V
    .locals 4
    .param p1, "softKeyboardShowMode"    # I

    .line 403
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result v0

    .line 405
    .local v0, "oldSoftKeyboardSetting":I
    and-int/lit8 v2, v0, -0x4

    or-int/2addr v2, p1

    .line 407
    .local v2, "newSoftKeyboardSetting":I
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(Ljava/lang/String;II)V

    .line 409
    return-void
.end method

.method private setOriginalHardKeyboardValue(Z)V
    .locals 4
    .param p1, "originalHardKeyboardValue"    # Z

    .line 393
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result v0

    .line 395
    .local v0, "oldSoftKeyboardSetting":I
    const v3, -0x20000001

    and-int/2addr v3, v0

    .line 397
    if-eqz p1, :cond_0

    const/high16 v2, 0x20000000

    :cond_0
    or-int/2addr v2, v3

    .line 398
    .local v2, "newSoftKeyboardSetting":I
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(Ljava/lang/String;II)V

    .line 400
    return-void
.end method

.method private setUserOverridesHardKeyboardSetting()V
    .locals 4

    .line 378
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result v0

    .line 380
    .local v0, "softKeyboardSetting":I
    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v2, v0

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(Ljava/lang/String;II)V

    .line 383
    return-void
.end method

.method private unbindAllServicesLocked()V
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 425
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-lez v1, :cond_0

    .line 428
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->unbindLocked()V

    .line 425
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 430
    .end local v1    # "count":I
    :cond_0
    return-void
.end method


# virtual methods
.method addServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .locals 2
    .param p1, "serviceConnection"    # Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 175
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->onAdded()V

    .line 177
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceInfoChangeListener:Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;

    invoke-interface {v0, p0}, Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;->onServiceInfoChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 181
    :cond_0
    return-void
.end method

.method public disableShortcutMagnificationLocked()V
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Landroid/util/ArraySet;

    const-string v1, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 587
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 588
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 446
    const-string v0, "User state["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 447
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 448
    const-string v0, "     attributes:{id="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 449
    const-string v0, ", touchExplorationEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 450
    const-string v0, ", serviceHandlesDoubleTap="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceHandlesDoubleTap:Z

    .line 451
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 452
    const-string v0, ", requestMultiFingerGestures="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestMultiFingerGestures:Z

    .line 453
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 454
    const-string v0, ", displayMagnificationEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsDisplayMagnificationEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 456
    const-string v0, ", autoclickEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 457
    const-string v0, ", nonInteractiveUiTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 458
    const-string v0, ", interactiveUiTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 459
    const-string v0, ", installedServiceCount="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 460
    const-string/jumbo v0, "}"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 461
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 462
    const-string v1, "     shortcut key:{"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 463
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 464
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const-string v3, ", "

    if-ge v2, v1, :cond_1

    .line 465
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 466
    .local v4, "componentId":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 467
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v1, :cond_0

    .line 468
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 464
    .end local v4    # "componentId":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 471
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    const-string v2, "     button:{"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 473
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 474
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 475
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 476
    .restart local v4    # "componentId":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 477
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v1, :cond_2

    .line 478
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 474
    .end local v4    # "componentId":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 481
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    const-string v2, "     button target:{"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTargetAssignedToAccessibilityButton:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 483
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    const-string v2, "     Bound services:{"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 485
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 486
    .local v2, "serviceCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v2, :cond_5

    .line 487
    if-lez v4, :cond_4

    .line 488
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 489
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 490
    const-string v5, "                     "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 492
    :cond_4
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 493
    .local v5, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 486
    .end local v5    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 495
    .end local v4    # "j":I
    :cond_5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    const-string v4, "     Enabled services:{"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 497
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 498
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 499
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 500
    .local v5, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 501
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 502
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Landroid/content/ComponentName;

    .line 503
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 504
    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_3

    .line 507
    .end local v5    # "componentName":Landroid/content/ComponentName;
    :cond_6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    const-string v5, "     Binding services:{"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 509
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 510
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 511
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 512
    .restart local v5    # "componentName":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 513
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 514
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Landroid/content/ComponentName;

    .line 515
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 516
    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_4

    .line 519
    .end local v5    # "componentName":Landroid/content/ComponentName;
    :cond_7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    const-string v0, "     Crashed services:{"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 521
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 522
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 523
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 524
    .local v4, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 525
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 526
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Landroid/content/ComponentName;

    .line 527
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 528
    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_5

    .line 531
    .end local v4    # "componentName":Landroid/content/ComponentName;
    :cond_8
    const-string/jumbo v3, "}]"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    return-void
.end method

.method getBindInstantServiceAllowedLocked()Z
    .locals 1

    .line 308
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindInstantServiceAllowed:Z

    return v0
.end method

.method getBindingServicesLocked()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    return-object v0
.end method

.method getBoundServicesLocked()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/accessibility/AccessibilityServiceConnection;",
            ">;"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    return-object v0
.end method

.method getClientStateLocked(Z)I
    .locals 3
    .param p1, "isUiAutomationRunning"    # Z

    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, "clientState":I
    if-nez p1, :cond_1

    .line 361
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->isHandlingAccessibilityEventsLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 362
    .local v1, "a11yEnabled":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 363
    or-int/lit8 v0, v0, 0x1

    .line 366
    :cond_2
    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    if-eqz v2, :cond_3

    .line 367
    or-int/lit8 v0, v0, 0x2

    .line 368
    or-int/lit8 v0, v0, 0x8

    .line 369
    or-int/lit8 v0, v0, 0x10

    .line 371
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTextHighContrastEnabled:Z

    if-eqz v2, :cond_4

    .line 372
    or-int/lit8 v0, v0, 0x4

    .line 374
    :cond_4
    return v0
.end method

.method getCrashedServicesLocked()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    return-object v0
.end method

.method getEnabledServicesLocked()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    return-object v0
.end method

.method public getInstalledServiceInfoLocked(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 662
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 663
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 664
    .local v1, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 665
    return-object v1

    .line 662
    .end local v1    # "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 668
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInteractiveUiTimeoutLocked()I
    .locals 1

    .line 559
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    return v0
.end method

.method public getLastSentClientStateLocked()I
    .locals 1

    .line 567
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mLastSentClientState:I

    return v0
.end method

.method public getNonInteractiveUiTimeoutLocked()I
    .locals 1

    .line 679
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    return v0
.end method

.method public getServiceChangingSoftKeyboardModeLocked()Landroid/content/ComponentName;
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getServiceConnectionLocked(Landroid/content/ComponentName;)Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 675
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    return-object v0
.end method

.method public getShortcutTargetsLocked(I)Landroid/util/ArraySet;
    .locals 1
    .param p1, "shortcutType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 598
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Landroid/util/ArraySet;

    return-object v0

    .line 600
    :cond_0
    if-nez p1, :cond_1

    .line 601
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Landroid/util/ArraySet;

    return-object v0

    .line 603
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getSoftKeyboardShowModeLocked()I
    .locals 1

    .line 279
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    return v0
.end method

.method public getTargetAssignedToAccessibilityButton()Ljava/lang/String;
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTargetAssignedToAccessibilityButton:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInteractiveUiTimeoutLocked()I
    .locals 1

    .line 743
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserInteractiveUiTimeout:I

    return v0
.end method

.method public getUserNonInteractiveUiTimeoutLocked()I
    .locals 1

    .line 751
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserNonInteractiveUiTimeout:I

    return v0
.end method

.method public isAccessibilityFocusOnlyInActiveWindow()Z
    .locals 1

    .line 695
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityFocusOnlyInActiveWindow:Z

    return v0
.end method

.method public isAutoclickEnabledLocked()Z
    .locals 1

    .line 535
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    return v0
.end method

.method public isDisplayMagnificationEnabledLocked()Z
    .locals 1

    .line 543
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsDisplayMagnificationEnabled:Z

    return v0
.end method

.method public isFilterKeyEventsEnabledLocked()Z
    .locals 1

    .line 551
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsFilterKeyEventsEnabled:Z

    return v0
.end method

.method isHandlingAccessibilityEventsLocked()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isMultiFingerGesturesEnabledLocked()Z
    .locals 1

    .line 735
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestMultiFingerGestures:Z

    return v0
.end method

.method public isPerformGesturesEnabledLocked()Z
    .locals 1

    .line 687
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsPerformGesturesEnabled:Z

    return v0
.end method

.method public isServiceHandlesDoubleTapEnabledLocked()Z
    .locals 1

    .line 727
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceHandlesDoubleTap:Z

    return v0
.end method

.method public isShortcutMagnificationEnabledLocked()Z
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Landroid/util/ArraySet;

    const-string v1, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Landroid/util/ArraySet;

    .line 579
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 578
    :goto_1
    return v0
.end method

.method public isShortcutTargetInstalledLocked(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 613
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 614
    return v1

    .line 616
    :cond_0
    const-string v0, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 617
    return v2

    .line 620
    :cond_1
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 621
    .local v0, "componentName":Landroid/content/ComponentName;
    if-nez v0, :cond_2

    .line 622
    return v1

    .line 624
    :cond_2
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v3

    .line 625
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 626
    return v2

    .line 628
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getInstalledServiceInfoLocked(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 629
    return v2

    .line 631
    :cond_4
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 632
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 633
    return v2

    .line 631
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 636
    .end local v3    # "i":I
    :cond_6
    return v1
.end method

.method public isTextHighContrastEnabledLocked()Z
    .locals 1

    .line 711
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTextHighContrastEnabled:Z

    return v0
.end method

.method public isTouchExplorationEnabledLocked()Z
    .locals 1

    .line 719
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    return v0
.end method

.method onSwitchToAnotherUserLocked()V
    .locals 2

    .line 145
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->unbindAllServicesLocked()V

    .line 148
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 149
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 150
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mLastSentClientState:I

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    .line 157
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    .line 160
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 161
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 162
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 163
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 164
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTargetAssignedToAccessibilityButton:Ljava/lang/String;

    .line 165
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    .line 166
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceHandlesDoubleTap:Z

    .line 167
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestMultiFingerGestures:Z

    .line 168
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsDisplayMagnificationEnabled:Z

    .line 169
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    .line 170
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserNonInteractiveUiTimeout:I

    .line 171
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserInteractiveUiTimeout:I

    .line 172
    return-void
.end method

.method reconcileSoftKeyboardModeWithSettingsLocked()V
    .locals 5

    .line 287
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 288
    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 289
    .local v0, "showWithHardKeyboardSettings":Z
    :goto_0
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    .line 290
    if-nez v0, :cond_1

    .line 293
    invoke-virtual {p0, v2, v4}, Lcom/android/server/accessibility/AccessibilityUserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    .line 294
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setUserOverridesHardKeyboardSetting()V

    .line 299
    :cond_1
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSoftKeyboardValueFromSettings()I

    move-result v1

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    if-eq v1, v3, :cond_2

    .line 300
    sget-object v1, Lcom/android/server/accessibility/AccessibilityUserState;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Show IME setting inconsistent with internal state. Overwriting"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p0, v2, v4}, Lcom/android/server/accessibility/AccessibilityUserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    .line 302
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v3, "accessibility_soft_keyboard_mode"

    invoke-direct {p0, v3, v2, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(Ljava/lang/String;II)V

    .line 305
    :cond_2
    return-void
.end method

.method removeServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .locals 4
    .param p1, "serviceConnection"    # Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 191
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 192
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->onRemoved()V

    .line 193
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 203
    .local v1, "boundClient":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .end local v1    # "boundClient":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceInfoChangeListener:Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;

    invoke-interface {v0, p0}, Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;->onServiceInfoChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 206
    return-void
.end method

.method public removeShortcutTargetLocked(ILandroid/content/ComponentName;)Z
    .locals 2
    .param p1, "shortcutType"    # I
    .param p2, "target"    # Landroid/content/ComponentName;

    .line 648
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityUserState$UcR_snt8Os19AR8k8H-ATp3KMMQ;

    invoke-direct {v1, p2}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityUserState$UcR_snt8Os19AR8k8H-ATp3KMMQ;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method serviceDisconnectedLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .locals 2
    .param p1, "serviceConnection"    # Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->removeServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 219
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method public setAccessibilityFocusOnlyInActiveWindow(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 699
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityFocusOnlyInActiveWindow:Z

    .line 700
    return-void
.end method

.method public setAutoclickEnabledLocked(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 539
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    .line 540
    return-void
.end method

.method setBindInstantServiceAllowedLocked(Z)V
    .locals 0
    .param p1, "allowed"    # Z

    .line 313
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindInstantServiceAllowed:Z

    .line 314
    return-void
.end method

.method public setDisplayMagnificationEnabledLocked(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 547
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsDisplayMagnificationEnabled:Z

    .line 548
    return-void
.end method

.method public setFilterKeyEventsEnabledLocked(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 555
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsFilterKeyEventsEnabled:Z

    .line 556
    return-void
.end method

.method public setInteractiveUiTimeoutLocked(I)V
    .locals 0
    .param p1, "timeout"    # I

    .line 563
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    .line 564
    return-void
.end method

.method public setLastSentClientStateLocked(I)V
    .locals 0
    .param p1, "state"    # I

    .line 571
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mLastSentClientState:I

    .line 572
    return-void
.end method

.method public setMultiFingerGesturesLocked(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 739
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestMultiFingerGestures:Z

    .line 740
    return-void
.end method

.method public setNonInteractiveUiTimeoutLocked(I)V
    .locals 0
    .param p1, "timeout"    # I

    .line 683
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    .line 684
    return-void
.end method

.method public setPerformGesturesEnabledLocked(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 691
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsPerformGesturesEnabled:Z

    .line 692
    return-void
.end method

.method public setServiceChangingSoftKeyboardModeLocked(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "serviceChangingSoftKeyboardMode"    # Landroid/content/ComponentName;

    .line 707
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

    .line 708
    return-void
.end method

.method public setServiceHandlesDoubleTapLocked(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 731
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceHandlesDoubleTap:Z

    .line 732
    return-void
.end method

.method setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z
    .locals 5
    .param p1, "newMode"    # I
    .param p2, "requester"    # Landroid/content/ComponentName;

    .line 239
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    .line 242
    sget-object v1, Lcom/android/server/accessibility/AccessibilityUserState;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Invalid soft keyboard mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return v0

    .line 245
    :cond_0
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    if-ne v3, p1, :cond_1

    .line 246
    return v2

    .line 249
    :cond_1
    const-string/jumbo v4, "show_ime_with_hard_keyboard"

    if-ne p1, v1, :cond_5

    .line 250
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->hasUserOverriddenHardKeyboardSetting()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 252
    return v0

    .line 257
    :cond_2
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSoftKeyboardValueFromSettings()I

    move-result v3

    if-eq v3, v1, :cond_4

    .line 258
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-direct {p0, v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_3

    move v0, v2

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setOriginalHardKeyboardValue(Z)V

    .line 261
    :cond_4
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-direct {p0, v4, v2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(Ljava/lang/String;II)V

    goto :goto_0

    .line 262
    :cond_5
    if-ne v3, v1, :cond_6

    .line 263
    nop

    .line 264
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getOriginalHardKeyboardValue()Z

    move-result v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 263
    invoke-direct {p0, v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(Ljava/lang/String;II)V

    .line 267
    :cond_6
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->saveSoftKeyboardValueToSettings(I)V

    .line 268
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    .line 269
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

    .line 270
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_7

    .line 271
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 272
    .local v1, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifySoftKeyboardShowModeChangedLocked(I)V

    .line 270
    .end local v1    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 274
    .end local v0    # "i":I
    :cond_7
    return v2
.end method

.method public setTargetAssignedToAccessibilityButton(Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;

    .line 775
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTargetAssignedToAccessibilityButton:Ljava/lang/String;

    .line 776
    return-void
.end method

.method public setTextHighContrastEnabledLocked(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 715
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTextHighContrastEnabled:Z

    .line 716
    return-void
.end method

.method public setTouchExplorationEnabledLocked(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 723
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    .line 724
    return-void
.end method

.method public setUserInteractiveUiTimeoutLocked(I)V
    .locals 0
    .param p1, "timeout"    # I

    .line 747
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserInteractiveUiTimeout:I

    .line 748
    return-void
.end method

.method public setUserNonInteractiveUiTimeoutLocked(I)V
    .locals 0
    .param p1, "timeout"    # I

    .line 755
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserNonInteractiveUiTimeout:I

    .line 756
    return-void
.end method

.method updateCrashedServicesIfNeededLocked()V
    .locals 5

    .line 341
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 342
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 343
    .local v2, "installedService":Landroid/accessibilityservice/AccessibilityServiceInfo;
    nop

    .line 344
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 343
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 346
    .local v3, "componentName":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 347
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 349
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 341
    .end local v2    # "installedService":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v3    # "componentName":Landroid/content/ComponentName;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    return-void
.end method
