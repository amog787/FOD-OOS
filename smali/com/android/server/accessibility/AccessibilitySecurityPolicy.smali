.class public Lcom/android/server/accessibility/AccessibilitySecurityPolicy;
.super Ljava/lang/Object;
.source "AccessibilitySecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;
    }
.end annotation


# static fields
.field private static final KEEP_SOURCE_EVENT_TYPES:I = 0x43b9bf

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilitySecurityPolicy"

.field private static final OWN_PROCESS_ID:I


# instance fields
.field private final mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

.field private mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

.field private final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->OWN_PROCESS_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "a11yUserManager"    # Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 101
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mUserManager:Landroid/os/UserManager;

    .line 102
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 103
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 104
    return-void
.end method

.method private isRetrievalAllowingWindowLocked(II)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "windowId"    # I

    .line 443
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    .line 444
    return v1

    .line 446
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x7d0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 447
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isShellAllowedToRetrieveWindowLocked(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 448
    return v3

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveParentWindowIdLocked(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 452
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getActiveWindowId(I)I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 453
    return v1

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_0
    return v1
.end method

.method private isShellAllowedToRetrieveWindowLocked(II)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "windowId"    # I

    .line 459
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 461
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 462
    invoke-virtual {v2, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    .local v2, "windowToken":Landroid/os/IBinder;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 464
    nop

    .line 473
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 464
    return v3

    .line 466
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v4, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowOwnerUserId(Landroid/os/IBinder;)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    .local v4, "windowOwnerUserId":I
    const/16 v5, -0x2710

    if-ne v4, v5, :cond_1

    .line 468
    nop

    .line 473
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 468
    return v3

    .line 470
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v5, "no_debugging_features"

    .line 471
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 470
    invoke-virtual {v3, v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 473
    xor-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 470
    return v3

    .line 473
    .end local v2    # "windowToken":Landroid/os/IBinder;
    .end local v4    # "windowOwnerUserId":I
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 474
    throw v2
.end method

.method private isValidPackageForUid(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 430
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 432
    .local v0, "token":J
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 433
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 432
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, v3, :cond_0

    const/4 v2, 0x1

    .line 437
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 432
    return v2

    .line 437
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 438
    throw v2

    .line 434
    :catch_0
    move-exception v3

    .line 435
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 437
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 435
    return v2
.end method


# virtual methods
.method public canCaptureFingerprintGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z
    .locals 1
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 334
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .locals 1
    .param p1, "service"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 310
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canDispatchAccessibilityEventLocked(ILandroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 131
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 132
    .local v0, "eventType":I
    sparse-switch v0, :sswitch_data_0

    .line 159
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isRetrievalAllowingWindowLocked(II)Z

    move-result v1

    return v1

    .line 152
    :sswitch_0
    const/4 v1, 0x1

    return v1

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
        0x400 -> :sswitch_0
        0x4000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x80000 -> :sswitch_0
        0x100000 -> :sswitch_0
        0x200000 -> :sswitch_0
        0x400000 -> :sswitch_0
        0x1000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "service"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .param p3, "windowId"    # I

    .line 272
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isRetrievalAllowingWindowLocked(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 272
    :goto_0
    return v0
.end method

.method public canPerformGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z
    .locals 1
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 322
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canRegisterService(Landroid/content/pm/ServiceInfo;)Z
    .locals 7
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 511
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v1, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "Skipping accessibility service "

    const-string v4, "AccessibilitySecurityPolicy"

    if-nez v0, :cond_0

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": it does not require the permission "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return v2

    .line 520
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 521
    .local v0, "servicePackageUid":I
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v6, "android:bind_accessibility_service"

    invoke-virtual {v1, v6, v0, v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": disallowed by AppOps"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return v2

    .line 529
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .locals 2
    .param p1, "service"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 297
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public canRetrieveWindowsLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .locals 1
    .param p1, "service"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 285
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canTakeScreenshotLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .locals 1
    .param p1, "service"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 347
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .locals 10
    .param p1, "service"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 539
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 542
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 544
    return v2

    .line 547
    :cond_0
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 548
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 551
    .local v4, "identityToken":J
    :try_start_0
    sget v6, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->OWN_PROCESS_ID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x0

    const-string v9, "android:access_accessibility"

    if-ne v6, v7, :cond_2

    .line 552
    :try_start_1
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v6, v9, v3, v0}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    move v2, v8

    .line 559
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 552
    return v2

    .line 556
    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v6, v9, v3, v0}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    move v2, v8

    .line 559
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 556
    return v2

    .line 559
    :catchall_0
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 560
    throw v2
.end method

.method public computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 7
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "targetUid"    # I

    .line 226
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 228
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v0

    .line 231
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 233
    .local v0, "uidPackages":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

    if-eqz v2, :cond_2

    .line 234
    nop

    .line 235
    invoke-virtual {v2, p2}, Landroid/appwidget/AppWidgetManagerInternal;->getHostedWidgetPackages(I)Landroid/util/ArraySet;

    move-result-object v2

    .line 236
    .local v2, "widgetPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 237
    array-length v3, v0

    .line 238
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/String;

    .line 239
    .local v3, "validPackages":[Ljava/lang/String;
    array-length v4, v0

    invoke-static {v0, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 241
    .local v1, "widgetPackageCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 242
    array-length v5, v0

    add-int/2addr v5, v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v3, v5

    .line 241
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 244
    .end local v4    # "i":I
    :cond_1
    return-object v3

    .line 247
    .end local v1    # "widgetPackageCount":I
    .end local v2    # "widgetPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "validPackages":[Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .line 582
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    return-void
.end method

.method public enforceCallingOrSelfPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 569
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 574
    return-void

    .line 571
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller does not hold permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;

    .line 484
    sget v0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->OWN_PROCESS_ID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 485
    return-void

    .line 487
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    return-void

    .line 488
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You do not have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " required to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 501
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCallerInteractingAcrossUsers(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 422
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 423
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    const/4 v1, -0x2

    if-eq p1, v1, :cond_1

    const/4 v1, -0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public resolveCallingUserIdEnforcingPermissionsLocked(I)I
    .locals 7
    .param p1, "userId"    # I

    .line 382
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 383
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    invoke-interface {v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v1

    .line 384
    .local v1, "currentUserId":I
    const/4 v2, -0x3

    const/4 v3, -0x2

    if-eqz v0, :cond_8

    const/16 v4, 0x3e8

    if-eq v0, v4, :cond_8

    const/16 v4, 0x7d0

    if-ne v0, v4, :cond_0

    goto :goto_2

    .line 393
    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 394
    .local v4, "callingUserId":I
    if-ne v4, p1, :cond_1

    .line 395
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v2

    return v2

    .line 397
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v5

    .line 398
    .local v5, "callingUserParentId":I
    if-ne v5, v1, :cond_3

    if-eq p1, v3, :cond_2

    if-ne p1, v2, :cond_3

    .line 400
    :cond_2
    return v1

    .line 402
    :cond_3
    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v6}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 403
    const-string v6, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, v6}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    .line 404
    :cond_4
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call from user "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " as user "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " without permission INTERACT_ACROSS_USERS or INTERACT_ACROSS_USERS_FULL not allowed."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 408
    :cond_5
    :goto_0
    if-eq p1, v3, :cond_7

    if-ne p1, v2, :cond_6

    goto :goto_1

    .line 412
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v2

    return v2

    .line 410
    :cond_7
    :goto_1
    return v1

    .line 387
    .end local v4    # "callingUserId":I
    .end local v5    # "callingUserParentId":I
    :cond_8
    :goto_2
    if-eq p1, v3, :cond_a

    if-ne p1, v2, :cond_9

    goto :goto_3

    .line 391
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v2

    return v2

    .line 389
    :cond_a
    :goto_3
    return v1
.end method

.method public resolveProfileParentLocked(I)I
    .locals 4
    .param p1, "userId"    # I

    .line 358
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    invoke-interface {v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 359
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 361
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 362
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    .line 363
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 363
    return v3

    .line 366
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 367
    goto :goto_0

    .line 366
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 367
    throw v2

    .line 369
    .end local v0    # "identity":J
    :cond_1
    :goto_0
    return p1
.end method

.method public resolveValidReportedPackageLocked(Ljava/lang/CharSequence;III)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/CharSequence;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "pid"    # I

    .line 177
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 178
    return-object v0

    .line 181
    :cond_0
    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_1

    .line 182
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 185
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "packageNameStr":Ljava/lang/String;
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 187
    .local v2, "resolvedUid":I
    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isValidPackageForUid(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 188
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 191
    :cond_2
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

    if-eqz v3, :cond_3

    .line 192
    invoke-virtual {v3, v2}, Landroid/appwidget/AppWidgetManagerInternal;->getHostedWidgetPackages(I)Landroid/util/ArraySet;

    move-result-object v3

    .line 191
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 193
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 196
    :cond_3
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACT_AS_PACKAGE_FOR_ACCESSIBILITY"

    invoke-virtual {v3, v4, p4, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_4

    .line 198
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 201
    :cond_4
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "packageNames":[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 203
    return-object v0

    .line 212
    :cond_5
    const/4 v0, 0x0

    aget-object v0, v3, v0

    return-object v0
.end method

.method public setAccessibilityWindowManager(Lcom/android/server/accessibility/AccessibilityWindowManager;)V
    .locals 0
    .param p1, "awm"    # Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 111
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 112
    return-void
.end method

.method public setAppWidgetManager(Landroid/appwidget/AppWidgetManagerInternal;)V
    .locals 0
    .param p1, "appWidgetManager"    # Landroid/appwidget/AppWidgetManagerInternal;

    .line 118
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

    .line 119
    return-void
.end method

.method public updateEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 256
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x43b9bf

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 257
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 259
    :cond_0
    return-void
.end method
