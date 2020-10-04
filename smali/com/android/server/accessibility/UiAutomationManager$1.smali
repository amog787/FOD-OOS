.class Lcom/android/server/accessibility/UiAutomationManager$1;
.super Ljava/lang/Object;
.source "UiAutomationManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/UiAutomationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/UiAutomationManager;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/UiAutomationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/UiAutomationManager;

    .line 62
    iput-object p1, p0, Lcom/android/server/accessibility/UiAutomationManager$1;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$1;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/UiAutomationManager;->access$000(Lcom/android/server/accessibility/UiAutomationManager;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 66
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$1;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/accessibility/UiAutomationManager;->access$002(Lcom/android/server/accessibility/UiAutomationManager;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 67
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$1;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/UiAutomationManager;->access$100(Lcom/android/server/accessibility/UiAutomationManager;)V

    .line 68
    return-void
.end method
