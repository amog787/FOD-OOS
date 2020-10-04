.class Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;
.super Landroid/os/Handler;
.source "AbstractAccessibilityServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 261
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .line 264
    iget v0, p1, Landroid/os/Message;->what:I

    .line 265
    .local v0, "eventType":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityEvent;

    .line 266
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 267
    .local v2, "serviceWantsEvent":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v3, v0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$000(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/view/accessibility/AccessibilityEvent;Z)V

    .line 268
    return-void
.end method
