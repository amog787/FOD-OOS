.class public final Lcom/android/server/pm/ShortcutService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field final mService:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 568
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 572
    new-instance v0, Lcom/android/server/pm/ShortcutService;

    invoke-direct {v0, p1}, Lcom/android/server/pm/ShortcutService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutService$Lifecycle;->mService:Lcom/android/server/pm/ShortcutService;

    .line 573
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 582
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$Lifecycle;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->onBootPhase(I)V

    .line 583
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$Lifecycle;->mService:Lcom/android/server/pm/ShortcutService;

    const-string/jumbo v1, "shortcut"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/ShortcutService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 578
    return-void
.end method

.method public onStopUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 587
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$Lifecycle;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->handleStopUser(I)V

    .line 588
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 592
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$Lifecycle;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->handleUnlockUser(I)V

    .line 593
    return-void
.end method
