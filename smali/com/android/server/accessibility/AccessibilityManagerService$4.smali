.class Lcom/android/server/accessibility/AccessibilityManagerService$4;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

.field final synthetic val$service:Lcom/android/server/accessibility/AccessibilityServiceConnection;

.field final synthetic val$userState:Lcom/android/server/accessibility/AccessibilityUserState;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1866
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$userState:Lcom/android/server/accessibility/AccessibilityUserState;

    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$service:Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1870
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$userState:Lcom/android/server/accessibility/AccessibilityUserState;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$service:Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1871
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$userState:Lcom/android/server/accessibility/AccessibilityUserState;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$userState:Lcom/android/server/accessibility/AccessibilityUserState;

    iget v2, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string/jumbo v3, "touch_exploration_granted_accessibility_services"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 1875
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$userState:Lcom/android/server/accessibility/AccessibilityUserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->setTouchExplorationEnabledLocked(Z)V

    .line 1876
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1878
    .local v2, "identity":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "touch_exploration_enabled"

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$userState:Lcom/android/server/accessibility/AccessibilityUserState;

    iget v5, v5, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-static {v0, v4, v1, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1882
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1883
    nop

    .line 1884
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$userState:Lcom/android/server/accessibility/AccessibilityUserState;

    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1885
    return-void

    .line 1882
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1883
    throw v0
.end method
