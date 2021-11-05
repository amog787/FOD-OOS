.class Lcom/android/server/wm/WindowManagerService$RotationWatcher;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RotationWatcher"
.end annotation


# instance fields
.field final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field final mDisplayId:I

.field final mWatcher:Landroid/view/IRotationWatcher;

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;Landroid/os/IBinder$DeathRecipient;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "watcher"    # Landroid/view/IRotationWatcher;
    .param p3, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p4, "displayId"    # I

    .line 738
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    .line 740
    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 741
    iput p4, p0, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mDisplayId:I

    .line 742
    return-void
.end method
