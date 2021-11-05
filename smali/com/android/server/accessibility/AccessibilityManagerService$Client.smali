.class Lcom/android/server/accessibility/AccessibilityManagerService$Client;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Client"
.end annotation


# instance fields
.field final mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

.field mLastSentRelevantEventTypes:I

.field final mPackageNames:[Ljava/lang/String;

.field mUid:I

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/IAccessibilityManagerClient;ILcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "callback"    # Landroid/view/accessibility/IAccessibilityManagerClient;
    .param p3, "clientUid"    # I
    .param p4, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 3291
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3287
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mUid:I

    .line 3292
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    .line 3293
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    .line 3294
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3295
    :try_start_0
    invoke-static {p1, p4, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 3296
    monitor-exit v0

    .line 3297
    return-void

    .line 3296
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/IAccessibilityManagerClient;ILcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "x1"    # Landroid/view/accessibility/IAccessibilityManagerClient;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/server/accessibility/AccessibilityUserState;
    .param p5, "x4"    # Lcom/android/server/accessibility/AccessibilityManagerService$1;

    .line 3281
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/AccessibilityManagerService$Client;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/IAccessibilityManagerClient;ILcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method
