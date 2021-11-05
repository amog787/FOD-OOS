.class Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;
.super Landroid/os/IProgressListener$Stub;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisableQuietModeUserUnlockedCallback"
.end annotation


# instance fields
.field private final mTarget:Landroid/content/IntentSender;

.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/content/IntentSender;)V
    .locals 0
    .param p2, "target"    # Landroid/content/IntentSender;

    .line 472
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Landroid/os/IProgressListener$Stub;-><init>()V

    .line 473
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    iput-object p2, p0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;->mTarget:Landroid/content/IntentSender;

    .line 475
    return-void
.end method


# virtual methods
.method public synthetic lambda$onFinished$0$UserManagerService$DisableQuietModeUserUnlockedCallback()V
    .locals 7

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$200(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;->mTarget:Landroid/content/IntentSender;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    goto :goto_0

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v1, "UserManagerService"

    const-string v2, "Failed to start the target in the callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :goto_0
    return-void
.end method

.method public onFinished(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 485
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$100(Lcom/android/server/pm/UserManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/-$$Lambda$UserManagerService$DisableQuietModeUserUnlockedCallback$Xj5Vf2ikWbZ5QWza6wyZQhLIFdE;

    invoke-direct {v1, p0}, Lcom/android/server/pm/-$$Lambda$UserManagerService$DisableQuietModeUserUnlockedCallback$Xj5Vf2ikWbZ5QWza6wyZQhLIFdE;-><init>(Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 492
    return-void
.end method

.method public onProgress(IILandroid/os/Bundle;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 481
    return-void
.end method

.method public onStarted(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 478
    return-void
.end method
